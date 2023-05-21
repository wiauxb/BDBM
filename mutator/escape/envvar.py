from ..helpers.utils import *
from ..helpers.file_representation import fileRepresentation as fileRep

def inject_detect_debug(project, var_name: str):
    """
    Injects the code to detect and escape the debug environment

    :param project: The name of the project
    :return: None
    """
    
    (start_main, end_main), recovered = init_mutation(project)

    inject_debug_detect_at(recovered, var_name, start_main, end_main)

def inject_debug_detect_at(recovered: fileRep, var_name, start_main : ref, end_main : ref):
    """
    Injects the code to detect and escape the debug environment at the given line

    :param project: The name of the project
    :param line: The line where the code will be injected
    :return: nbr added lines
    """

    ind = get_new_index()
    
    recovered.insert(start_main.line_num - 3 , "declare i32 @getenv(i32) local_unnamed_addr noinline\n") #FIXME : -3 could end up in another function and break everything

    for i, var in enumerate(var_name):

        code = get_debug_detect_code(i, ind, var)

        recovered.insert(start_main.line_num, code)
    
    end_point = end_main.line_num - 1
    recovered.insert(end_point, "  ret void\n")
    recovered.insert(end_point, f".escape.{ind}:\n")

    recovered.write()


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
