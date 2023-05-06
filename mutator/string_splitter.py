from .utils import *
from .string_ref import TYPES, stringRef
import random
from string import ascii_letters, digits

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
    with open(copy, "r") as fp:
        for i,line in enumerate(fp):
            try:
                if i > begin_main and i < end_main:
                    match = re.findall(r"i32 (\d{4,})", line)
                    if match and all_addresses_could_be_string(project, match):
                        if len(match) == 1:
                            offset = address_to_offset(project, int(match[0]))
                            list.append(stringRef(TYPES.ONE, i, line, offset))
                        elif len(match) == 2:
                            offset1 = address_to_offset(project, int(match[0]))
                            offset2 = address_to_offset(project, int(match[1]))
                            list.append(stringRef(TYPES.TWO, i, line, [offset1, offset2]))
                        else:
                            raise ValueError(f"Unhandled number of addresses in one instruction:\n{len(match)} addresses in\n{line}")
            except Exception as e:
                print(f"not usable line: {e}")
    return list

def all_addresses_could_be_string(project, addresses: list):
    for address in addresses:
        if not address_could_be_string(project, int(address)):
            return False
    return True

def address_could_be_string(project, address):
    """ Check whether address can potentially be a string by checking if it is in the rodata or text section.

    Keyword arguments:
    address - address to check
    ro - address and length of the rodata section
    txt - address and length of the text section 

    return True if the address is a potential string, False otherwise
    """
    ro, txt = ro_txt_addresses(project)
    offset = address_to_offset(project, address)
            
    if not (address > ro[0] and address < ro[0]+ro[1]) and not (address > txt[0] and address < txt[0]+txt[1]):
        return False
    
    with open("s2e/projects/" + project + "/binary", 'br') as f:
        byte = f.read()[offset:]
    supposed_string = byte.split(b'\x00')[0]
    if len(supposed_string) == 0:
        return False
    try:
        supposed_string.decode()
    except Exception as e:
        # print(e)
        return False
    # if address > txt[0] and address < txt[0]+txt[1]:
    #     return True
    
    return True

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

def split_string_at(project, ref: stringRef):
    """get and remove string(s) at <offset> in the binary of <project>
       Then replace the reference at line <line_num> in recovered.ll
       by an hardcoded splitted version of the string.
    
    Keyword arguments:
    project -- project name
    offset -- offset of string in binary
    line_num -- line num of the store instruction of the string
    Return: number of added lines 
    """
    if(ref.type == TYPES.ONE):
        offset = ref.offset
        string = get_string_from_binary(project, offset)

        remove_string_from_binary(project, offset, len(string.encode()))
        added_lines = inject_splitted_string(project, string, ref)
        if(added_lines == -1):
            print("Cannot inject in recovered LLVM, stop mutation")
        return added_lines

    elif(ref.type == TYPES.TWO):
        offsets = ref.offset
        strings = []
        for i, offset in enumerate(offsets):
            strings.append(get_string_from_binary(project, offset))
            remove_string_from_binary(project, offset, len(strings[i].encode()))

        added_lines = inject_splitted_string(project, strings, ref)
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

def inject_splitted_string(project, string, ref: stringRef):
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

    line_num = ref.line_num

    delete_overriden_var(recovered, line_num)

    with open(recovered, "r") as f:
        lines = f.readlines()

    added_lines = 0

    if ref.type == TYPES.ONE:
        ind = get_new_index()

        code = generate_llvm_xor_string_code(string, "spi", ref.line.strip(), ind)

        lines.insert(line_num, f";-------------------------------\n")
        lines.insert(line_num, ref.get_mutated_line(f"%spi{ind}"))
        lines.insert(line_num, code)
        added_lines += 2 + len(code.splitlines())

    elif ref.type == TYPES.TWO:
        ind1 = get_new_index()
        ind2 = get_new_index()
        lines.insert(line_num, f";-------------------------------\n")
        lines.insert(line_num, ref.get_mutated_line(f"%spi{ind1}", f"%spi{ind2}"))
        added_lines += 2

        code = generate_llvm_split_string_code(string[0], "spi", ref.line.strip(), ind1)
        added_lines += len(code.splitlines())
        lines.insert(line_num, code)

        code = generate_llvm_split_string_code(string[1], "spi", ref.line.strip(), ind2)
        added_lines += len(code.splitlines())
        lines.insert(line_num, code)
    else:
        raise ValueError(f"Unknown Type: {ref.type}")
    
    with open(recovered, "w") as f:
            f.writelines(lines)
        
    return added_lines - 1

def generate_llvm_xor_string_code(string, var, infos, ind):
    length = len(string.encode()) +1
    xor_string = ""
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
;-------------------------------\n""" 
    return code

def generate_llvm_split_string_code(string, var, infos, ind):
    length = len(string.encode()) + 1

    code = f""";-------------------------------git
; Replace: {infos}
  %sp{ind} = alloca [{length} x i8]

  """
    
    splits = generate_splitted_string(string)
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
    pass
    # for offset in range(200):
    #     if address_could_be_string("tmp", 134520840+offset):
    #         off = address_to_offset("tmp", 134520840+offset)
    #         print(f'{134520840+offset:x}', get_string_from_binary("tmp", off))