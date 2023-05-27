from ..helpers.utils import *
from ..helpers.file_representation import fileRepresentation as fileRep

def inject_detect_vm(project):
    """
    Injects the code to detect and escape the debug environment

    :param project: The name of the project
    :return: None
    """
    
    (start_main, end_main), recovered = init_mutation(project)

    inject_vm_detect_at(recovered, start_main, end_main)

def inject_vm_detect_at(recovered: fileRep, start_main : ref, end_main : ref):
    """
    Injects the code to detect and escape the debug environment at the given line

    :param project: The name of the project
    :param line: The line where the code will be injected
    :return: nbr added lines
    """
    
    ind = get_new_index(recovered)

    function_declaration, code, escaping_name = get_vm_detect_code(ind)

    recovered.insert(start_main.line_num - 3 , function_declaration + "\n") #FIXME : -3 could end up in another function and break everything

    recovered.insert(start_main.line_num+1, code)

    recovered.insert(end_main.line_num - 1, escaping_name + ":\n")

    ret_type, ret_line = get_default_return_line(recovered, start_main)
    recovered.insert(end_main.line_num - 1, ret_line) #FIXME the function must maybe return something

    recovered.write()


def get_vm_detect_code(ind):
    """
    Returns the code to detect and escape the debug environment

    :return: the string of the code
    """
    code = f""";----------------------------
  ; Detect if we are running in a VMWare vm
  %result.{ind} = tail call i32 @detect_vm()
  %must.escape.{ind} = icmp ne i32 %result.{ind}, 0
  br i1 %must.escape.{ind}, label %.escape.{ind}, label %.proceed.{ind}
.proceed.{ind}:
;----------------------------
"""

    escaping_name = f".escape.{ind}"

    function_declaration = "declare i32 @detect_vm()"

    return function_declaration, code, escaping_name
