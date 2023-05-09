import os
import shutil
import re
import subprocess
from .ref import ref

current_index = -1

def get_new_index():
    global current_index
    current_index += 1
    return current_index

def init_mutation(project):
    """ Execute all the initialization functions before mutation

    Keyword arguments:
    project - Project name
    Return: line number of the beginning and the end of @Func_main
    """

    clone_recovered(project)
    make_mutation_folder(project)
    return find_main(project)

def clone_recovered(project):
    """clone recovered.ll into original_recovered.ll
    
    Keyword arguments:
    project - Project name
    Return: 0 if success
    """
    

    if not os.path.isfile("s2e/projects/"+str(project)+ "/s2e-out/recovered.ll"):
        print("Incorrect project, or project hasn't been recovered")
        quit()

    copy = "s2e/projects/" + project + "/s2e-out/recovered.ll"
    original = "s2e/projects/" + project + "/s2e-out/original_recovered.ll"

    if not os.path.isfile(original):
        shutil.copyfile(copy, original)
    return 0

def address_to_offset(project, address):

    table = get_section_table(project)
    i = 0
    while table[i][1] < address:
        #TODO condition if adress not in table
        i+=1
    print(f"Found address {address} in section {table[i-1][0]}")
    return table[i-1][2] + (address - table[i-1][1])

def get_section_table(project):
    
    binary_path = "s2e/projects/" + project + "/s2e-out/binary"

    readelf = b''

    try:
        readelf = subprocess.check_output(["readelf", "-S", binary_path])
    except subprocess.CalledProcessError:
        print(
            f"failed to extract sections infos from binary."
        )

    table = []

    for line in readelf.decode("utf-8").splitlines():
        match = re.search(r"\[\s?\d+\] (.*?)\s+[A-Z_]*\s+([\da-f]*)\s+([\da-f]*)", line)
        if match != None:
            table.append((match[1], int(match[2], base=16), int(match[3], base=16)))

    return table

def make_mutation_folder(project):
    """Create folder to store mutations
    
    Keyword arguments:
    project - Project name
    Return: 0 if success
    """
    
    #Dossier où vont aller tous les compilés mutés
    mutation_folder = "s2e/projects/" + project + "/s2e-out/mutations"
    if not os.path.isdir(mutation_folder):
        os.mkdir(mutation_folder)
    return 0

def find_main(project):
    """find the beginning and the end of @Func_main of original_recovered.ll 
    
    Keyword arguments:
    project - Project name
    Return: line number of the beginning and the end of @Func_main
    """
    
    
    begin_main = 0
    end_main = 0
    size_main = 0
    #trop bizarre, la fonction lines.index(line) change parfois le numéro de la ligne (genre 127,128,14,15,4,132)
    line_num=0

    #trouve les lignes où il faudra insérer le call API
    #Insert an api call and insert it once every single line.
    with open("s2e/projects/" + project + "/s2e-out/original_recovered.ll", 'r') as fp:
        lines = fp.readlines()
        for line in lines : 
            line_num +=1
            #Cherche le début du main
            if re.search(r"define .* @Func_main", line) != None:
                print("found main")
                begin_main = line_num
                print("line number = ", begin_main)
                print("line = ", line)

            #Cherche la fin du main
            if(line.find("}")==0 and line_num>begin_main and begin_main>0):
                print("found end of main")
                end_main = line_num
                print("line number = ", end_main)
                size_main = end_main-begin_main
                print("length of main = ", size_main)
                break

    return begin_main, end_main


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

def delete_line(recovered, line_ref: ref):
    """delete original line
    
    Keyword arguments:
    recovered - path to the recovered file
    line_ref - stringRef to the line to remove from file
    Return: 0 if success
    """
    with open(recovered, "r") as f :
        lines = f.readlines()

    if lines[line_ref.line_num] != line_ref.line:
        raise ValueError(f"Line {line_ref.line_num} does not correspond to '{line_ref.line}'")
    
    del lines[line_ref.line_num]
    
    with open(recovered, "w") as f :
        f.writelines(lines)
    
    return 0
    