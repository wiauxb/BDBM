from ..helpers.utils import *
from .helpers.string_utils import *
from .helpers.string_ref import TYPES, stringRef
from ..helpers.ref import ref
from ..helpers.file_representation import fileRepresentation as fileRep
import random
from string import ascii_letters, digits

def xor_string_at(project, recovered: fileRep, str_ref: stringRef, cst_ref: ref, rodata: bool):
    """get and remove string(s) at <offset> in the binary of <project>
       Then replace the reference at line <line_num> in recovered.ll
       by an hardcoded XORed version of the string.

    Keyword arguments:
    project -- project name
    offset -- offset of string in binary
    line_num -- line num of the store instruction of the string
    Return: number of added lines
    """
    if(str_ref.type == TYPES.ONE_ADDR):
        offset = str_ref.offset
        string = get_string_from_binary(project, offset)

        remove_string_from_binary(project, offset, len(string.encode()))
        inject_xored_string(recovered, string, str_ref, cst_ref, rodata)

    elif(str_ref.type == TYPES.TWO_ADDR):
        offsets = str_ref.offset
        strings = []
        for i, offset in enumerate(offsets):
            strings.append(get_string_from_binary(project, offset))
            remove_string_from_binary(project, offset, len(strings[i].encode()))

        inject_xored_string(recovered, strings, str_ref, cst_ref, rodata)

    elif(str_ref.type == TYPES.GLB_CST):
        recovered.delete(str_ref.line_num)

        var_name = re.findall(r'(@.*?) =', str_ref.line)[0]
        var_refs = find_var_usage(recovered, var_name, exclude_line=[str_ref.line_num])

        for var_ref in var_refs:
            var_ref.__class__ = stringRef # Hacky way to keep the link with the original ref
            var_ref.type = TYPES.GLB_CST
            var_ref.offset = -1
            var_ref.string = str_ref.string
            inject_xored_string(recovered, str_ref.string, var_ref, cst_ref, rodata)

    elif(str_ref.type == TYPES.LCL_CST):
        inject_xored_string(recovered, str_ref.string, str_ref, cst_ref, rodata)




def inject_xored_string(recovered: fileRep, string, str_ref: stringRef, cst_ref: ref, rodata: bool):
    """Replace the reference at line <line_num> in recovered.ll
       by an hardcoded splitted version of the <string>.

    Keyword arguments:
    project -- project name
    string -- string to inject
    line_num -- line number where to inject
    Return: number of added lines
    """

    if str_ref.type == TYPES.ONE_ADDR:
        ind = get_new_index(recovered)

        constants = ""

        if rodata:
            code, constants = generate_llvm_xor_string_code_with_constants(string, "spi", str_ref.line.strip(), ind)
        else:
            code = generate_llvm_xor_string_code(string, "spi", str_ref.line.strip(), ind)

        recovered.insert(str_ref.line_num, code)
        recovered.insert(str_ref.line_num, str_ref.get_mutated_line(f"%spi{ind}"))
        recovered.insert(str_ref.line_num, f";-------------------------------\n")

        if rodata:
            recovered.insert(cst_ref.line_num, constants)

    elif str_ref.type == TYPES.TWO_ADDR:
        ind1 = get_new_index(recovered)
        ind2 = get_new_index(recovered)

        constants1 = constants2 = ""

        if rodata:
            code, constants1 = generate_llvm_xor_string_code_with_constants(string[0], "spi", str_ref.line.strip(), ind1)
        else:
            code = generate_llvm_xor_string_code(string[0], "spi", str_ref.line.strip(), ind1)

        recovered.insert(str_ref.line_num, code)

        if rodata:
            code, constants2 = generate_llvm_xor_string_code_with_constants(string[1], "spi", str_ref.line.strip(), ind2)
        else:
            code = generate_llvm_xor_string_code(string[1], "spi", str_ref.line.strip(), ind2)

        recovered.insert(str_ref.line_num, code)

        if rodata:
            recovered.insert(cst_ref.line_num, constants1)
            recovered.insert(cst_ref.line_num, constants2)
        recovered.insert(str_ref.line_num, str_ref.get_mutated_line(f"%spi{ind1}", f"%spi{ind2}"))
        recovered.insert(str_ref.line_num, f";-------------------------------\n")

    elif str_ref.type == TYPES.GLB_CST:
        ind = get_new_index(recovered)

        constants = ""

        if rodata:
            code, constants = generate_llvm_xor_string_code_with_constants(string, f"spi{ind}", str_ref.line.strip(), ind, format="ptr", add_null_byte=False)
        else:
            code = generate_llvm_xor_string_code(string, f"spi{ind}", str_ref.line.strip(), ind, format="ptr", add_null_byte=False)

        recovered.insert(str_ref.line_num, code)
        recovered.insert(str_ref.line_num, str_ref.get_mutated_line(f"%spi{ind}"))
        recovered.insert(str_ref.line_num, f";-------------------------------\n")

        if rodata:
            recovered.insert(cst_ref.line_num, constants)

    elif str_ref.type == TYPES.LCL_CST:
        ind = get_new_index(recovered)

        constants = ""

        if rodata:
            code, constants = generate_llvm_xor_string_code_with_constants(string, "spi", str_ref.line.strip(), ind, format="string", add_null_byte=False)
        else:
            code = generate_llvm_xor_string_code(string, "spi", str_ref.line.strip(), ind, format="string", add_null_byte=False)

        recovered.insert(str_ref.line_num, code)
        recovered.insert(str_ref.line_num, str_ref.get_mutated_line(f"%spi{ind}"))
        recovered.insert(str_ref.line_num, f";-------------------------------\n")

        if rodata:
            recovered.insert(cst_ref.line_num, constants)

    else:
        raise ValueError(f"Unknown Type: {str_ref.type}")

    recovered.delete(str_ref.line_num)

    recovered.write()

