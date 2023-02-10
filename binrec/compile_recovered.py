import logging
import os
import re
import shutil
import subprocess
import tempfile
from contextlib import suppress
from enum import Enum
from pathlib import Path
from typing import List, Tuple

from . import project
from .env import BINREC_LIB, BINREC_LINK_LD, BINREC_RUNLIB, llvm_command
from .errors import BinRecError
from .lib import binrec_lift, binrec_link, convert_lib_error

logger = logging.getLogger("binrec.custom_compile")

DATA_IMPORT_PATTERN = re.compile(
    r"^\s*\d+:\s+"  # symbol index
    r"([0-9a-fA-F]+)\s+"  # import address (hex)
    r"(\d+)\s+"  # symbol size (bytes)
    r"OBJECT\s+"  # symbol type - we only handle OBJECT
    r"GLOBAL\s+"  # binding - we only handle GLOBAL
    r"[a-zA-Z_]+\s+"  # visibility
    r"\d+\s+"  # section index
    r"([a-zA-F_0-9]+)@",  # symbol name (@ library)
    re.MULTILINE,
)

ELF_SECTION_PATTERN = re.compile(
    r"^\s*\[\s*\d+\]\s+"  # section index
    r"([a-zA-Z0-9._\-]+)\s+"  # section name (capture group 1)
    r"[A-Za-z]+\s+"  # section type
    r"([a-fA-F0-9]+)\s+"  # section start address (capture group 2)
    r"[a-fA-F0-9]+\s+"  # section file offset
    r"([a-fA-F0-9]+)\s+",  # section size (capture group 3)
    re.MULTILINE,
)

class OptimizationLevel(Enum):
    NORMAL = 1
    HIGH = 2


def _compile_bitcode(trace_dir: Path) -> None:
    """
    Compile the recovered bitcode.

    **Inputs:** trace_dir / "recovered.bc"

    **Outputs:** trace_dir / "recovered.o"

    :param trace_dir: binrec binary trace directory
    :raises BinRecError: operation failed
    """
    logger.debug("compiling recovered LLVM bitcode: %s", trace_dir.parent.name)
    logfile = trace_dir / "compile.log"
    try:
        subprocess.check_call(
            [
                llvm_command("llc"),
                "-filetype",
                "obj",
                "-o",
                "custom_recovered.o",
                "recovered.bc",
            ],
            cwd=str(trace_dir),
            stdout=logfile.open("a"),
            stderr=subprocess.STDOUT,
        )
    except subprocess.CalledProcessError:
        raise BinRecError(
            f"failed to compile recovered LLVM bitcode: {trace_dir.parent.name}, "
            f"see log for more information: {logfile}"
        )


def _link_recovered_binary(trace_dir: Path, harden: bool = False) -> None:
    """
    Linked the recovered binary.

    **Inputs:** trace_dir / "recovered.o"

    **Outputs:** trace_dir / "recovered"

    :param trace_dir: binrec binary trace directory
    :raises BinRecError: operation failed
    """
    i386_ld = str(BINREC_LINK_LD / "i386.ld")
    libbinrec_rt = str(BINREC_LIB / "libbinrec_rt.a")

    logger.debug("linking recovered binary: %s", trace_dir.parent.name)
    try:
        binrec_link.link(
            binary_filename=str(trace_dir / "binary"),
            recovered_filename=str(trace_dir / "custom_recovered.o"),
            runtime_library=libbinrec_rt,
            linker_script=i386_ld,
            destination=str(trace_dir / "custom_recovered"),
            dependencies_filename=str(trace_dir / "dependencies"),
            harden=harden,
        )
    except Exception as err:
        raise convert_lib_error(err, "failed to link recovered binary")


def lift_trace(
    project_name: str,
    opt_level: OptimizationLevel = OptimizationLevel.NORMAL,
    harden: bool = False,
) -> None:
    """
    TODO Modify here
    Lift and recover a binary from a binrec trace. This lifts, compiles, and links
    capture bitcode to a recovered binary. This method works on the binrec trace
    directory, ``s2e-out-<binary>``.

    :param project_name: name of the s2e project to operate on
    :param opt_level: How much effort to put into optimizing lifted bitcode
    :param harden: Whether to apply security hardening passes to the lifted bitcode.

    """
    merged_trace_dir = project.merged_trace_dir(project_name)
    if not merged_trace_dir.is_dir():
        raise BinRecError(
            f"nothing to lift: directory does not exist: {merged_trace_dir}"
        )

    # Step 8: compile recovered bitcode
    _compile_bitcode(merged_trace_dir)

    # Step 9: Link the recovered binary
    _link_recovered_binary(merged_trace_dir, harden)

    logger.info(
        "successfully recovered binary for project %s: %s",
        project_name,
        merged_trace_dir / "custom_recovered",
    )


def main() -> None:
    import argparse
    import sys

    from .core import enable_binrec_debug_mode, init_binrec

    init_binrec()

    parser = argparse.ArgumentParser()
    parser.add_argument(
        "-v", "--verbose", action="count", help="enable verbose logging"
    )
    parser.add_argument(
        "-o",
        "--extra-opts",
        action="store_true",
        help="Enable extra performance optimizations during lifting",
    )
    parser.add_argument(
        "--harden",
        action="store_true",
        help="Enable security hardening optimizations during lifting",
    )
    parser.add_argument("project_name", help="lift and compile the binary trace")

    args = parser.parse_args()
    if args.verbose:
        enable_binrec_debug_mode()
        if args.verbose > 1:
            from .audit import enable_python_audit_log

            enable_python_audit_log()

    opt_level = OptimizationLevel.NORMAL
    if args.extra_opts:  # pragma: no cover
        logger.debug("Enabling extra performance optimizations during lifting")
        opt_level = OptimizationLevel.HIGH

    lift_trace(args.project_name, opt_level, args.harden)
    sys.exit(0)


if __name__ == "__main__":  # pragma: no cover
    main()
