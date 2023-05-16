from helpers.adder_utils import *
from helpers.adder_ref import TYPES, adderRef
import random
import os

def generate_if(print_var, len):
    """
    print_var -- name of the variable we want to print
    """
    const = str(round(time.time()*1000))
    if_name ="BB_" + const #faudrait rajouter un if par condition qu'on rajoute.

    cond_bloc = f"""  %.not{const}.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not{const}.i.i, label %{if_name}, label %next{const}
  
next{const}:\n"""

    if_bloc =f"""{if_name}:
  %cast{const}= getelementptr [{len} x i8], [{len} x i8]* {print_var}, i64 0, i64 0

  call i32 @puts(i8* %cast{const})
  br label %next{const}
    """
    return cond_bloc, if_bloc

def insert_if(project):

    string_to_print = "@.str"+str(round(time.time()*1000))
    message = "Hello There!"
    var_line = f"""{string_to_print} = private unnamed_addr constant [{len(message)} x i8] c\"{message}\"\n"""

    cond, branch = generate_if(string_to_print, len(message))

    with open("s2e/projects/" + project + "/s2e-out/recovered.ll", 'r') as fp:
        lines = fp.readlines()

    for i, line in enumerate(lines):
        if re.search(r"^@.* =", line):
            var_line_num = i+1
    lines.insert(var_line_num, var_line)

    begin_main, end_main = find_main(project)
    
    lines.insert(random.randrange(begin_main+2, end_main-3), cond) #TODO : pas sur pour le -2

    print(end_main)
    lines.insert(end_main+1, branch)

    with open("s2e/projects/" + project + "/s2e-out/recovered.ll", 'w') as fp:
        fp.writelines(lines)


if __name__ == "__main__":
    insert_if("hello")