def generate_llvm_xor_string_code(string, var, infos, ind, format : str = "i32", add_null_byte : bool = True):
    string = get_string_in_python_format(string).encode()
    if add_null_byte:
        string = string + (b"\00" if string[-1] != 0 else b"")
    length = len(string)
    
    xor_string = ""
    xor_key = ""
    xor_string_list = ""
    while len(xor_string_list) != length:
        xor_key = ''.join(random.choices(ascii_letters + digits, k=length)).encode()
        try :
            xor_string_list= [f"\\{c:02X}" for c in bytes(a ^ b for a, b in zip(string, xor_key))]
            xor_string = "".join(xor_string_list)
        except Exception as e:
            continue
            #raise Exception("xor ko:"+ str(e))
    
    xor_key = xor_key.decode()
    #xor_string = get_string_in_llvm_format(xor_string)
    
    code = f""";-------------------------------
; Replace: {infos}
  %sp0.{ind} = alloca [{length} x i8]
  store [{length} x i8] c"{xor_string}", [{length} x i8]* %sp0.{ind}
  %sp0.1.{ind} = bitcast [{length} x i8]* %sp0.{ind} to i{length*8}*
  %i0.{ind} = load i{length*8}, i{length*8}* %sp0.1.{ind}

  %sp1.{ind} = alloca [{length} x i8]
  store [{length} x i8] c"{xor_key}", [{length} x i8]* %sp1.{ind}
  %sp1.1.{ind} = bitcast [{length} x i8]* %sp1.{ind} to i{length*8}*
  %i1.{ind} = load i{length*8}, i{length*8}* %sp1.1.{ind}

  %xp{ind} = xor i{length*8} %i0.{ind}, %i1.{ind}

  %fi.{ind} = alloca i{length*8}
  store i{length*8} %xp{ind}, i{length*8}* %fi.{ind}
"""
    if format == "i32":
        code += f"""
  %{var}{ind} = ptrtoint i{length*8}* %fi.{ind} to i32
"""
    elif format == "string":
        code += f"""
  %final.ptr.{ind} = bitcast i{length*8}* %fi.{ind} to [{length} x i8]*
  %{var}{ind} = load [{length} x i8], [{length} x i8]* %final.ptr.{ind}
"""
    elif format == "ptr":
        code += f"""
  %{var} = bitcast i{length*8}* %fi.{ind} to [{length} x i8]*
"""
    else:
        raise ValueError("format must be ptr, string or i32")
    return code

def generate_llvm_xor_string_code_with_constants(string, var, infos, ind, format : str = "i32", add_null_byte : bool = True):
    """Generate the LLVM code to inject a xored version of <string> in recovered.ll.
         <var> is the name of the variable to store the string."""
    string = get_string_in_python_format(string).encode()
    if add_null_byte:
        string = string + (b"\00" if string[-1] != 0 else b"")
    length = len(string)
    
    xor_string = ""
    xor_key = ""
    xor_string_list = ""
    while len(xor_string_list) != length:
        xor_key = ''.join(random.choices(ascii_letters + digits, k=length)).encode()
        try :
            xor_string_list= [f"\\{c:02X}" for c in bytes(a ^ b for a, b in zip(string, xor_key))]
            xor_string = "".join(xor_string_list)
        except Exception as e:
            continue
            #raise Exception("xor ko:"+ str(e))

    xor_key = xor_key.decode()
    #xor_string = get_string_in_llvm_format(xor_string)

    constants =  f""";-------------------------------
; Replace: {infos}
@str.{ind} = private unnamed_addr constant [{length} x i8] c"{xor_string}", align 1
@key.{ind} = private unnamed_addr constant [{length} x i8] c"{xor_key}", align 1
"""

    code = f""";-------------------------------
; Replace: {infos}
  %sp0.1.{ind} = bitcast [{length} x i8]* @str.{ind} to i{length*8}*
  %i0.{ind} = load i{length*8}, i{length*8}* %sp0.1.{ind}

  %sp1.1.{ind} = bitcast [{length} x i8]* @key.{ind} to i{length*8}*
  %i1.{ind} = load i{length*8}, i{length*8}* %sp1.1.{ind}

  %xp{ind} = xor i{length*8} %i0.{ind}, %i1.{ind}

  %fi.{ind} = alloca i{length*8}
  store i{length*8} %xp{ind}, i{length*8}* %fi.{ind}
"""
    if format == "i32":
        code += f"""
  %{var}{ind} = ptrtoint i{length*8}* %fi.{ind} to i32
"""
    elif format == "string":
        code += f"""
  %final.ptr.{ind} = bitcast i{length*8}* %fi.{ind} to [{length} x i8]*
  %{var}{ind} = load [{length} x i8], [{length} x i8]* %final.ptr.{ind}
"""
    elif format == "ptr":
        code += f"""
  %{var} = bitcast i{length*8}* %fi.{ind} to [{length} x i8]*
"""
    else:
        raise ValueError("format must be ptr, string or i32")

    return code, constants


def xor_strings(project, rodata: bool, probability: float = 1.0, number: int = 1):
    """Mutation of <project> by removing strings from their data section
       and xoring them in the text section

    Keyword arguments:
    project -- project name
    """
    (start_main, end_main), recovered = init_mutation(project)
    csts = find_constant_declaration_block(recovered)
    refs = find_strings(project, recovered, start_main, end_main)
    for ref in refs:
        xor_string_at(project, recovered, ref, csts, rodata)
