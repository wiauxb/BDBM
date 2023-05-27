import os
import re
import shutil
import time
import subprocess
from .helpers.string_utils import *
from .helpers.string_ref import TYPES, stringRef
from ..helpers.file_representation import fileRepresentation as fileRep
from ..helpers.utils import *



def to_replace(recovered : fileRep):
    """Find the declaration of every #
    
    Keyword arguments:
    project -- project name
    Return: a list (#XX , replacement) 
    """
    
    liste_hash = []

    begin_hash = 100000000000000000000
    end_hash = 0
    list_del = []
   
    for i in range(len(recovered.lines)):        
        match = re.search(r"attributes (#\d{1,}) = {(.*)}", recovered.lines[i])
        if match != None:
            list_del.append(i)
            liste_hash.append((match[1], match[2]))
            if i < begin_hash:
                begin_hash = i 
            if i > end_hash:
                end_hash = i
    end_hash +=4

    for i, dele in enumerate(list_del):
        recovered.delete(dele-i)

    return liste_hash

def remove_after_segs(recovered : fileRep):
    """Change the two lines after using @segs that pose problem later when adding cleanware"""
    
    for i in range(len(recovered.lines)-1):
        match1 = re.search(r"  %.* = load i1, .* @segs.*", recovered.lines[i-1])
        match2 = re.search(r"  (%\d{1,}) = select .*", recovered.lines[i])
        match3 = re.search(r"  %\d{1,} = load .*", recovered.lines[i+1])

        if match1 != None and match2 != None and match3 != None :
            recovered.lines[i] = f"""  {match2[1]} = inttoptr i32 %arg_esp to i32*\n"""



def replace_hash(recovered : fileRep, liste):
    """replace liste[X][0] by liste[X][1] in the whole project
    
    Keyword arguments:
    project -- project name
    liste -- list of tuple (#XX , replacement) 
    Return:
    """

    
    for i, line in enumerate((recovered.lines)) :
        for decl in liste :
            p_space = decl[0] + " "
            p_back = decl[0] + "\n"
            p_colon = decl[0] + ","
            p_cro = decl[0] + "}"
            if p_space in line or p_back in line or p_colon in line or p_cro in line:
                line = line.replace(decl[0], decl[1])
                recovered.lines[i] = line

    return

def change_stack(recovered : fileRep):
    """Change the name of the stack and its size, also delete useless main function"""
    index = str(get_new_index(recovered)) 
    for i, line in enumerate(recovered.lines):
        if re.search(r"@stack = .*", line) != None:
            recovered.lines[i] = f"""@stack{index} = internal global [8092 x i32] zeroinitializer, align 16\n"""
    
        if re.search(r"define .* @main.*", line) != None:
            while recovered.lines[i].find("}")!=0 :
                recovered.delete(i)
            recovered.delete(i)
                

    return index


def auto_llvm(recovered : fileRep, project, index):
    """Generate the cleanware that will be used for mutation
    
    Keyword arguments:
    project -- project name
    Return:
    """


    project_rdm = project + str(get_new_index(recovered))

    cleanware = []
    for line in recovered.lines:
        if "define" in line and "Func_main" in line:
            line=line.replace("Func_main", project_rdm)

        cleanware.append(line)

    cleanware.append("\n")
    cleanware.append(f"""  tail call fastcc void @{project_rdm} (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack{index}, i32 0, i32 8092) to i32)) nounwind\n""")
    

    file_name = project_rdm + ".ll" 
    with open(file_name, "w") as f:
        f.writelines(cleanware)

    shutil.move(file_name, "mutator/adder/cleanware/"+file_name)
    return



def replace_strings(project, begin_main, end_main, recovered):
    decl_block = find_constant_declaration_block(recovered)

    refs = find_strings(project, recovered, begin_main, end_main)
    consts = []
    for i, ref in enumerate(reversed(refs)):
        if(ref.type == TYPES.ONE_ADDR):
            rdm = str(get_new_index(recovered))
            string = get_string_from_binary(project, ref.offset)

            #Check if the string only has "normal" characters
            good_string = True
            for c in string : 
                c_hex = hex(ord(c))
                if int(c_hex,16) != 0x0A and int(c_hex,16) <0x20:
                    good_string = False
                
            if good_string:

                length = len(string.encode())+1
                string = string.replace("\n", "\\0a")
                string = string.replace("\"", "\\22")
                string = string + "\\00"
                consts.append(f"""@str.{rdm} = constant [{length} x i8] c\"{string}\"\n""")

                repl = f"""  %spi.bis.{rdm} = ptrtoint[{length} x i8]* @str.{rdm} to i32\n"""
                repl += ref.get_mutated_line(f"""%spi.bis.{rdm}""")
                
                recovered.lines[ref.line_num] = repl

        elif(ref.type == TYPES.TWO_ADDR):
            repl = """"""
            ind_list = []
            good_string = True

            for i in range(len(ref.offset)):

                rdm = str(get_new_index(recovered))
                ind_list.append(rdm)
                string = get_string_from_binary(project, ref.offset[i])

                #Check if the string only has "normal" characters
                for c in string : 
                    c_hex = hex(ord(c))
                    if int(c_hex,16) != 0x0A and int(c_hex,16) <0x20:
                        good_string = False
                

                length = len(string.encode())+1
                string = string.replace("\n", "\\0a")
                string = string + "\\00"
                consts.append(f"""@str.{rdm} = constant [{length} x i8] c\"{string}\"\n""")
                repl += f"""  %spi.bis.{rdm} = ptrtoint[{length} x i8]* @str.{rdm} to i32\n"""

            if good_string:
                repl += ref.get_mutated_line(f"""%spi.bis.{ind_list[0]}""", f"""%spi.bis.{ind_list[1]}""")
                
                recovered.lines[ref.line_num] = repl

    for const in consts :
        recovered.insert(decl_block.line_num, const)


def change_glob_var(recovered : fileRep):
    """Changes the name of global variables, adds an index to them"""

    for i, line in enumerate(recovered.lines):
        match = re.search(r"^(@.*) = \w{1,} .*", recovered.lines[i])
        if (match != None) and (match[1].find("@stack")!=0):
            new_global_var = match[1] + str(get_new_index(recovered))
            for j in range(i, len(recovered.lines)):
                if recovered.lines[j].find(match[1]) >= 0:
                    recovered.lines[j] = recovered.lines[j].replace(match[1], new_global_var)
        

def gen_all_clean():
    """Loop for every step of the cleanware creation
    
    Keyword arguments:
    Return:
    """

    projects = os.listdir("s2e/projects")

    for project in projects:

        (begin_main, end_main), recovered = init_mutation(project)

        replace_strings(project, begin_main, end_main, recovered)

        hashed = to_replace(recovered)
        replace_hash(recovered, hashed)
        
        indexStack = change_stack(recovered)
        remove_after_segs(recovered)

        auto_llvm(recovered, project, indexStack)
        recovered.write()
        
        lift = False
        while lift == False: 
            try:
                command = "just lift-trace " + project
                subprocess.check_output(command, shell=True, timeout = 30)
                lift = True
            except:
                liste = 1


if __name__ == "__main__":
    const, repl = replace_strings("hello")
    print(const)
    print(repl)
