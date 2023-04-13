import os
import shutil
import subprocess

print("Enter project name : ")
project  = input()

if not os.path.isfile("s2e/projects/"+str(project)+ "/s2e-out/recovered.ll"):
    print("Incorrect project, or project hasn't been recovered")
    quit()

copy = "s2e/projects/" + project + "/s2e-out/recovered.ll"
original = "s2e/projects/" + project + "/s2e-out/original_recovered.ll"

if not os.path.isfile(original):
    os.rename(copy, original)

#Dossier où vont aller tous les compilés mutés
mutation_folder = "s2e/projects/" + project + "/s2e-out/mutations"
if not os.path.isdir(mutation_folder):
    os.mkdir(mutation_folder)

begin_main = 0
end_main = 0
size_main = 0
#trop bizarre, la fonction lines.index(line) change parfois le numéro de la ligne (genre 127,128,14,15,4,132)
line_num=0

#trouve les lignes où il faudra insérer le call API
with open("s2e/projects/" + project + "/s2e-out/original_recovered.ll", 'r') as fp:
    lines = fp.readlines()
    for line in lines : 
        line_num +=1
        #Cherche le début du main
        if line.find("define internal fastcc void @Func_main(i32 %arg_esp)") != -1:
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

#a cause de l'ajout de la déclaration de sleep
begin_main+=1
end_main+=1

for i in range(1, size_main):
    #Clone avec le bon nom pour pour pouvoir recompiler
    shutil.copyfile(original, copy)

    with open(copy, "r") as fp:
        lines = fp.readlines()

    #ajout déclaration sleep avant le main
    lines.insert(begin_main-2, "declare i32 @sleep(i32) local_unnamed_addr #8\n")
    lines.insert(begin_main+i, "  %a = tail call i32 @sleep(i32 2)\n")

    with open(copy, "w") as fp:
        fp.writelines(lines)

    #just recompile
    command = "just recompile " + project 
    subprocess.check_output(command, shell=True)

    #rename the compiled file
    new_name = "s2e/projects/" + project + "/s2e-out/custom_recovered"+str(i)
    os.rename("s2e/projects/" + project + "/s2e-out/custom_recovered",new_name)
    shutil.move(new_name, mutation_folder+"/custom_recovered"+str(i))
