from ..helpers.utils import *

def inject_detect_debug(project, var_name: str):
    """
    Injects the code to detect and escape the debug environment

    :param project: The name of the project
    :return: None
    """
    init_mutation(project)
    start_main, end_main = find_main(project)

    inject_debug_detect_at(project, var_name, start_main, end_main)

    save_mutation(project, 'debug')

def inject_debug_detect_at(project, var_name, start_main, end_main):
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
    
    lines.insert(start_main - 3 , "declare i32 @getenv(i32) local_unnamed_addr noinline\n") #FIXME : -3 could end up in another function and break everything
    added_lines += 1

    for j, var in enumerate(var_name):
        i = j+1

        code = get_debug_detect_code(i, ind, var)

        lines.insert(start_main+i, code)
        added_lines += code.count("\n")

    lines.insert(end_main-1+(1 + len(var_name)), "  ret void\n")
    lines.insert(end_main-1+(1 + len(var_name)), f".escape.{ind}:\n")
    added_lines += 2

    with open("s2e/projects/" + project + "/s2e-out/recovered.ll", 'w') as f:
        f.writelines(lines)

    return added_lines

def get_debug_detect_code(i, ind, var: str):
    """
    Returns the code to detect and escape the debug environment

    :return: the string of the code
    """
    length = len(var.encode()) + 1
    code = f""";----------------------------
  ; Detect debug environment
  %debug.str.{i}.{ind} = alloca [{length} x i8]
  store [{length} x i8] c"{var}\\00", [{length} x i8]* %debug.str.{i}.{ind}
  %debug.ptr.{i}.{ind} = ptrtoint [{length} x i8]* %debug.str.{i}.{ind} to i32
  %result.{i}.{ind} = tail call i32 @getenv(i32 %debug.ptr.{i}.{ind})
  %must.escape.{i}.{ind} = icmp ne i32 %result.{i}.{ind}, 0
  br i1 %must.escape.{i}.{ind}, label %.escape.{ind}, label %.proceed.{i}.{ind}
.proceed.{i}.{ind}:
;----------------------------
"""

    return code
