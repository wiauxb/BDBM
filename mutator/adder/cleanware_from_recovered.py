import os
import re
import shutil
import time
import subprocess
from helpers.adder_utils import *


def to_replace(project):
    """Find the declaration of every #
    
    Keyword arguments:
    project -- project name
    Return: a list (#XX , replacement) 
    """
    with open ("s2e/projects/" + project + "/s2e-out/recovered.ll", 'r') as fp:
        lines = fp.readlines()
    
    #liste_exc = []
    liste_hash = []
    fin_len = len(lines)

    begin_hash = 100000000000000000000
    #begin_exc = 1000000000000000000
    """
    
        match  = re.search(r"!(\d{1,}) =(.*)", lines[i])
        if match != None:
            liste_exc.append((match[1], match[2]))  
            if i < begin_exc:
                begin_exc = i 
    """
   
    for i in range(fin_len):        
        match = re.search(r"attributes (#\d{1,}) = {(.*)}", lines[i])
        if match != None:
            liste_hash.append((match[1], match[2]))
            if i < begin_hash:
                begin_hash = i 

    with open ("s2e/projects/" + project + "/s2e-out/recovered.ll", 'w') as fp:
        fp.writelines(lines[:begin_hash])
        #fp.writelines(lines[begin_exc:])

    return liste_hash


def replace_hash(project, liste):
    """replace liste[X][0] by liste[X][1] in the whole project
    
    Keyword arguments:
    project -- project name
    liste -- list of tuple (#XX , replacement) 
    Return:
    """

    with open ("s2e/projects/" + project + "/s2e-out/recovered.ll", 'r') as fp:
        lines = fp.readlines()
    
    for i, line in enumerate((lines)) :
        for decl in liste :
            p_space = decl[0] + " "
            p_back = decl[0] + "\n"
            p_colon = decl[0] + ","
            p_cro = decl[0] + "}"
            if p_space in line or p_back in line or p_colon in line or p_cro in line:
                line = line.replace(decl[0], decl[1])
                lines[i] = line
    
    with open ("s2e/projects/" + project + "/s2e-out/recovered.ll", 'w') as fp:
        fp.writelines(lines)
    return


def auto_llvm(project):
    """Generate the cleanware that will be used for mutation
    
    Keyword arguments:
    project -- project name
    Return:
    """

    with open("s2e/projects/" + project + "/s2e-out/recovered.ll") as f:
        lines = f.readlines()

    project_rdm = project + str(time.strftime("m%d%H%M%S"))

    cleanware = []
    for line in lines:
        if "define" in line and "Func_main" in line:
            line=line.replace("Func_main", project_rdm)

        cleanware.append(line)

    cleanware.append("\n")
    cleanware.append("  tail call fastcc void @" + project_rdm +"(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind\n")
    

    file_name = project_rdm + ".ll" 
    with open(file_name, "w") as f:
        f.writelines(cleanware)

    shutil.move(file_name, "mutator/adder/cleanware/"+file_name)
    return

def gen_all_clean():
    """Loop for every step of the cleanware creation
    
    Keyword arguments:
    Return:
    """
    projects = os.listdir("s2e/projects")
    
    for project in projects :
        hashed = to_replace(project)
        replace_hash(project, hashed)
        auto_llvm(project)


if __name__ == "__main__":
    gen_all_clean()
