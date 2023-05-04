from .utils import *
from .string_ref import TYPES, stringRef

def find_strings(project, begin_main, end_main):
    """find string offsets in the binary
    
    Keyword arguments:
    project - Project Name
    begin_main - Beginning of the main function recovered.ll
    end_main - End of the main function recovered.ll
    Return: list of lists, [line_numbers, offset1, offset2, ...)
    """
    
    copy = "s2e/projects/" + project + "/s2e-out/recovered.ll"
    list = []
    ro_add, txt_add = ro_txt_addresses(project)
    with open(copy, "r") as fp:
        for i,line in enumerate(fp):
            try:
                if i > begin_main and i < end_main:
                    match = re.search(r"store i32 (\d{4,}),.* align 16\n", line)
                    if(match != None and address_could_be_string(int(match[1]), ro_add, txt_add)):
                        offset = address_to_offset(project, int(match[1]))
                        # list.append([i,offset])
                        list.append(stringRef(TYPES.STORE, i, offset))

                    # In the case of an if, we only want string in the rodata section
                    match = re.search(r".* select .* (\d{4,}), .* (\d{4,})", line)
                    if(match != None and address_could_be_string(int(match[1]), ro_add, [0,0]) and address_could_be_string(int(match[2]), ro_add, [0,0])):
                        offset1 = address_to_offset(project, int(match[1]))
                        offset2 = address_to_offset(project, int(match[2]))
                        # list.append([i,offset1, offset2])
                        list.append(stringRef(TYPES.SELECT, i, [offset1, offset2]))
            except:
                print("not usable line")
    return list

def address_could_be_string(address, ro, txt):
    """ Check whether address can potentially be a string by checking if it is in the rodata or text section.

    Keyword arguments:
    address - address to check
    ro - address and length of the rodata section
    txt - address and length of the text section 

    return True if the address is a potential string, False otherwise
    """
            
    if address > ro[0] and address < ro[0]+ro[1]:
        return True
    if address > txt[0] and address < txt[0]+txt[1]:
        return True
    
    return False

def ro_txt_addresses(project):
    """ Find the address and length of the rodata and text section

    Keyword arguments:
    project - Project name

    return list of rodata address and length, list of text address and length
    """
    ro = []
    txt = []
    sections = "s2e/projects/" + project + "/s2e-out/sections"
    with open(sections,"r") as fp:
        for i, line in enumerate(fp):
            matchRo = re.search(r"([\da-fA-F]*) ([\da-fA-F]*).* .rodata", line)
            if matchRo != None:
                ro.append(int(matchRo[1], 16))
                ro.append(int(matchRo[2], 16))

            matchTxt = re.search(r"([\da-fA-F]*) ([\da-fA-F]*).* .text", line)
            if matchTxt != None:
                txt.append(int(matchTxt[1], 16))
                txt.append(int(matchTxt[2], 16))
    return ro, txt

def split_string_at(project, ref_string: stringRef):
    """get and remove string(s) at <offset> in the binary of <project>
       Then replace the reference at line <line_num> in recovered.ll
       by an hardcoded splitted version of the string.
    
    Keyword arguments:
    project -- project name
    offset -- offset of string in binary
    line_num -- line num of the store instruction of the string
    Return: number of added lines 
    """
    if(ref_string.type == TYPES.STORE):
        line_num = ref_string.line_num
        offset = ref_string.offset
        string = get_string_from_binary(project, offset)

        remove_string_from_binary(project, offset, len(string.encode()))
        added_lines = inject_store_splitted_string(project, string, line_num)
        if(added_lines == -1):
            print("Cannot inject in recovered LLVM, stop mutation")
        return added_lines

    elif(ref_string.type == TYPES.SELECT):
        line_num = ref_string.line_num
        print(line_num)
        offsets = ref_string.offset
        strings = []
        for i, offset in enumerate(offsets):
            strings.append(get_string_from_binary(project, offset))
            remove_string_from_binary(project, offset, len(strings[i].encode()))

        added_lines = inject_select_splitted_strings(project, strings, line_num)
        if(added_lines == -1):
            print("Cannot inject in recovered LLVM, stop mutation")
        return added_lines

def get_string_from_binary(project, offset):
    """get string at <offset> in binary of <project> 
    
    Keyword arguments:
    project -- project name
    offset -- offset in binary
    Return: string (decoded from utf-8)
    """

    string = b''
    with open("s2e/projects/" + project + "/binary", 'br') as f:
        string = f.read()[offset:]
    
    return string.split(b'\x00')[0].decode("utf-8") #FIXME We assume the string encoding

def remove_string_from_binary(project, offset, length):
    """ Remove <length> bytes at <offset> in binary of <project>
    
    Keyword arguments:
    project -- project name
    offset -- offset in binary
    length -- length to wipe in bytes
    """
    
    copy = "s2e/projects/" + project + "/s2e-out/binary"
    original = "s2e/projects/" + project + "/s2e-out/original_binary"

    if not os.path.isfile(original):
        shutil.copyfile(copy, original)
    
    content = b''
    with open(copy, 'br') as f:
        content = bytearray(f.read())
    content[offset: offset+length] = b'\x00'*length
    with open(copy, 'bw') as f:
        f.write(content)

def inject_store_splitted_string(project, string, line_num):
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

    var = get_variable_to_override(lines, line_num)
    ind = get_new_index()

    store_line = lines[line_num].strip()
    delete_overriden_var(recovered, line_num)

    with open(recovered, "r") as f:
        lines = f.readlines()

    code = generate_llvm_split_string_code(string, "spi", store_line, ind)

    lines.insert(line_num, f";-------------------------------\n")
    lines.insert(line_num, f"  store i32 %spi{ind}, i32* %{var}\n")
    lines.insert(line_num, code)
    
    with open(recovered, "w") as f:
            f.writelines(lines)
        
    return len(code.splitlines()) + 2 - 1

