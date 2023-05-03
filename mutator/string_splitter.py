from .utils import *

def find_strings(project, begin_main, end_main):
    """find string offsets in the binary
    
    Keyword arguments:
    project - Project Name
    begin_main - Beginning of the main function recovered.ll
    end_main - End of the main function recovered.ll
    Return: list of tuples (integer (= line), integer (= offsets))
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
                        list.append((i,offset))
                    
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

def split_string_at(project, offset, line_num):
    """get and remove string at <offset> in the binary of <project>
       Then replace the reference at line <line_num> in recovered.ll
       by an hardcoded splitted version of the string.
    
    Keyword arguments:
    project -- project name
    offset -- offset of string in binary
    line_num -- line num of the store instruction of the string
    Return: number of added lines
    """

    string = get_string_from_binary(project, offset)

    remove_string_from_binary(project, offset, len(string.encode()))

    if(inject_splitted_string(project, string, line_num) == -1):
        print("Cannot inject in recovered LLVM, stop mutation")
    return 0   

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

def inject_splitted_string(project, string, line_num):
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

    length = len(string.encode()) + 1
    
    lines.insert(line_num, f";-------------------------------\n")
    lines.insert(line_num, f"  store i32 %spi{ind}, i32* %{var}\n")
    lines.insert(line_num, f"  %spi{ind} = ptrtoint [{length} x i8]* %sp{ind} to i32\n")
    lines.insert(line_num, f"  store [{length} x i8] c\"{string}\\00\", [{length} x i8]* %sp{ind}\n")
    lines.insert(line_num, f"  %sp{ind} = alloca [{length} x i8]\n")
    lines.insert(line_num, f"; Replace: {store_line}\n")
    lines.insert(line_num, f";-------------------------------\n")

    with open(recovered, "w") as f:
            f.writelines(lines)
    
    #in th right order
    f"""
    %sp{ind} = alloca [{len(string)+1} x i8]
    store [{len(string)+1} x i8] c"{string}\\00", [{len(string)+1} x i8]* %sp{ind}
    %spi{ind} = ptrtoint [{len(string)+1} x i8]* %sp{ind} to i32
    store i32 %spi{ind}, i32* %{var}
    """
    
    return 6

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
    for line_num, address in find_strings(project, start_main, end_main):
        split_string_at(project, address, line_num)

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
