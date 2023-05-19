from .helpers.adder_utils import *
from .helpers.adder_ref import TYPES, adderRef
import random

def generate_basic_if_print(print_var, len_m, mess_num):
    """
    TODO : la length est pas correcte en LLVM quand il y a des accents
    Generate basic if that is always true

    print_var -- name of the variable we want to print
    len_m -- length of the message we want to print
    return -- condition bloc and if bloc
    """
    const = str(round(time.time()*1000)+ mess_num)
    if_name ="BB_" + const 

    cond_bloc = f"""  %.not{const}.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not{const}.i.i, label %{if_name}, label %next{const}
next{const}:\n"""

    if_bloc =f"""{if_name}:
  %cast{const}= getelementptr [{len_m} x i8], [{len_m} x i8]* {print_var}, i64 0, i64 0
  call i32 @puts(i8* %cast{const})
  br label %next{const}
"""
    return cond_bloc, if_bloc

def insert_basic_if_print(project, messages):
    """Insert basic if 0=0 in the project that print the messages (1 if per message)"""

    for i, message in enumerate(messages):
        string_to_print = "@.str"+str(round(time.time()*1000)+i)
        var_line = f"""{string_to_print} = private unnamed_addr constant [{len(message.encode())} x i8] c\"{message}\"\n"""

        begin_main, end_main = find_main(project)


        cond, branch = generate_basic_if_print(string_to_print, len(message.encode()), i)

        with open("s2e/projects/" + project + "/s2e-out/recovered.ll", 'r') as fp:
            lines = fp.readlines()

        #Check if puts is already declared
        decl_puts = False
        for i, line in enumerate(lines):
            if re.search(r"^@.* =", line):
                var_line_num = i+1
            match = re.search(r"declare .* @(\w{2,}).*\(.*", line)
            if match != None and match[1] == "puts":
                decl_puts = True
            if re.search(r"  ret void", line) and i > begin_main and i < end_main :
                ret_main = i
       

        lines.insert(end_main-1, branch)
        insert_cond = random.randrange(begin_main+1, ret_main)
        while re.search(r"next\d{7,}:", lines[insert_cond]) != None:
            insert_cond = random.randrange(begin_main+1, ret_main)
            
        lines.insert(insert_cond, cond) 
        if(decl_puts ==False):
            lines.insert(begin_main-1, "declare dso_local i32 @puts(i8* noundef) local_unnamed_addr #3\n")
        lines.insert(var_line_num, var_line)

        with open("s2e/projects/" + project + "/s2e-out/recovered.ll", 'w') as fp:
           fp.writelines(lines)


def generate_random_func_decl(lines):
    """
    Generate the declaration of functions that will be needed
    
    lines -- lines from project
    return -- function delcaration that needs to be added before main
    """
    
    decl_rand =False    
    decl_srand = False
    decl_time = False
    for line in lines:
        match = re.search(r"declare .* @(\w{2,}).*\(.*", line)
        if match != None and match[1] == "rand":
            decl_rand = True
        elif match != None and match[1] == "srand":
            decl_srand = True
        elif match != None and match[1] == "time":
            decl_time = True
    
    func_decl = ""
    if(decl_rand == False):
        func_decl += "declare i32 @rand() local_unnamed_addr  noinline\n\n" 
    if(decl_srand == False):
        func_decl += "declare void @srand(i32) local_unnamed_addr  noinline \n\n"
    if(decl_time == False):
        func_decl += "declare i32 @time(i32*) local_unnamed_addr noinline \n\n"
    return func_decl


def generate_random_main(lines, max_rand, iteration):
    """
    Generate lines that store a random number with max value max_value

    lines -- lines in the project
    max_rand -- max value for the random number
    iteration -- iteration of the adder
    return -- declaration of the random number, name of the variable that stocks the random number
    """

    time_var = "%time" + str(round(time.time()*1000)+iteration)

    srand_main = False
    for line in lines : 
        if re.search(r"tail call void @srand.*", line) !=None:
            srand_main =True

    main_decl = f""""""
    if srand_main == False:
        main_decl += f"""  {time_var} = tail call i32 @time(i32* null)
  tail call void @srand(i32 {time_var})\n"""
    rand_init = "%rand_init" + str(round(time.time()*1000))
    main_decl += f"""  {rand_init} = tail call i32 @rand()\n"""
    rand_fin = "%rand_fin" + str(round(time.time()*1000))
    main_decl += f"""  {rand_fin} = srem i32 {rand_init}, {max_rand}\n"""

    return main_decl, rand_fin

def generate_random_if(max_rand, rand_var, iteration):
    """
    Generate the random if condition and the return bloc.

    max_rand -- max random possible
    rand_var -- variable in which the first random is stored
    iteration -- iteration of the adder
    return -- if condition and the return bloc
    """
    cond = str(random.randrange(max_rand))
    const = str(round(time.time()*1000) + iteration)
    if_name ="BB_" + const 

    cond_bloc = f"""  %.not{const}.i.i = icmp eq i32 {cond} , {rand_var} 
  br i1 %.not{const}.i.i, label %next{const}, label %{if_name}
next{const}:\n"""

    if_bloc =f"""{if_name}:
  ret void
"""
    return cond_bloc, if_bloc

def add_random_in_main(project, max_rand, iterations):
    """
    add a condition that checks if two random numbers are equal. If they are not, return.

    project -- name of the project
    max_rand -- max random possible
    iterations -- number of ifs we want to add in project

    """

    for iteration in range(iterations) :
        #The program is too fast, so we need to add iteration to every time we need
        with open("s2e/projects/" + project + "/s2e-out/recovered.ll", 'r') as fp:
            lines = fp.readlines()
        
        fun_decl = generate_random_func_decl(lines)
        main_decl, rand_fin = generate_random_main(lines, max_rand, iteration)
        cond_bloc, if_bloc = generate_random_if(max_rand, rand_fin, iteration)

        begin_main, end_main = find_main(project)

        for i, line in enumerate(lines) :
            if re.search(r"  ret void", line) and i > begin_main and i < end_main :
                ret_main = i
                break

        #makes sure that not two next follow each other TODO : confirm it is correct
        lines.insert(end_main-1, if_bloc)
        insert_cond = random.randrange(begin_main+1, ret_main)
        while re.search(r"next\d{7,}:", lines[insert_cond]) != None:
            insert_cond = random.randrange(begin_main+1, ret_main)
            
        lines.insert(insert_cond, cond_bloc)

        #Makes sure that every random use in main is done after the declaration of srand.
        srand_line = begin_main+1
        for i, line in enumerate(lines) :
            if re.search(r"  tail call void @srand", line) and i > begin_main and i < end_main :
                srand_line = i+1

        lines.insert(srand_line, main_decl)
        
        lines.insert(begin_main-2, fun_decl)

        with open("s2e/projects/" + project + "/s2e-out/recovered.ll", 'w') as fp:
            fp.writelines(lines)

    


if __name__ == "__main__":
    #insert_basic_if_print("hello", ["Premier\0a", "Deuxieme\0a", "Troisième\0a"])
    add_random_in_main("hello", 3, 2)
