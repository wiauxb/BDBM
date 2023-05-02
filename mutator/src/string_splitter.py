from utils import *

def find_strings(project, begin_main, end_main):
    """find string adresses in the binary
    
    Keyword arguments:
    project - Project Name
    begin_main - Beginning of the main function recovered.ll
    end_main - End of the main function recovered.ll
    Return: list of integer (= adresses)
    """
    
    copy = "s2e/projects/" + project + "/s2e-out/recovered.ll"
    original = "s2e/projects/" + project + "/s2e-out/original_recovered.ll"
    list = []
    with open(copy, "r") as fp:
        for i,line in enumerate(fp):
            try:
                if i > begin_main and i < end_main:
                    match = re.search(r"store i32 (\d{4,}),.* align 16\n", line)
                    if(match != None and address_could_be_string(project, int(match[1]))):
                        list.append(int(match[1]))
                    
            except:
                print("not usable line")
    return list

def address_could_be_string(project, address):
    """
    Va chercher les adresses de ro et de text (adresse et taille)
    Renvoie true si l'addresse reçue est dans un des deux 
    fais une regex, regexr.com
    """
    ro = []
    text = []
    sections = "s2e/projects/" + project + "/s2e-out/sections"
    with open(sections,"r") as fp:
        for i, line in enumerate(fp):
            matchRo = re.search(r"([\da-fA-F]*) ([\da-fA-F]*).* .rodata", line)
            if(matchRo != None):
                ro.append(matchRo[1])
                ro.append(matchRo[2])
                
    return True



def split_string_at(project, address):
    """
    lire le string
    clean le binaire d'origine
    introduit les instructions avec le string split
    """
    string = get_string_from_binary(project, address)
    if(remove_string_from_binary(project, address)):
        print("Cannot modify original binary, stop mutation")
    if(inject_splitted_string(project, string, "%TODO_CHANGEME")):
        print("Cannot inject in recovered LLVM, stop mutation")
    return 0
        

def get_string_from_binary(project, address):
    return ""

def remove_string_from_binary(project, adress):
    return 0

def inject_splitted_string(project, string, variable_name):
    return 0


def split_strings(project):
    start_main, end_main = init_mutation(project)
    
    for address in find_strings(project, start_main, end_main):
        split_string_at(project, address)