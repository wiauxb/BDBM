from ..helpers.utils import *

def inject_detect_debug(project):
    """
    Injects the code to detect and escape the debug environment

    :param project: The name of the project
    :return: None
    """
    init_mutation(project)
    start_main, end_main = find_main(project)
    
    inject_debug_detect_at(project, start_main, end_main)

def inject_debug_detect_at(project, start_main, end_main):
    """
    Injects the code to detect and escape the debug environment at the given line

    :param project: The name of the project
    :param line: The line where the code will be injected
    :return: nbr added lines
    """
    
    recovered = "s2e/projects/" + project + "/s2e-out/recovered.ll"

    with open(recovered, 'r') as f:
        lines = f.readlines()

    added_lines = 0
    ind = get_new_index()

    function_declaration, code, escaping_name = get_debug_detect_code(ind)

    lines.insert(start_main - 3 , function_declaration + "\n") #FIXME : -3 could end up in another function and break everything
    added_lines += 1

    lines.insert(start_main+1, code)
    added_lines += code.count("\n")

    lines.insert(end_main-1+2, "  ret void\n")
    lines.insert(end_main-1+2, escaping_name + ":\n")
    added_lines += 2

    with open("s2e/projects/" + project + "/s2e-out/recovered.ll", 'w') as f:
        f.writelines(lines)

    return added_lines

def get_debug_detect_code(ind):
    """
    Returns the code to detect and escape the debug environment

    :return: the string of the code 
    """
    code = f""";----------------------------
  ; Detect debug environment
  %debug.str.{ind} = alloca [6 x i8]
  store [6 x i8] c"DEBUG\00", [6 x i8]* %debug.str.{ind}
  %debug.ptr.{ind} = ptrtoint [6 x i8]* %debug.str.{ind} to i32
  %result.{ind} = tail call i32 @getenv(i32 %debug.ptr.{ind})
  %must.escape.{ind} = icmp ne i32 %result.{ind}, 0
  br i1 %must.escape.{ind}, label %.escape.{ind}, label %.proceed.{ind}
.proceed.{ind}:
;----------------------------  
"""

    escaping_name = f".escape.{ind}"

    function_declaration = "declare i32 @getenv(i32) local_unnamed_addr noinline"

    return function_declaration, code, escaping_name
