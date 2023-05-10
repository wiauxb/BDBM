from ..helpers.utils import *
from .helpers.string_utils import *
from .helpers.string_ref import TYPES, stringRef
from ..helpers.ref import ref
import random
from string import ascii_letters, digits

def xor_string_at(project, str_ref: stringRef, cst_ref: ref, rodata: bool):
    """get and remove string(s) at <offset> in the binary of <project>
       Then replace the reference at line <line_num> in recovered.ll
       by an hardcoded XORed version of the string.
    
    Keyword arguments:
    project -- project name
    offset -- offset of string in binary
    line_num -- line num of the store instruction of the string
    Return: number of added lines 
    """
    if(str_ref.type == TYPES.ONE):
        offset = str_ref.offset
        string = get_string_from_binary(project, offset)

        remove_string_from_binary(project, offset, len(string.encode()))
        added_lines = inject_xored_string(project, string, str_ref, cst_ref, rodata)
        if(added_lines == -1):
            print("Cannot inject in recovered LLVM, stop mutation")
        return added_lines

    elif(str_ref.type == TYPES.TWO):
        offsets = str_ref.offset
        strings = []
        for i, offset in enumerate(offsets):
            strings.append(get_string_from_binary(project, offset))
            remove_string_from_binary(project, offset, len(strings[i].encode()))

        added_lines = inject_xored_string(project, strings, str_ref, cst_ref, rodata)
        if(added_lines == -1):
            print("Cannot inject in recovered LLVM, stop mutation")
        return added_lines

def inject_xored_string(project, string, str_ref: stringRef, cst_ref: ref, rodata: bool):
    """Replace the reference at line <line_num> in recovered.ll
       by an hardcoded splitted version of the <string>.
    
    Keyword arguments:
    project -- project name
    string -- string to inject
    line_num -- line number where to inject 
    Return: number of added lines
    """
    recovered = "s2e/projects/" + project + "/s2e-out/recovered.ll"
    with open(recovered, "r") as f:
        lines = f.readlines()

    line_num = str_ref.line_num

    delete_line(recovered, str_ref)

    with open(recovered, "r") as f:
        lines = f.readlines()

    added_lines = 0

    if str_ref.type == TYPES.ONE:
        ind = get_new_index()

        constants = ""

        if rodata:
            code, constants = generate_llvm_xor_string_code_with_constants(string, "spi", str_ref.line.strip(), ind)
        else:
            code = generate_llvm_xor_string_code(string, "spi", str_ref.line.strip(), ind)

        lines.insert(line_num, f";-------------------------------\n")
        lines.insert(line_num, str_ref.get_mutated_line(f"%spi{ind}"))
        lines.insert(line_num, code)
        added_lines += 2 + len(code.splitlines())

        if rodata:
            lines.insert(cst_ref.line_num, constants)
            added_lines += len(constants.splitlines())

    elif str_ref.type == TYPES.TWO:
        ind1 = get_new_index()
        ind2 = get_new_index()
        lines.insert(line_num, f";-------------------------------\n")
        lines.insert(line_num, str_ref.get_mutated_line(f"%spi{ind1}", f"%spi{ind2}"))
        added_lines += 2

        constants1 = constants2 = ""

        if rodata:
            code, constants1 = generate_llvm_xor_string_code_with_constants(string[0], "spi", str_ref.line.strip(), ind1)
        else:
            code = generate_llvm_xor_string_code(string[0], "spi", str_ref.line.strip(), ind1)

        added_lines += len(code.splitlines())
        lines.insert(line_num, code)

        if rodata:
            code, constants2 = generate_llvm_xor_string_code_with_constants(string[1], "spi", str_ref.line.strip(), ind2)
        else:
            code = generate_llvm_xor_string_code(string[1], "spi", str_ref.line.strip(), ind2)
            
        added_lines += len(code.splitlines())
        lines.insert(line_num, code)

        if rodata:
            lines.insert(cst_ref.line_num, constants1)
            lines.insert(cst_ref.line_num, constants2)
            added_lines += len(constants1.splitlines())
            added_lines += len(constants2.splitlines())
    else:
        raise ValueError(f"Unknown Type: {str_ref.type}")
    
    with open(recovered, "w") as f:
            f.writelines(lines)
        
    return added_lines - 1