#TODO Arnold use generate_llvm et handle nbr de ligne
def inject_select_splitted_strings(project, strings, line_num):
    """Replace the reference at line <line_num> in recovered.ll
       by an hardcoded splitted version of the <string>. This
       function if for lines with multiple strings
    
    Keyword arguments:
    project -- project name
    strings -- strings to inject
    line_num -- line number where to inject 
    Return: number of added lines
    """
    recovered = "s2e/projects/" + project + "/s2e-out/recovered.ll"
    with open(recovered, "r") as f:
        lines = f.readlines()

    #var = get_variable_to_override(lines, line_num)
    ind1 = get_new_index()
    ind2 = get_new_index()

    select_line = lines[line_num].strip()
    delete_overriden_var(recovered, line_num)

    with open(recovered, "r") as f:
        lines = f.readlines()

    line_start = select_line.split(",")[0]
    lines.insert(line_num, f";-------------------------------\n")
    lines.insert(line_num, f"  {line_start}, i32 %spi{ind1}, i32 %spi{ind2}\n")
    added_lines = 2

    code = generate_llvm_split_string_code(strings[0], "spi", select_line, ind1)
    added_lines += len(code.splitlines())
    lines.insert(line_num, code)

    code = generate_llvm_split_string_code(strings[1], "spi", select_line, ind2)
    added_lines += len(code.splitlines())
    lines.insert(line_num, code)


    with open(recovered, "w") as f:
        f.writelines(lines)

    
    return added_lines-1

def generate_llvm_split_string_code(string, var, infos, ind):
    length = len(string.encode()) + 1

    code = f""";-------------------------------
; Replace: {infos}
  %sp{ind} = alloca [{length} x i8]
  """
    
    splits = generate_splitted_string(string)
    print(splits)
    split_len = len(splits[0].encode())
    code += f"""
  %sp0.{ind} = bitcast [{length} x i8]* %sp{ind} to [{split_len} x i8]*
  store [{split_len} x i8] c"{splits[0]}", [{split_len} x i8]* %sp0.{ind}
  %next0.{ind} = getelementptr [{length} x i8], [{length} x i8]* %sp{ind}, i32 0, i32 {split_len}
  """
    prev_added_len = split_len
    for i in range(1, len(splits)-1):
        split_len = len(splits[i].encode())
        code += f"""
  %sp{i}.{ind} = bitcast i8* %next{i-1}.{ind} to [{split_len} x i8]*
  store [{split_len} x i8] c"{splits[i]}", [{split_len} x i8]* %sp{i}.{ind}
  %next{i}.{ind} = getelementptr [{length} x i8], [{length} x i8]* %sp{ind}, i32 0, i32 {prev_added_len + split_len}
  """
        prev_added_len += split_len
    i = len(splits)-1
    split_len = len(splits[-1].encode()) + 1
    code += f"""
  %sp{i}.{ind} = bitcast i8* %next{i-1}.{ind} to [{split_len} x i8]*
  store [{split_len} x i8] c"{splits[i]}\\00", [{split_len} x i8]* %sp{i}.{ind}
  
  %{var}{ind} = ptrtoint [{length} x i8]* %sp{ind} to i32
;-------------------------------
"""

    return code
# example code result
    """
  %sp0 = alloca [17 x i8]

  %sp0.0 = bitcast [17 x i8]* %sp0 to [4 x i8]*
  store [4 x i8] c"I am", [4 x i8]* %sp0.0
  %next0.0 = getelementptr [17 x i8], [17 x i8]* %sp0, i32 0, i32 4

  %sp1.0 = bitcast i8* %next0.0 to [4 x i8]*
  store [4 x i8] c" not", [4 x i8]* %sp1.0
  %next1.0 = getelementptr [17 x i8], [17 x i8]* %sp0, i32 0, i32 8

  %sp2.0 = bitcast i8* %next1.0 to [9 x i8]*
  store [9 x i8] c" evil!!!\00", [9 x i8]* %sp2.0
  
  %spi0 = ptrtoint [17 x i8]* %sp0 to i32
  store i32 %spi0, i32* %6
    """

def generate_splitted_string(string):
    cut = 3 #TODO polish changer la valeur
    return [string[i * len(string)//cut:(i + 1) * len(string)//cut] for i in range(cut)]

def get_variable_to_override(lines, line_num):
    """get variable name the string is stored in
    
    Keyword arguments:
    lines -- context of lines from which find the var name
    line_num -- line from which find the var name
    Return: var name (string)
    """
    var = ""
    match = re.search(r"store i32 \d{4,},.* %(.*), align 16\n", lines[line_num])
    if(match == None):
        print(f"Cannot find store instruction in line {line_num+1}")
        return -1
    var = match[1]
    return var

def split_strings(project):
    """Mutation of <project> by removing strings from their data section
       and splitting 
    
    Keyword arguments:
    project -- project name
    """
    start_main, end_main = init_mutation(project)
    refs = find_strings(project, start_main, end_main)
    for ref in refs:
            added_lines = split_string_at(project, ref)
            for i, ref_add in enumerate(refs) : 
                if ref_add != ref:
                    refs[i].line_num += added_lines
                    

def delete_overriden_var(recovered, decl_line):
    """delete original line
    
    Keyword arguments:
    recovered - path to the recovered file
    decl_line - line to remove from file
    Return: 0 if success
    """
    with open(recovered, "r") as f :
        lines = f.readlines()

    del lines[decl_line]
    
    with open(recovered, "w") as f :
        f.writelines(lines)
    
    return 0


if __name__ == "__main__":
    print(find_strings("humeur", 103, 157))