from ..helpers.utils import *
from ..helpers.file_representation import fileRepresentation as fileRep

def inject_detect_ptrace(project):
    """
    Injects the code to detect and escape the debug environment

    :param project: The name of the project
    :return: None
    """
    
    (start_main, end_main), recovered = init_mutation(project)

    inject_ptrace_detect_at(recovered, start_main, end_main)

def inject_ptrace_detect_at(recovered: fileRep, start_main : ref, end_main : ref):
    """
    Injects the code to detect and escape the debug environment at the given line

    :param project: The name of the project
    :param line: The line where the code will be injected
    :return: nbr added lines
    """
    
    ind = get_new_index(recovered)

    function_declaration, code, escaping_name = get_ptrace_detect_code(ind)

    recovered.insert(start_main.line_num - 3 , function_declaration + "\n") #FIXME : -3 could end up in another function and break everything

    recovered.insert(start_main.line_num, code)

    end_point = end_main.line_num - 1
    recovered.insert(end_point, "  ret void\n") #FIXME the function must maybe return something
    recovered.insert(end_point, escaping_name + ":\n")

    recovered.write()


def get_ptrace_detect_code(ind):
    """
    Returns the code to detect and escape the debug environment

    :return: the string of the code
    """
    code = f""";----------------------------
  ; Detect tracing running
  %result.{ind} = tail call i32 @ptrace(i32 0, i32 0, i32 0, i32 0)
  %must.escape.{ind} = icmp eq i32 %result.{ind}, -1
  br i1 %must.escape.{ind}, label %.escape.{ind}, label %.proceed.{ind}
.proceed.{ind}:
;----------------------------
"""

    escaping_name = f".escape.{ind}"

    function_declaration = "declare i32 @ptrace( i32, i32, i32, i32) naked noinline"

    return function_declaration, code, escaping_name
