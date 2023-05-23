from ..helpers.utils import *
from .helpers.string_utils import *
from .helpers.string_ref import TYPES, stringRef
from ..helpers.ref import ref
from random import shuffle
from ..helpers.file_representation import fileRepresentation as fileRep

def split_string_at(project, recovered: fileRep, str_ref: stringRef, constantsRefs: ref, rodata: bool = False, ncuts: int = -1):
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
        string = get_string_from_binary(project, offset)

        remove_string_from_binary(project, offset, len(string.encode()))
        inject_splitted_string(recovered, string, str_ref, constantsRefs, rodata, ncuts)

    elif(str_ref.type == TYPES.TWO_ADDR):
        offsets = str_ref.offset
        strings = []
        for i, offset in enumerate(offsets):
            strings.append(get_string_from_binary(project, offset))
            remove_string_from_binary(project, offset, len(strings[i].encode()))

        inject_splitted_string(recovered, strings, str_ref, constantsRefs, rodata, ncuts)

    elif(str_ref.type == TYPES.GLB_CST):
        recovered.delete(str_ref.line_num)

        var_name = re.findall(r'(@.*) =', str_ref.line)[0]
        var_refs = find_var_usage(recovered, var_name, exclude_line=[str_ref.line_num])
        
        for var_ref in var_refs:
            var_ref.__class__ = stringRef # Hacky way to keep the link with the original ref
            var_ref.type = TYPES.GLB_CST
            var_ref.offset = -1
            var_ref.string = str_ref.string
            inject_splitted_string(recovered, str_ref.string, var_ref, constantsRefs, rodata, ncuts)
    
    elif(str_ref.type == TYPES.LCL_CST):
        inject_splitted_string(recovered, str_ref.string, str_ref, constantsRefs, rodata, ncuts)


def inject_splitted_string(recovered: fileRep, string, str_ref: stringRef, cst_ref: ref, rodata: bool = False, ncuts: int = -1):
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
            code, constants = generate_llvm_split_string_code_with_constants(string, "spi", str_ref.line.strip(), ind, ncuts)
        else:
            code = generate_llvm_split_string_code(string, "spi", str_ref.line.strip(), ind, ncuts)

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
            code, constants1 = generate_llvm_split_string_code_with_constants(string[0], "spi", str_ref.line.strip(), ind1, ncuts)
        else:
            code = generate_llvm_split_string_code(string[0], "spi", str_ref.line.strip(), ind1, ncuts)

        recovered.insert(str_ref.line_num, code)

        if rodata:
            code, constants2 = generate_llvm_split_string_code_with_constants(string[1], "spi", str_ref.line.strip(), ind2, ncuts)
        else:
            code = generate_llvm_split_string_code(string[1], "spi", str_ref.line.strip(), ind2, ncuts)
        
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
            code, constants = generate_llvm_split_string_code_with_constants(string, f"spi{ind}", str_ref.line.strip(), ind, ncuts, format="ptr", add_null_byte=False)
        else:
            code = generate_llvm_split_string_code(string, f"spi{ind}", str_ref.line.strip(), ind, ncuts, format="ptr", add_null_byte=False)

        recovered.insert(str_ref.line_num, code)
        recovered.insert(str_ref.line_num, str_ref.get_mutated_line(f"%spi{ind}"))
        recovered.insert(str_ref.line_num, f";-------------------------------\n")

        if rodata:
            recovered.insert(cst_ref.line_num, constants)

    elif str_ref.type == TYPES.LCL_CST:
        ind = get_new_index(recovered)

        constants = ""

        if rodata:
            code, constants = generate_llvm_split_string_code_with_constants(string, "spi", str_ref.line.strip(), ind, ncuts, format="string", add_null_byte=False)
        else:
            code = generate_llvm_split_string_code(string, "spi", str_ref.line.strip(), ind, ncuts, format="string", add_null_byte=False)

        recovered.insert(str_ref.line_num, code)
        recovered.insert(str_ref.line_num, str_ref.get_mutated_line(f"%spi{ind}"))
        recovered.insert(str_ref.line_num, f";-------------------------------\n")

        if rodata:
            recovered.insert(cst_ref.line_num, constants)

    else:
        raise ValueError(f"Unknown Type: {str_ref.type}")
    
    recovered.delete(str_ref.line_num)
    
    recovered.write()


def generate_llvm_split_string_code(string, var, infos, ind, ncuts, format : str = "ptr", add_null_byte : bool = True):
    """Generate the LLVM code to inject a splitted version of <string> in recovered.ll.
         <var> is the name of the variable to store the string."""
    null = "\\00"
    length = len(string.replace("\\00", "\00").encode()) + (1 if add_null_byte else 0)

    code = f""";-------------------------------
; Replace: {infos}
  %sp{ind} = alloca [{length} x i8]

  """
    
    splits = generate_splitted_string(string, ncuts)
    split_len = len(splits[0].replace("\\00", "\00").encode())
    code += f"""
  %sp0.{ind} = bitcast [{length} x i8]* %sp{ind} to [{split_len} x i8]*
  store [{split_len} x i8] c"{splits[0]}", [{split_len} x i8]* %sp0.{ind}
  %next0.{ind} = getelementptr [{length} x i8], [{length} x i8]* %sp{ind}, i32 0, i32 {split_len}
  """
    prev_added_len = split_len
    for i in range(1, len(splits)-1):
        split_len = len(splits[i].replace("\\00", "\00").encode())
        code += f"""
  %sp{i}.{ind} = bitcast i8* %next{i-1}.{ind} to [{split_len} x i8]*
  store [{split_len} x i8] c"{splits[i]}", [{split_len} x i8]* %sp{i}.{ind}
  %next{i}.{ind} = getelementptr [{length} x i8], [{length} x i8]* %sp{ind}, i32 0, i32 {prev_added_len + split_len}
  """
        prev_added_len += split_len
    i = len(splits)-1
    split_len = len(splits[-1].replace("\\00", "\00").encode()) + (1 if add_null_byte else 0)
    code += f"""
  %sp{i}.{ind} = bitcast i8* %next{i-1}.{ind} to [{split_len} x i8]*
  store [{split_len} x i8] c"{splits[i]}{null if add_null_byte else ''}", [{split_len} x i8]* %sp{i}.{ind}
"""
    if format == "ptr":
        code += f"""
  %{var}{ind} = ptrtoint [{length} x i8]* %sp{ind} to i32
"""
    elif format == "string":
        code += f"""
  %{var}{ind} = load [{length} x i8], [{length} x i8]* %sp{ind}
"""
    else:
        raise ValueError("format must be ptr or string")

    return code

