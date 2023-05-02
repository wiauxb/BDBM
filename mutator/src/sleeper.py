import os
import shutil
import subprocess
import sys

from utils import *


def add_sleeps(project):

    begin_main, end_main = init_mutation(project)

    begin_main += 1
    end_main += 1
    
    copy = "s2e/projects/" + project + "/s2e-out/recovered.ll"
    original = "s2e/projects/" + project + "/s2e-out/original_recovered.ll"

    #Dossier où vont aller tous les compilés mutés
    mutation_folder = "s2e/projects/" + project + "/s2e-out/mutations"

    # i commence a 1 au cas où c'est une fonction et pas écrire avant la déclaration.
    """for i in range(1, size_main-1):
        #Clone avec le bon nom pour pour pouvoir recompiler
        shutil.copyfile(original, copy)

        with open(copy, "r") as fp:
            lines = fp.readlines()
    
        #ajout déclaration sleep avant le main
        lines.insert(begin_main-2, "declare i32 @sleep(i32) local_unnamed_addr #8\n")
        #appel de sleep
        lines.insert(begin_main+i, "  %a = tail call i32 @sleep(i32 2)\n")

        with open(copy, "w") as fp:
            fp.writelines(lines)

        #just recompile
        command = "just recompile " + project 
        subprocess.check_output(command, shell=True)

        #rename the compiled file
        new_name = "s2e/projects/" + project + "/s2e-out/custom_recovered"+str(i)
        os.rename("s2e/projects/" + project + "/s2e-out/custom_recovered",new_name)
        shutil.move(new_name, mutation_folder+"/custom_recovered"+str(i))"""

    #The following chunk of code finds every usable parameters in the recovered
    #Then, it tries to add a sleep function using the recovered parameter
    #If the mutation is a success, it saves it.
    counter = 0
    list = []
    with open(copy, "r") as fp:
        for i,line in enumerate(fp):
            try:
                if line[2] == "%" and i > begin_main-1 and i < end_main:
                    if(type(int(line[3:5]))):
                        list.append(line[2:5])

            except:
                print("not usable line")
    print(list)

    for i, element in enumerate(list):
        shutil.copyfile(original, copy)

        with open(copy, "r") as fp:
            lines = fp.readlines()

        #ajout déclaration sleep avant le main
        lines.insert(begin_main-2, "declare i32 @sleep(i32) local_unnamed_addr #8\n")
        #appel de sleep
        lines.insert(end_main-2, "  %a = tail call i32 @sleep(i32 " + element+ " )\n")

        with open(copy, "w") as fp:
            fp.writelines(lines)

        #just recompile
        command = "just recompile " + project 
        try:
            subprocess.check_output(command, shell=True)
            #rename the compiled file
            new_name = "s2e/projects/" + project + "/s2e-out/custom_recovered"+str(i)
            os.rename("s2e/projects/" + project + "/s2e-out/custom_recovered",new_name)
            shutil.move(new_name, mutation_folder+"/custom_recovered"+str(i))
        except subprocess.CalledProcessError as e:
            print("Recovered failed")

if __name__ == "__main__":
    
    project  = sys.argv[1]
    add_sleeps(project)