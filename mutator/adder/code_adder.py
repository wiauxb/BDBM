from ..helpers.utils import *
import random
import copy

def find_variables(begin_main, end_main, recovered, project):
    """ Find the variables of a recovered binary

    Keyword arguments:
    begin_main - Beginning of the main function recovered.ll
    end_main - End of the main function recovered.ll
    project - Project name

    return strings and their line, potential integers, their type and their line.
    """

    strings = []
    potential_integers = []
    for i,line in enumerate(recovered.lines):
        try:
            if i > begin_main.line_num and i < end_main.line_num:
                match =  re.search(r"store i32 (\d{1,}),.* (%.*), .*\n", line)
                if(match != None and address_could_be_string(project, int(match[1]))):
                    strings.append([i, match[2]])
                match = re.search(r"(\S+[^\*]) (%[\w\.\d]+)(?=[ ,\n])", line)
                if(match != None and (match[1] == "i32" or match[1] == "noundef")):
                    potential_integers.append([i, match[1], match[2]])
        except:
            print("not usable line")
    return strings, potential_integers

def insert_sys_calls(call_to_insert, sys_lines, begin_main, end_main, recovered, project):
    """ insert num_calls calls into the project, and use previsously used variables.

    Keyword arguments:
    call_to_insert -- number of the call to insert
    sys_lines -- number of lines in sys_call_llvm.txt
    begin_main -- begining of the main of recovered
    end_main -- begining of the end of recovered
    recovered -- recovered file of project
    project - Project name

    return
    """
    arguments = sys_lines[call_to_insert*3+2].strip().split(",")

    def_call = re.search(r"(declare .* @\w{2,})\((.*)\) .*", sys_lines[call_to_insert*3])
    if(def_call == None):
        print("API definition not correctly defined in sys_call_llvm.txt")
        return

    al_def = False
    for line in recovered.lines:
        if def_call[1] in line :
            al_def =True
    
    if(al_def ==False):
        recovered.insert(begin_main.line_num-2, sys_lines[call_to_insert*3])

    if(arguments[0] != "void"):
        line_main = "  %a" + str(get_new_index(recovered))+ " " 
    else :
        line_main = "  "
    line_main += sys_lines[(call_to_insert*3)+1][:-1] + "("
    line_main_add = ""
    line_num = 0

    strings, potential_integers = find_variables(begin_main, end_main, recovered, project)
    
    needed_arg = def_call[2].strip().split(",")
    line_load = ""
    for i,arg in enumerate(arguments[1:]):

        if arg =='int':
            var = random.randrange(len(potential_integers))
            var_line = potential_integers[var][0] 
            int_add = potential_integers[var][2]

            line_main_add += "i32 " + int_add + ", "
        else : 
            if needed_arg[i-1].find("*") <0:
                var = random.randrange(len(strings))
                var_line = strings[var][0]
                string_add = strings[var][1]
                extra_string = "%es" +str(get_new_index(recovered))
                line_load += "  " + extra_string + f" = load {needed_arg[i-1].strip()}, {needed_arg[i-1].strip()}* " + string_add + ", align 16\n"
                line_main_add += f"{needed_arg[i-1]} " + extra_string + ", "
            else:
                var = random.randrange(len(strings))
                var_line = strings[var][0]
                string_add = strings[var][1]
                index = get_new_index(recovered)
                line_load += f"  %arg.i.i{index} = load i32, i32* {string_add}, align 16"
                extra_load = "%el" +str(get_new_index(recovered))
                line_load += f"  {extra_load}= inttoptr i32 %arg.i.i{index} to {needed_arg[i-1].strip()}"

                line_main_add += f"{needed_arg[i-1]} " + extra_load + ", "


        if var_line > line_num:
            line_num = random.randrange(var_line+1, end_main.line_num-1)+1
    while(recovered.lines[line_num].find("  ") != 0):                   
        line_num = random.randrange(var_line+1, end_main.line_num-1)+1

    recovered.insert(line_num, f";-------------------------------\n")

    line_main += line_main_add[:-2] + ")\n"
    recovered.insert(line_num, line_main)

    if line_load != "":
        recovered.insert(line_num, f";--------Added Syst Call--------\n")
        recovered.insert(line_num, f";-------------------------------\n")
        recovered.insert(line_num, line_load)
    else:
        recovered.insert(line_num,f""";-------------------------------
;--------Added Syst Call--------\n""")
    
    recovered.write()

def sys_calls(num_calls, project):
    """ insert num_calls calls into the project, and use previsously used variables.

    Keyword arguments:
    num_calls -- number of calls to add into the project
    project - Project name

    return added_lines
    """

    list_calls = []

    with open("mutator/adder/sys_call_llvm.txt", "r") as f:
        sys_lines = f.readlines()
        num_lines = len(sys_lines)

    if(num_calls > num_lines/3):
        print("number_add higher than the number of available system calls, return")
        return

    (begin_main, end_main), recovered = init_mutation(project)
    print(num_calls)
    for i in range(num_calls):
        compiled_check = False
        while compiled_check == False:
            deep_recovered = copy.deepcopy(recovered)
            try:
                call_to_insert = random.randrange(num_lines/3)

                while call_to_insert in list_calls: 
                    call_to_insert = random.randrange(num_lines/3)
                list_calls.append(call_to_insert)

                insert_sys_calls(call_to_insert, sys_lines, begin_main, end_main, recovered, project)
            
                command = "just link_recompile " + project + " \"mutator/escape/detect.bc\" \"mutator/strings/bytecodes/base64.bc\""
                subprocess.check_output(command, shell=True, timeout = 30)                      
                compiled_check = True
            except:
                list_calls.remove(call_to_insert)
                recovered = copy.deepcopy(deep_recovered)