def generate_llvm_split_string_code_with_constants(string : str, var, infos, ind, ncuts, format : str = "i32", add_null_byte : bool = True):
    """Generate the LLVM code to inject a splitted version of <string> in recovered.ll.
         <var> is the name of the variable to store the string.
         <format> is the format of the ending <var>. Can be "ptr" or "string".
    """
    null = "\\00"
    real_null = "\00"

    length = len(string.replace("\\00", "\00").encode()) + (1 if add_null_byte else 0)
    splits = generate_splitted_string(string, ncuts)

    constants = []
    for i, split in enumerate(splits[:-1]):
        split_len = len(split.replace("\\00", "\00").encode())
        constants.append(f"""
@str.{i}.{ind} = constant [{split_len} x i8] c\"{split}\"""")
    constants.append(f"""
@str.{len(splits)-1}.{ind} = constant [{len(splits[-1].replace(null, real_null).encode())+(1 if add_null_byte else 0)} x i8] c\"{splits[-1]}{null if add_null_byte else ''}\"""")
    shuffle(constants)
    cst_str = f""";-------------------------------
; Replace: {infos}{"".join(constants)}
"""

    code = f""";-------------------------------
; Replace: {infos}
  %{var if format == "ptr" else f"sp{ind}"} = alloca [{length} x i8]
  """
    
    split_len = len(splits[0].replace("\\00", "\00").encode())
    code += f"""
  %s0.{ind} = load [{split_len} x i8], [{split_len} x i8]* @str.0.{ind}
  %sp0.{ind} = bitcast [{length} x i8]* %{var if format == "ptr" else f"sp{ind}"} to [{split_len} x i8]*
  store [{split_len} x i8] %s0.{ind}, [{split_len} x i8]* %sp0.{ind}
  %next0.{ind} = getelementptr [{length} x i8], [{length} x i8]* %{var if format == "ptr" else f"sp{ind}"}, i32 0, i32 {split_len}
  """
    prev_added_len = split_len
    for i in range(1, len(splits)-1):
        split_len = len(splits[i].replace("\\00", "\00").encode())
        code += f"""
  %s{i}.{ind} = load [{split_len} x i8], [{split_len} x i8]* @str.{i}.{ind}
  %sp{i}.{ind} = bitcast i8* %next{i-1}.{ind} to [{split_len} x i8]*
  store [{split_len} x i8] %s{i}.{ind}, [{split_len} x i8]* %sp{i}.{ind}
  %next{i}.{ind} = getelementptr [{length} x i8], [{length} x i8]* %{var if format == "ptr" else f"sp{ind}"}, i32 0, i32 {prev_added_len + split_len}
  """
        prev_added_len += split_len
    i = len(splits)-1
    split_len = len(splits[-1].replace("\\00", "\00").encode()) + (1 if add_null_byte else 0)
    code += f"""
  %s{i}.{ind} = load [{split_len} x i8], [{split_len} x i8]* @str.{i}.{ind}
  %sp{i}.{ind} = bitcast i8* %next{i-1}.{ind} to [{split_len} x i8]*
  store [{split_len} x i8] %s{i}.{ind}, [{split_len} x i8]* %sp{i}.{ind}
""" 
    if format == "i32":
        code += f"""
  %{var}{ind} = ptrtoint [{length} x i8]* %sp{ind} to i32
"""
    elif format == "string":
        code += f"""
  %{var}{ind} = load [{length} x i8], [{length} x i8]* %sp{ind}
"""
    elif format == "ptr":
        pass
    else:
        raise ValueError("format must be ptr or string")

    return code, cst_str

def generate_splitted_string(string, ncuts = -1):
    """Split <string> in <ncuts> parts.
         If <ncuts> is -1, the string is splitted in chars.
    """
    string = string.replace("\\00", "\00")

    if ncuts == -1:
        cut = len(string)
    elif ncuts >= 2:
        cut = ncuts
    else:
        raise ValueError("ncuts must be -1 or >= 2")
    
    splitted = []
    for i in range(cut):
        split = string[i * len(string)//cut:(i + 1) * len(string)//cut]
        splitted.append(split.replace("\00", "\\00"))
    return splitted

def split_strings(project, rodata = False, probability = 1, number = 1, ncuts = -1):
    """Mutation of <project> by removing strings from their data section
       and splitting them in the text section
    
    Keyword arguments:
    project -- project name
    """
    (start_main, end_main), recovered = init_mutation(project)
    constants = find_constant_declaration_block(recovered)
    refs = find_strings(project, recovered, start_main, end_main)
    for ref in refs:
        split_string_at(project, recovered, ref, constants, rodata, ncuts)
