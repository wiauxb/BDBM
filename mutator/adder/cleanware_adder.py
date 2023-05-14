from helpers.adder_utils import *
from helpers.adder_ref import TYPES, adderRef
import random
import os

def add_llvm_cleanware(num_to_add, project):
    """ Add the specified number of cleanware in a project

    Keyword arguments:
    begin_main - Beginning of the main function recovered.ll
    end_main - End of the main function recovered.ll
    num_to_add - Amount of cleanware to add in project
    project - Project name

    return number of lines added in project/recovered.ll
    """
    begin_main, end_main = find_main(project)

    clean = os.listdir("mutator/adder/cleanware")
    num_clean = len(clean)

    if(num_to_add > num_clean):
        print("Can't add more than %d different cleanware", num_clean)

    recovered = "s2e/projects/" + project + "/s2e-out/recovered.ll"

    with open(recovered, "r") as f:
        lines = f.readlines()
    
    line_num = random.randrange(begin_main+1, end_main)
    clean_num = random.randrange(num_clean+1) #Nombre de cleanware dans le dossier

    cleanware = "mutator/adder/cleanware/"+"is_primem12171026.ll" #clean[clean_num]
    with open(cleanware, "r") as f:
        clean_lines = f.readlines()

    function_call = clean_lines.pop()
    lines.insert(line_num, function_call)
    clean_lines = ''.join(clean_lines)
    lines.insert(end_main+2, clean_lines)
    added_lines = len(clean_lines)+1

    with open(recovered, "w") as f:
        f.writelines(lines)
    return added_lines

def find_functions(cleanware):
    """
    return a list of the function declared in cleanware
    """
    clean_code = []

    with open("mutator/adder/cleanware/"+cleanware) as f:
        lines = f.readlines()

    call = lines.pop()
    clean_code.append(adderRef(type = TYPES.CALL, lines = call))

    for i, line in enumerate(lines) : 
        match =  re.search(r"(define internal .*)", line)
        if match != None:
            begin_func = i
            end_func = i
            while lines[end_func].find("}") !=0:
                end_func +=1
            clean_code.append(adderRef(TYPES.FUNCTION, lines[begin_func:end_func+1], begin_func, end_func))
        
        match =  re.search(r"(@.* = .*)", line)
        if match != None : 
            clean_code.append(adderRef(TYPES.VARIABLE, line, i, 0))

    return clean_code    


def add_cleanware(project, clean_code):
    with open("s2e/projects/" + project + "/s2e-out/recovered.ll", 'r') as f:
        lines = f.readlines()
    
    begin_main, end_main = find_main(project)
    line_num = random.randrange(begin_main+1, end_main)

    for obj in clean_code:
        if(obj.type == TYPES.CALL):
            call = obj.lines

        if(obj.type == TYPES.FUNCTION):
            for line in lines:
                al_def = False
                if obj.lines == line:
                    al_def = True
            if not al_def:
                lines.insert(end_main+1, ''.join(obj.lines))
        
        if(obj.type == TYPES.VARIABLE):
            for line in lines:
                al_def = False
                if obj.lines == line:
                    al_def = True
            if not al_def:
                lines.insert(end_main+1, obj.lines)

    lines.insert(line_num, call)

    with open("s2e/projects/" + project + "/s2e-out/recovered.ll", 'w') as f:
        f.writelines(lines)



if __name__ == "__main__":
    clean_code = find_functions("absolute_valuem14143814.ll")
    add_cleanware("hello", clean_code)
