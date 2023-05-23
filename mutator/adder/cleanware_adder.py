from .helpers.adder_utils import *
from .helpers.adder_ref import TYPES, adderRef
from ..helpers.file_representation import fileRepresentation as fileRep
from ..helpers.utils import *
import random
import os


def change_exc(cleanware, recovered):
    """Find the number of the last metada on project, 
        and modify the metadata of the cleanware to be following.
   
    
    Keyword arguments:
    cleanware -- The file that will be modified
    project -- project name
    Return: The modified lines
    """
    lines = recovered.lines.copy()
    
    match = None
    while(match == None):
        line = lines.pop()
        match = re.search(r"!(\d{1,}) = .*", line)
    last_exc = int(match[1])+1

    with open("mutator/adder/cleanware/"+cleanware) as f:
        lines = f.readlines()

    for i in range(len(lines)):
        match  = re.findall(r"!(\d{1,})", lines[i])
        if match != None:
            for elem in match:
                num_exc = int(elem)
                new_num_exc = num_exc+last_exc
                lines[i] = lines[i].replace("!"+elem, "!"+str(new_num_exc))
    return lines    

def find_ref(cleanware_lines):
    """return a list of the references declared in cleanware
    
    Keyword arguments:
    cleanware_lines -- The modified lines of the cleanware
    Return: A list of all the references
    """
    clean_code = []

    lines = cleanware_lines

    call = lines.pop()

    clean_code.append(adderRef(type = TYPES.CALL, lines = call))

    i=0
    while i < len(lines) : 
        line = lines[i]
        match1 = re.search(r"(define .* @\w{2,}).*", line)
        match2 = re.search(r"(@.* =) .*", line)
        match3 = re.search(r"(%.{4,} =) .*", line)
        match4 = re.search(r"(declare .* @\w{2,}.*)\(.*", line)
        match5 = re.search(r"(!\d{1,} =) .*", line)

        if match1 != None:
            begin_func = i
            end_func = i
            while lines[end_func].find("}") !=0:
                end_func +=1
            clean_code.append(adderRef(TYPES.FUNCTION, match1[1], lines[begin_func:end_func+1], begin_func, end_func))
            i+=end_func-begin_func
            
        elif match2 != None : 
            clean_code.append(adderRef(TYPES.VARIABLE, match2[1], line, i, 0))
            
        elif match3 != None : 
            clean_code.append(adderRef(TYPES.VARIABLE, match3[1], line, i, 0))
        
        elif match4 != None :
            clean_code.append(adderRef(TYPES.VARIABLE, match4[1], line, i, 0))

        elif match5 != None :
            clean_code.append(adderRef(type = TYPES.META, name=match5[1], lines = line))
            
        i+=1
    return clean_code    


def add_cleanware(begin_main, end_main, recovered, clean_code):
    """Add all the references in a project.
    
    Keyword arguments:
    project -- project name
    clean_code -- A list of all the references
    Return: 
    """
    
    insert_meta = len(recovered.lines)
    clean_code.reverse()
    for obj in clean_code:
        if(obj.type == TYPES.CALL):
            call = obj.lines

        if(obj.type == TYPES.FUNCTION):
            al_def = False
            for line in recovered.lines:
                if obj.name in line:
                    al_def = True
            if al_def == False:
                recovered.insert(end_main.line_num+1, ''.join(obj.lines))
        
        if(obj.type == TYPES.VARIABLE):
            al_def = False
            for line in recovered.lines:
                if obj.name in line:
                    al_def = True
            if al_def == False:
                recovered.insert(5, obj.lines)

        if( obj.type == TYPES.META):
            al_def = False
            for line in recovered.lines:
                if obj.name in line:
                    al_def = True
            if al_def == False:
                recovered.insert(insert_meta, obj.lines)
        
    line_num = random.randrange(begin_main.line_num+1, end_main.line_num-1) #+1 for begin_main to be sure to be in the code, end_main -1 to be before the return

    recovered.insert(line_num, f";-------------------------------\n")
    recovered.insert(line_num, call)
    recovered.insert(line_num, f";----Call to Added Cleanware----\n")
    recovered.insert(line_num, f";-------------------------------\n")

def clean_loop(num_to_add, project):
    """Add num_to_add cleanware into the project
    
    Keyword arguments:
    num_to_add -- number of cleanware to add into the project
    project -- project name
    Return: 
    """

    clean_list = os.listdir("mutator/adder/cleanware")
    num_clean = len(clean_list)

    if(num_to_add > num_clean):
        print("Can't add more than %d different cleanware", num_clean)
        return

    clean_used = [-1]
    clean_num = -1
    (begin_main, end_main), recovered = init_mutation(project)

    for i in range(num_to_add):
        while clean_num in clean_used:
            clean_num = random.randrange(num_clean)
        #clean_num = k
        #clean_used.append(clean_num)
        cleanware = clean_list[clean_num]
        #cleanware = k

        lines = change_exc(cleanware, recovered)
        clean_code = find_ref(lines)
        add_cleanware(begin_main, end_main, recovered, clean_code)

    recovered.write()


if __name__ == "__main__":
    res = []


