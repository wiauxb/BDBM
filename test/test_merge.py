import subprocess
import sys
from unittest.mock import patch, call
from pathlib import Path
import logging

import pytest

from binrec import merge
from binrec.env import BINREC_ROOT, llvm_command
from binrec.errors import BinRecError
from binrec import audit

from helpers.mock_path import MockPath


class TestMerge:
    @patch.object(merge.subprocess, "check_call")
    def test_link_bitcode(self, mock_check_call):
        merge._link_bitcode("base", "source", "dest")
        mock_check_call.assert_called_once_with(
            [
                llvm_command("llvm-link"),
                "-print-after-all",
                "-v",
                "-o",
                "dest",
                "-override=base",
                "source",
            ],
        )

    @patch.object(merge.subprocess, "check_call")
    def test_link_bitcode_exc(self, mock_check_call):
        mock_check_call.side_effect = subprocess.CalledProcessError(0, "asdf")
        with pytest.raises(BinRecError):
            merge._link_bitcode("base", "source", "dest")

    @patch.object(merge.subprocess, "check_call")
    def test_merge_trace_info(self, mock_check_call):
        binrec_tracemerge = str(BINREC_ROOT / "build" / "bin" / "binrec_tracemerge")
        merge._merge_trace_info([1, 2, 3], "dest")
        mock_check_call.assert_called_once_with(
            [binrec_tracemerge, "1", "2", "3", "dest"]
        )

    @patch.object(merge.subprocess, "check_call")
    def test_merge_trace_info_exc(self, mock_check_call):
        mock_check_call.side_effect = subprocess.CalledProcessError(0, "asdf")
        with pytest.raises(BinRecError):
            merge._merge_trace_info(["asdf"], "qwer")

    @patch.object(merge, "shutil")
    @patch.object(merge, "prep_bitcode_for_linkage")
    @patch.object(merge.tempfile, "mkstemp")
    @patch.object(merge, "os")
    @patch.object(merge, "_link_bitcode")
    @patch.object(merge.subprocess, "check_call")
    @patch.object(merge, "_merge_trace_info")
    def test_merge_bitcode(
        self,
        mock_merge,
        mock_check_call,
        mock_link,
        mock_os,
        mock_mkstemp,
        mock_prep_bitcode,
        mock_shutil,
    ):
        dest = MockPath() / "does" / "not" / "exist"
        dest.exists.return_value = False
        mock_mkstemp.return_value = (100, "temp")
        outfile = dest / "captured.bc"
        capture_dirs = [
            Path("/") / "i" / "don't" / "exist",
            Path("/") / "I" / "don't" / "either",
        ]

        merge.merge_bitcode(capture_dirs, dest)
        dest.exists.assert_called_once()
        dest.mkdir.assert_called_once_with(exist_ok=True)
        mock_shutil.rmtree.assert_not_called()

        assert mock_prep_bitcode.call_args_list == [
            call(capture_dirs[0], Path("captured.bc"), Path("captured-link-ready.bc")),
            call(capture_dirs[1], Path("captured.bc"), Path("captured-link-ready.bc")),
        ]

        mock_shutil.copy.assert_called_once_with(
            capture_dirs[0] / "captured-link-ready.bc", outfile
        )

        mock_mkstemp.assert_called_once_with(suffix=".bc")
        mock_os.close.assert_called_once_with(100)

        mock_link.assert_called_once_with(
            base=outfile,
            source=capture_dirs[1] / "captured-link-ready.bc",
            destination=Path("temp"),
        )
        mock_shutil.move.assert_called_once_with("temp", outfile)

        mock_check_call.assert_called_once_with(
            [llvm_command("llvm-dis"), str(outfile)]
        )
        mock_merge.assert_called_once_with(
            [capture_dirs[0] / "traceInfo.json", capture_dirs[1] / "traceInfo.json"],
            dest / "traceInfo.json",
        )

    @patch.object(merge, "shutil")
    @patch.object(merge, "prep_bitcode_for_linkage")
    @patch.object(merge.tempfile, "mkstemp")
    @patch.object(merge, "os")
    @patch.object(merge, "_link_bitcode")
    @patch.object(merge.subprocess, "check_call")
    @patch.object(merge, "_merge_trace_info")
    def test_merge_bitcode_rmtree(
        self,
        mock_merge,
        mock_check_call,
        mock_link,
        mock_os,
        mock_mkstemp,
        mock_prep_bitcode,
        mock_shutil,
    ):
        dest = MockPath("/") / "does" / "not" / "exist"
        dest._exists = True
        mock_mkstemp.return_value = (100, "temp")
        capture_dirs = [
            Path("/") / "i" / "don't" / "exist",
            Path("/") / "I" / "don't" / "either",
        ]

        merge.merge_bitcode(capture_dirs, dest)
        mock_shutil.rmtree.assert_called_once_with(dest)

    @patch.object(merge, "shutil")
    @patch.object(merge, "prep_bitcode_for_linkage")
    @patch.object(merge.tempfile, "mkstemp")
    @patch.object(merge, "os")
    @patch.object(merge, "_link_bitcode")
    @patch.object(merge.subprocess, "check_call")
    @patch.object(merge, "_merge_trace_info")
    def test_merge_bitcode_llvm_error(
        self,
        mock_merge,
        mock_check_call,
        mock_link,
        mock_os,
        mock_mkstemp,
        mock_prep_bitcode,
        mock_shutil,
    ):
        dest = MockPath("/") / "does" / "not" / "exist"
        dest.exists.return_value = True
        mock_mkstemp.return_value = (100, "temp")
        capture_dirs = [
            Path("/") / "i" / "don't" / "exist",
            Path("/") / "I" / "don't" / "either",
        ]
        mock_check_call.side_effect = subprocess.CalledProcessError(0, "asdf")

        with pytest.raises(BinRecError):
            merge.merge_bitcode(capture_dirs, dest)

    @patch.object(merge, "project")
    @patch.object(merge, "shutil")
    @patch.object(merge, "merge_bitcode")
    def test_merge_traces(self, mock_merge_bc, mock_shutil, mock_project):
        mock_root = MockPath("/")
        outdir = mock_project.merged_trace_dir.return_value = mock_root / "out"
        trace_dirs = mock_project.get_trace_dirs.return_value = [
            mock_root / "1",
            mock_root / "2",
        ]

        merge.merge_traces("hello")

        mock_merge_bc.assert_called_once_with(trace_dirs, outdir)

        mock_shutil.copy2.assert_called_once_with(
            trace_dirs[0] / "binary", outdir / "binary"
        )

    @patch.object(merge, "project")
    def test_merge_traces_no_dirs(self, mock_project):
        mock_project.get_trace_dirs.return_value = []

        with pytest.raises(BinRecError):
            merge.merge_traces("hello")

    @patch("sys.argv", ["merge", "hello"])
    @patch.object(sys, "exit")
    @patch.object(merge, "merge_traces")
    def test_main_traces(self, mock_merge_traces, mock_exit):
        merge.main()
        mock_merge_traces.assert_called_once_with("hello")
        mock_exit.assert_called_once_with(0)

    @patch("sys.argv", ["merge"])
    def test_main_usage_error(self):
        with pytest.raises(SystemExit) as err:
            merge.main()

        assert err.value.code == 2

    @patch("sys.argv", ["merge", "-v", "hello"])
    @patch.object(sys, "exit")
    @patch.object(merge, "merge_traces")
    @patch.object(merge, "logging")
    def test_main_verbose(self, mock_logging, mock_merge, mock_exit):
        merge.logging.DEBUG = logging.DEBUG
        merge.main()
        mock_logging.getLogger.assert_called_once_with("binrec")
        print(mock_logging.getLogger.return_value.setLevel.call_args_list)
        mock_logging.getLogger.return_value.setLevel.assert_called_once_with(
            logging.DEBUG
        )

    @patch("sys.argv", ["merge", "-vv", "hello"])
    @patch.object(sys, "exit")
    @patch.object(merge, "merge_traces")
    @patch.object(merge, "logging")
    @patch.object(audit, "enable_python_audit_log")
    def test_main_audit(self, mock_audit, mock_logging, mock_merge, mock_exit):
        mock_logging.DEBUG = logging.DEBUG
        merge.main()
        mock_logging.getLogger.return_value.setLevel.assert_called_once_with(
            logging.DEBUG
        )
        mock_audit.assert_called_once()