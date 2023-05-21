from ..helpers.utils import *
import os


# inject the assembler code into the recovered.ll
def inject_asm(project, asm_file, place, dialect="att"):

    init_mutation(project)

    path = format_path(asm_file) # format path to absolute path

    begin_main, end_main = find_main(project)

    if place == "begin":
        inject_asm_at(project, path, dialect, begin_main)
    elif place == "end":
        inject_asm_at(project, path, dialect, end_main)
    else:
        print(f"{place} unknown: Invalid place to inject the assembly code")

def inject_asm_at(project, asm_file, dialect, line_num):
    print(project, asm_file, dialect, line_num)
    code = get_asm_code(asm_file)
    print(code)

def get_asm_code(file):
    lines = []
    with open(file, "r") as f:
        lines = f.read()

    return lines.replace("\n", "\\0A").replace("\t", "\\09")

def format_path(path):
    return os.path.abspath(path)

