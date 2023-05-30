import base64
from typing import Union
from ..helpers.utils import *
from .helpers.string_utils import *
from .helpers.string_ref import TYPES, stringRef
from ..helpers.ref import ref
from ..helpers.file_representation import fileRepresentation as fileRep

def b64_strings(project, rodata = False):
    """Mutation of <project> by removing strings from their data section
       and splitting them in the text section
    
    Keyword arguments:
    project -- project name
    """
    (start_main, end_main), recovered = init_mutation(project)
    constants = find_constant_declaration_block(recovered)
    refs = find_strings(project, recovered, start_main, end_main)
    test_and_set_base64_decode_func(recovered, constants)
    for ref in refs:
        b64_string_at(project, recovered, ref, constants, rodata)

def test_and_set_base64_decode_func(recovered: fileRep, cst_ref: ref):
    """Test if base64_decode function is already defined in the file
       If not, add it to the file
    
    Keyword arguments:
    recovered -- file representation of the recovered file
    cst_ref -- reference to the constants block
    """
    if not "declare i8* @base64_decode(i8* noundef)" in "".join(recovered.lines):
        recovered.insert(cst_ref.line_num, "declare i8* @base64_decode(i8*)\n")


def b64_string_at(project, recovered: fileRep, str_ref: stringRef, constantsRefs: ref, rodata: bool = False):
    """get and remove string(s) at <offset> in the binary of <project>
       Then replace the reference at line <line_num> in recovered.ll
       by an hardcoded splitted version of the string.
    
    Keyword arguments:
    project -- project name
    offset -- offset of string in binary
    line_num -- line num of the store instruction of the string
    Return: number of added lines 
    """
    
    if(str_ref.type == TYPES.ONE_ADDR):
        offset = str_ref.offset
        string = get_bytes_from_binary(project, offset)

        remove_bytes_from_binary(project, offset, len(string))
        inject_b64_string(recovered, string+b"\00", str_ref, constantsRefs, rodata)

    elif(str_ref.type == TYPES.TWO_ADDR):
        offsets = str_ref.offset
        strings = []
        for i, offset in enumerate(offsets):
            string = get_bytes_from_binary(project, offset)
            
            strings.append(string+b"\00")
        for i, offset in enumerate(offsets):
            remove_bytes_from_binary(project, offset, len(strings[i].encode()))

        inject_b64_string(recovered, strings, str_ref, constantsRefs, rodata)

    elif(str_ref.type == TYPES.GLB_CST):
        recovered.delete(str_ref.line_num)

        var_name = re.findall(r'(@.*?) =', str_ref.line)[0]
        var_refs = find_var_usage(recovered, var_name, exclude_line=[str_ref.line_num])
        
        for var_ref in var_refs:
            var_ref.__class__ = stringRef # Hacky way to keep the link with the original ref
            var_ref.type = TYPES.GLB_CST
            var_ref.offset = -1
            var_ref.string = str_ref.string
            inject_b64_string(recovered, str_ref.string, var_ref, constantsRefs, rodata)
    
    elif(str_ref.type == TYPES.LCL_CST):
        inject_b64_string(recovered, str_ref.string, str_ref, constantsRefs, rodata)


def inject_b64_string(recovered: fileRep, string : Union[bytes, list], str_ref: stringRef, cst_ref: ref, rodata: bool = False):
    """Replace the reference at line <line_num> in recovered.ll
       by an hardcoded splitted version of the <string>.
    
    Keyword arguments:
    project -- project name
    string -- string to inject
    line_num -- line number where to inject 
    Return: number of added lines
    """


    if str_ref.type == TYPES.ONE_ADDR and type(string) == bytes:
        ind = get_new_index(recovered)

        constants = ""

        if rodata:
            code, constants = generate_llvm_base64_string_code_with_constants(string, "spi", str_ref.line.strip(), ind)
        else:
            code = generate_llvm_base64_string_code(string, "spi", str_ref.line.strip(), ind)

        recovered.insert(str_ref.line_num, code)
        recovered.insert(str_ref.line_num, str_ref.get_mutated_line(f"%spi{ind}"))
        recovered.insert(str_ref.line_num, f";-------------------------------\n")

        if rodata:
            recovered.insert(cst_ref.line_num, constants)

    elif str_ref.type == TYPES.TWO_ADDR and type(string) == list:
        ind1 = get_new_index(recovered)
        ind2 = get_new_index(recovered)

        constants1 = constants2 = ""

        if rodata:
            code, constants1 = generate_llvm_base64_string_code_with_constants(string[0], "spi", str_ref.line.strip(), ind1)
        else:
            code = generate_llvm_base64_string_code(string[0], "spi", str_ref.line.strip(), ind1)

        recovered.insert(str_ref.line_num, code)

        if rodata:
            code, constants2 = generate_llvm_base64_string_code_with_constants(string[1], "spi", str_ref.line.strip(), ind2)
        else:
            code = generate_llvm_base64_string_code(string[1], "spi", str_ref.line.strip(), ind2)
        
        recovered.insert(str_ref.line_num, code)

        if rodata:
            recovered.insert(cst_ref.line_num, constants1)
            recovered.insert(cst_ref.line_num, constants2)

        recovered.insert(str_ref.line_num, str_ref.get_mutated_line(f"%spi{ind1}", f"%spi{ind2}"))
        recovered.insert(str_ref.line_num, f";-------------------------------\n")
            
    elif str_ref.type == TYPES.GLB_CST and type(string) == bytes:
        ind = get_new_index(recovered)

        constants = ""

        if rodata:
            code, constants = generate_llvm_base64_string_code_with_constants(string, f"spi{ind}", str_ref.line.strip(), ind, format="ptr")
        else:
            code = generate_llvm_base64_string_code(string, f"spi{ind}", str_ref.line.strip(), ind, format="ptr")

        recovered.insert(str_ref.line_num, code)
        recovered.insert(str_ref.line_num, str_ref.get_mutated_line(f"%spi{ind}"))
        recovered.insert(str_ref.line_num, f";-------------------------------\n")

        if rodata:
            recovered.insert(cst_ref.line_num, constants)

    elif str_ref.type == TYPES.LCL_CST and type(string) == bytes:
        ind = get_new_index(recovered)

        constants = ""

        if rodata:
            code, constants = generate_llvm_base64_string_code_with_constants(string, "spi", str_ref.line.strip(), ind, format="string")
        else:
            code = generate_llvm_base64_string_code(string, "spi", str_ref.line.strip(), ind, format="string")

        recovered.insert(str_ref.line_num, code)
        recovered.insert(str_ref.line_num, str_ref.get_mutated_line(f"%spi{ind}"))
        recovered.insert(str_ref.line_num, f";-------------------------------\n")

        if rodata:
            recovered.insert(cst_ref.line_num, constants)

    else:
        raise ValueError(f"Unknown ref type: {str_ref.type} or string type: {type(string)}")
    
    recovered.delete(str_ref.line_num)
    
    recovered.write()


