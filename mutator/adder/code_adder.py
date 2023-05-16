from ..helpers.utils import *
import random

def find_variables(begin_main, end_main, project):
    """ Find the variables of a recovered binary

    Keyword arguments:
    begin_main - Beginning of the main function recovered.ll
    end_main - End of the main function recovered.ll
    project - Project name

    return strings and their line, potential integers, their type and their line.
    """

    recovered = "s2e/projects/" + project + "/s2e-out/recovered.ll"
    strings = []
    potential_integers = []
    with open(recovered, "r") as fp:
        for i,line in enumerate(fp):
            try:
                if i > begin_main and i < end_main:
                    match =  re.search(r"store i32 (\d{1,}),.* (%.*), .*\n", line)
                    if(match != None and address_could_be_string(project, int(match[1]))):
                        strings.append([i, match[2]])
                    match = re.search(r"(\S+[^\*]) (%[\w\.\d]+)(?=[ ,\n])", line)
                    if(match != None):
                        potential_integers.append([i, match[1], match[2]])
            except:
                print("not usable line")

    return strings, potential_integers

#TODO Arnold : dans sys_call_llvm.txt, changer les # par leur valeur. générer plus de calls. (voir tous les projets)
def insert_sys_calls(num_calls, project):
    """ insert num_calls calls into the project, and use previsously used variables.

    Keyword arguments:
    num_calls -- number of calls to add into the project
    project - Project name

    return added_lines -- Number of lines added into the project
    """

    list_calls = []
    extra_string_count = 0
    added_lines =0
    for i in range(num_calls):
        begin_main, end_main = find_main(project)
        recovered = "s2e/projects/" + project + "/s2e-out/recovered.ll"

        with open(recovered, "r") as f:
            lines = f.readlines()

        with open("mutator/adder/sys_call_llvm.txt", "r") as f:
            sys_lines = f.readlines()
            num_lines = len(sys_lines)
        call_to_insert = random.randrange(num_lines/3)

        while call_to_insert in list_calls: 
            call_to_insert = random.randrange(num_lines/3)
        list_calls.append(call_to_insert)

        arguments = sys_lines[call_to_insert*3+2].strip().split(",")

        def_call = re.search(r"(declare .* @\w{2,}.*)\(.*", sys_lines[call_to_insert*3])
        if(def_call == None):
            print("API definition not correctly defined in sys_call_llvm.txt")
            return
        al_def = False
        for line in lines:
            if def_call[1] in line :
                al_def =True
        
        if(al_def ==False):
            lines.insert(begin_main-2, sys_lines[call_to_insert*3])
            added_lines +=1

        if(arguments[0] != "void"):
            line_main = "  %a" + str(time.strftime("m%d%H%M%S"))+str(i)+ " " 
        else :
            line_main = "  "
        line_main += sys_lines[(call_to_insert*3)+1][:-1] + "("
        line_main_add = ""
        line_num = 0

        strings, potential_integers = find_variables(begin_main, end_main, project)
        for arg in arguments[1:]:
            line_load = None
            if arg =='int':
                var = random.randrange(len(potential_integers))
                var_line = potential_integers[var][0] 
                int_add = potential_integers[var][2]

                line_main_add += "i32 " + int_add + ", "
            else : 
                var = random.randrange(len(strings))
                var_line = strings[var][0]
                string_add = strings[var][1]
                extra_string = "%es" +str(time.strftime("m%d%H%M%S")) +str(extra_string_count)
                line_load = "  " + extra_string + " = load i32, i32* " + string_add + ", align 16\n"
                extra_string_count += 1
                line_main_add += "i32 " + extra_string + ", "
                print(line_load)
            
            if var_line > line_num:
                print(line_main + line_main_add[:-2] + ")\n")
                line_num = random.randrange(var_line+1, end_main-1)+1
                if line_load != None:
                    lines.insert(line_num-1, line_load)
                    added_lines +=1
        
        line_main += line_main_add[:-2] + ")\n"
        lines.insert(line_num, line_main)
        added_lines +=1
        
        with open(recovered, "w") as f:
            f.writelines(lines)
    
    return added_lines 

if __name__ == "__main__":
    begin_main = 38,
    end_main = 38
    clone_recovered("hello")
    pass