def generate_llvm_xor_string_code(string, var, infos, ind):
    length = len(string.encode()) +1
    xor_string = ""
    xor_key = ""
    while len(xor_string) != length-1 or "\"" in xor_string:
        xor_key = ''.join(random.choices(ascii_letters + digits, k=length-1))
        try : 
            xor_string_list = [chr(ord(a) ^ ord(b)) for a,b in zip(string, xor_key)]
            xor_string = "".join(xor_string_list)
        except :
            print("xor ko")
    code = f""";-------------------------------
; Replace: {infos}
  %sp0.{ind} = alloca [{length} x i8]
  store [{length} x i8] c"{xor_string}\\00", [{length} x i8]* %sp0.{ind}
  %sp0.1.{ind} = bitcast [{length} x i8]* %sp0.{ind} to i{length*8}*
  %i0.{ind} = load i{length*8}, i{length*8}* %sp0.1.{ind}

  %sp1.{ind} = alloca [{length} x i8]
  store [{length} x i8] c"{xor_key}\\00", [{length} x i8]* %sp1.{ind}
  %sp1.1.{ind} = bitcast [{length} x i8]* %sp1.{ind} to i{length*8}*
  %i1.{ind} = load i{length*8}, i{length*8}* %sp1.1.{ind}

  %xp{ind} = xor i{length*8} %i0.{ind}, %i1.{ind}

  %sp{ind} = alloca i{length*8}
  store i{length*8} %xp{ind}, i{length*8}* %sp{ind}
  %{var}{ind} = ptrtoint i{length*8}* %sp{ind} to i32
""" 
    return code

def generate_llvm_xor_string_code_with_constants(string, var, infos, ind):
    """Generate the LLVM code to inject a xored version of <string> in recovered.ll.
         <var> is the name of the variable to store the string."""
    length = len(string.encode()) +1
    xor_string = ""
    xor_key = ""
    while len(xor_string) != length-1 or "\"" in xor_string:
        xor_key = ''.join(random.choices(ascii_letters + digits, k=length-1))
        try : 
            xor_string_list = [chr(ord(a) ^ ord(b)) for a,b in zip(string, xor_key)]
            xor_string = "".join(xor_string_list)
        except :
            print("xor ko")
    
    constants =  f""";-------------------------------
; Replace: {infos}
@str.{ind} = private unnamed_addr constant [{length} x i8] c"{xor_string}\\00", align 1
@key.{ind} = private unnamed_addr constant [{length} x i8] c"{xor_key}\\00", align 1
"""

    code = f""";-------------------------------
; Replace: {infos}
  %sp0.1.{ind} = bitcast [{length} x i8]* @str.{ind} to i{length*8}*
  %i0.{ind} = load i{length*8}, i{length*8}* %sp0.1.{ind}

  %sp1.1.{ind} = bitcast [{length} x i8]* @key.{ind} to i{length*8}*
  %i1.{ind} = load i{length*8}, i{length*8}* %sp1.1.{ind}

  %xp{ind} = xor i{length*8} %i0.{ind}, %i1.{ind}

  %sp{ind} = alloca i{length*8}
  store i{length*8} %xp{ind}, i{length*8}* %sp{ind}
  %{var}{ind} = ptrtoint i{length*8}* %sp{ind} to i32
""" 

    return code, constants


def xor_strings(project, rodata: bool, probability: float = 1.0, number: int = 1):
    """Mutation of <project> by removing strings from their data section
       and xoring them in the text section
    
    Keyword arguments:
    project -- project name
    """
    start_main, end_main = init_mutation(project)
    csts = find_constant_declaration_block(project)
    for i in range(number):
        reset_recovered(project)
        refs = find_strings(project, start_main, end_main)
        for ref in refs:
                added_lines = xor_string_at(project, ref, csts, rodata)
                for i, ref_add in enumerate(refs) : 
                    if ref_add != ref:
                        refs[i].line_num += added_lines
        save_mutation(project, f"xor-{probability}-{'rodata' if rodata else ''}")