def generate_llvm_base64_string_code_with_constants(string : bytes, var, infos, ind, format : str = "i32"):
    """Generate the LLVM code to inject a splitted version of <string> in recovered.ll.
         <var> is the name of the variable to store the string.
         <format> is the format of the ending <var>. Can be "ptr" or "string".
    """
    
    cipher = generate_b64_cipher(string)
    llvm_cipher = get_bytes_in_llvm_format(cipher)
    cipher_length = len(cipher)
    plain_length = len(string)

    cst_str = f""";-------------------------------
; B64 Replace: {infos}
@cipher.{ind} = constant [{cipher_length} x i8] c\"{llvm_cipher}\"
"""

    code = f""";-------------------------------
; B64 Replace: {infos}
  %cipher.ptr.{ind} = getelementptr inbounds [{cipher_length} x i8], [{cipher_length} x i8]* @cipher.{ind}, i32 0, i32 0
  %plain.ptr.{ind} = tail call i8* @base64_decode(i8* %cipher.ptr.{ind})
"""
   
    if format == "i32":
        code += f"""  %{var}{ind} = ptrtoint i8* %plain.ptr.{ind} to i32
"""
    elif format == "string":
        code += f"""  %tmp.{ind} = bitcast i8* %plain.ptr.{ind} to [{plain_length} x i8]*
  %{var}{ind} = load [{plain_length} x i8], [{plain_length} x i8]* %tmp.{ind}
"""
    elif format == "ptr":
        code += f"""  %{var} = bitcast i8* %plain.ptr.{ind} to [{plain_length} x i8]*
"""
    else:
        raise ValueError("format must be ptr or string")

    return code, cst_str

def generate_llvm_base64_string_code(string : bytes, var, infos, ind, format : str = "i32"):
    """Generate the LLVM code to inject a splitted version of <string> in recovered.ll.
         <var> is the name of the variable to store the string.
         <format> is the format of the ending <var>. Can be "ptr" or "string".
    """
    
    cipher = generate_b64_cipher(string)
    llvm_cipher = get_bytes_in_llvm_format(cipher)
    cipher_length = len(cipher)
    plain_length = len(string)

    code = f""";-------------------------------
; B64 Replace: {infos}
  %cipher.ptr.{ind} = alloca [{cipher_length} x i8]
  store [{cipher_length} x i8] c\"{llvm_cipher}\", [{cipher_length} x i8]* %cipher.ptr.{ind}
  %cipher.{ind} = getelementptr inbounds [{cipher_length} x i8], [{cipher_length} x i8]* %cipher.ptr.{ind}, i32 0, i32 0
  %plain.ptr.{ind} = tail call i8* @base64_decode(i8* %cipher.{ind})
"""
   
    if format == "i32":
        code += f"""  %{var}{ind} = ptrtoint i8* %plain.ptr.{ind} to i32
"""
    elif format == "string":
        code += f"""  %tmp.{ind} = bitcast i8* %plain.ptr.{ind} to [{plain_length} x i8]*
  %{var}{ind} = load [{plain_length} x i8], [{plain_length} x i8]* %tmp.{ind}
"""
    elif format == "ptr":
        code += f"""  %{var} = bitcast i8* %plain.ptr.{ind} to [{plain_length} x i8]*
"""
    else:
        raise ValueError("format must be ptr or string")

    return code

def generate_b64_cipher(string : bytes):
    """Generate the base64 cipher of <string>"""
    return base64.b64encode(string)+b"\0"
