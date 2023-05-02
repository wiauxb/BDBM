from utils import *
import numpy as np

def find_strings(project, begin_main, end_main):
    """find string adresses in the binary
    
    Keyword arguments:
    project - Project Name
    begin_main - Beginning of the main function recovered.ll
    end_main - End of the main function recovered.ll
    Return: list of tuples (ligne, integer (= adresses))
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
                        list.append((i,int(match[1])))
                    
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

def split_string_at(project, address, line_num):
    """
    lire le string
    clean le binaire d'origine
    introduit les instructions avec le string split
    """
    string = get_string_from_binary(project, address)
    if(remove_string_from_binary(project, address, len(string))):
        print("Cannot modify original binary, stop mutation")
    if(inject_splitted_string(project, string, line_num)):
        print("Cannot inject in recovered LLVM, stop mutation")
    return 0
        

def get_string_from_binary(project, address):
    """sumary_line
    
    Keyword arguments:
    argument -- description
    Return: return_description
    """
    string = b''
    with open("s2e/projects/" + project + "/binary", 'br') as f:
        string = f.read()[address:]
    return string.split(b'\x00')[0]

def remove_string_from_binary(project, address, length):
    """sumary_line
    
    Keyword arguments:
    argument -- description
    Return: return_description
    """
    content = b''
    with open("s2e/projects/" + project + "/binary", 'br') as f:
        content = bytearray(f.read())
    content[address: address+length] = b'\x00'*length
    with open("s2e/projects/" + project + "/binary", 'bw') as f:
        f.write(content)
    return 0

def inject_splitted_string(project, string, line_num):
    """sumary_line
    
    Keyword arguments:
    argument -- description
    Return: number of added lines
    """
    recovered = "s2e/projects/" + project + "/s2e-out/recovered.ll"
    with open(recovered, "r") as f:
        lines = f.readlines()
    # get_call_linked_by_var()
    var, decl_line = get_variable_to_override(project, lines, line_num)
    ind = get_new_index()

    for line in decl_line:
        delete_overriden_var(recovered, line)

    with open(recovered, "r") as f:
        lines = f.readlines()
    
    #Pas sur de l'ordre
    lines.insert(decl_line, f"  %{var} = bitcast [{len(string)+1} x i8]* %sp{ind} to i8*\n")
    lines.insert(decl_line, f"  store [{len(string)+1} x i8] c\"{string}\\00\", [{len(string)+1} x i8]* %sp{ind}\n")
    lines.insert(decl_line, f"  %sp{ind} = alloca [{len(string)+1} x i8]\n")

    with open(recovered, "w") as f:
            f.writelines(lines)
    
    f"""
    %sp{ind} = alloca [{len(string)+1} x i8]
    store [{len(string)+1} x i8] c"{string}\00", [{len(string)+1} x i8]* %sp{ind}
    %{var} = bitcast [{len(string)+1} x i8]* %sp{ind} to i8*
    """
    
    return 1

def get_variable_to_override(project, lines, line_num):
    """sumary_line
    
    Keyword arguments:
    argument -- description
    Return: return_description
    """
    var = ""
    match = re.search(r"store i32 \d{4,},.* %(.*), align 16\n", lines[line_num])
    if(match == None):
        print(f"Cannot find store instruction in line {line_num+1}")
        return -1
    var = match[1]
    begin, end = find_main(project)
    n = find_indices(lines, "%"+var, lambda name, line, line_num: line_num > begin and line_num <= end and name in line)
    if len(n) == 0:
        print(f"Cannot find declaration of %{var}")
        return var, -1
    return var, n[1:]

def get_call_linked_by_var():
    pass

# Finding Indices of Items Matching a Condition
def find_indices(search_list, search_item, condition = lambda name, line, _: name in line):
    return [index for (index, item) in enumerate(search_list) if condition(search_item,item, index)]

def split_strings(project):
    """sumary_line
    
    Keyword arguments:
    argument -- description
    Return: return_description
    """
    start_main, end_main = init_mutation(project)
    
    for line_num, address in find_strings(project, start_main, end_main):
        split_string_at(project, address, line_num)

def delete_overriden_var(recovered, decl_line):
    """sumary_line
    
    Keyword arguments:
    argument -- description
    Return: return_description
    """
    with open(recovered, "r") as f :
        lines = f.readlines()

    del lines[decl_line]
    
    with open(recovered, "w") as f :
        f.writelines(lines)
    
    return 0

if __name__ == "__main__":
    init_mutation("string")
    with open("s2e/projects/string/s2e-out/recovered.ll", "r") as f:
        lines = f.readlines()
    # print(ro_txt_addresses("string"))
    # print(find_strings("string", 37, 64))
    inject_splitted_string("string", "I am a splitted evil!!!", 56)