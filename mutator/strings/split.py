from ..helpers.utils import *
from .helpers.string_utils import *
from .helpers.string_ref import TYPES, stringRef
from ..helpers.ref import ref
from random import shuffle

def split_string_at(project, str_ref: stringRef, constantsRefs: ref):
    """get and remove string(s) at <offset> in the binary of <project>
       Then replace the reference at line <line_num> in recovered.ll
       by an hardcoded splitted version of the string.
    
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
        added_lines = inject_splitted_string(project, string, str_ref, constantsRefs)
        if(added_lines == -1):
            print("Cannot inject in recovered LLVM, stop mutation")
        return added_lines

    elif(str_ref.type == TYPES.TWO):
        offsets = str_ref.offset
        strings = []
        for i, offset in enumerate(offsets):
            strings.append(get_string_from_binary(project, offset))
            remove_string_from_binary(project, offset, len(strings[i].encode()))

        added_lines = inject_splitted_string(project, strings, str_ref, constantsRefs)
        if(added_lines == -1):
            print("Cannot inject in recovered LLVM, stop mutation")
        return added_lines

def inject_splitted_string(project, string, str_ref: stringRef, cst_ref: ref):
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

        code, constants = generate_llvm_split_string_code(string, "spi", str_ref.line.strip(), ind)

        lines.insert(line_num, f";-------------------------------\n")
        lines.insert(line_num, str_ref.get_mutated_line(f"%spi{ind}"))
        lines.insert(line_num, code)

        lines.insert(cst_ref.line_num, constants)
        added_lines += 2 + len(code.splitlines()) + len(constants.splitlines())
        print(len(constants.splitlines()))
        print(constants.splitlines())


    elif str_ref.type == TYPES.TWO:
        ind1 = get_new_index()
        ind2 = get_new_index()
        lines.insert(line_num, f";-------------------------------\n")
        lines.insert(line_num, str_ref.get_mutated_line(f"%spi{ind1}", f"%spi{ind2}"))
        added_lines += 2

        code, constants1 = generate_llvm_split_string_code(string[0], "spi", str_ref.line.strip(), ind1)

        lines.insert(line_num, code)
        added_lines += len(code.splitlines())

        code, constants2 = generate_llvm_split_string_code(string[1], "spi", str_ref.line.strip(), ind2)
        added_lines += len(code.splitlines())
        lines.insert(line_num, code)

        lines.insert(cst_ref.line_num, constants2)
        lines.insert(cst_ref.line_num, constants1)
        added_lines += len(constants1.splitlines()) + len(constants2.splitlines())
    else:
        raise ValueError(f"Unknown Type: {str_ref.type}")
    
    with open(recovered, "w") as f:
            f.writelines(lines)
        
    return added_lines - 1

def generate_llvm_split_string_code(string, var, infos, ind):
    length = len(string.encode()) + 1
    splits = generate_splitted_string(string)

    constants = []
    for i, split in enumerate(splits[:-1]):
        split_len = len(split.encode())
        constants.append(f"""
@str.{i}.{ind} = constant [{split_len} x i8] c\"{split}\"""")
    constants.append(f"""
@str.{len(splits)-1}.{ind} = constant [{len(splits[-1].encode())+1} x i8] c\"{splits[-1]}\\00\"""")
    shuffle(constants)
    cst_str = f""";-------------------------------
; Replace: {infos}{"".join(constants)}
"""

    code = f""";-------------------------------
; Replace: {infos}
  %sp{ind} = alloca [{length} x i8]
  """
    
    split_len = len(splits[0].encode())
    code += f"""
  %s0.{ind} = load [{split_len} x i8], [{split_len} x i8]* @str.0.{ind}
  %sp0.{ind} = bitcast [{length} x i8]* %sp{ind} to [{split_len} x i8]*
  store [{split_len} x i8] %s0.{ind}, [{split_len} x i8]* %sp0.{ind}
  %next0.{ind} = getelementptr [{length} x i8], [{length} x i8]* %sp{ind}, i32 0, i32 {split_len}
  """
    prev_added_len = split_len
    for i in range(1, len(splits)-1):
        split_len = len(splits[i].encode())
        code += f"""
  %s{i}.{ind} = load [{split_len} x i8], [{split_len} x i8]* @str.{i}.{ind}
  %sp{i}.{ind} = bitcast i8* %next{i-1}.{ind} to [{split_len} x i8]*
  store [{split_len} x i8] %s{i}.{ind}, [{split_len} x i8]* %sp{i}.{ind}
  %next{i}.{ind} = getelementptr [{length} x i8], [{length} x i8]* %sp{ind}, i32 0, i32 {prev_added_len + split_len}
  """
        prev_added_len += split_len
    i = len(splits)-1
    split_len = len(splits[-1].encode()) + 1
    code += f"""
  %s{i}.{ind} = load [{split_len} x i8], [{split_len} x i8]* @str.{i}.{ind}
  %sp{i}.{ind} = bitcast i8* %next{i-1}.{ind} to [{split_len} x i8]*
  store [{split_len} x i8] %s{i}.{ind}, [{split_len} x i8]* %sp{i}.{ind}
  
  %{var}{ind} = ptrtoint [{length} x i8]* %sp{ind} to i32
"""

    return code, cst_str

def generate_splitted_string(string):
    cut = len(string) #TODO polish changer la valeur
    return [string[i * len(string)//cut:(i + 1) * len(string)//cut] for i in range(cut)]

def split_strings(project):
    """Mutation of <project> by removing strings from their data section
       and splitting them in the text section
    
    Keyword arguments:
    project -- project name
    """
    start_main, end_main = init_mutation(project)
    refs = find_strings(project, start_main, end_main)
    constants = find_constant_declaration_block(project)
    for ref in refs:
            added_lines = split_string_at(project, ref, constants)
            for i, ref_add in enumerate(refs) : 
                if ref_add != ref:
                    refs[i].line_num += added_lines
