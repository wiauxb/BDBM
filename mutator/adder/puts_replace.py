from ..helpers.utils import *


def find_last_meta(recovered):
    last = recovered.lines[-1]

    match = re.search(r"!(\d{1,}) = .*", last)
    if match == None: 
        raise Exception("Couldn't find last metadata, return.")
    
    num_new_last = int(match[1])+1

    new_last_meta = f"""!{num_new_last} = !""" + "{!\"printf\"}"
    return new_last_meta, num_new_last

def print_decl():
    return """; Function Attrs: naked noinline
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr  naked noinline "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 
"""

def generate_new_print(var, arg, num_meta, line_var, recovered):
    ind = str(get_new_index(recovered))
    cast = "%cast" + ind
    new_print = f"""  %fp{ind} = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) {arg})  nobuiltin nounwind "no-builtins" , !funcname !{num_meta}
  {cast}= getelementptr [1 x i8], [1 x i8]* {line_var}, i64 0, i64 0
  {var} = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) {cast})  nobuiltin nounwind "no-builtins" , !funcname !{num_meta}\n"""
    return new_print

def replace_puts(project):

    (begin_main, _), recovered = init_mutation(project)


    string_to_print = "@.str"+str(get_new_index(recovered))
    ligne = "\\0a"
    var_line = f"""{string_to_print} = private unnamed_addr constant [1 x i8] c\"{ligne}\"\n"""
    for i, line in enumerate(recovered.lines):
            if re.search(r"^@.* =", line):
                var_line_num = i+1

    recovered.insert(var_line_num, var_line)
    
        

    al_print = False
    for line in recovered.lines :
        match = re.search(r"@printf", line)
        if match != None: 
            al_print = True
        match = re.search(r"!(\d{1,}) = !{!\"printf\"}", line)
        if match != None:
            num_meta = match[1]
    
    if(al_print == False): 
        new_last_meta, num_meta = find_last_meta(recovered)
        print_decla = print_decl()
        recovered.lines.append(new_last_meta)
        recovered.insert(begin_main.line_num-2, print_decla)

    for i, line in enumerate(recovered.lines):
        match = re.search(r"(%\d{1,}).* tail call .* @puts.* (%\d{1,})\)", line)
        if match!= None:
            print_repl = generate_new_print(match[1], match[2], num_meta, string_to_print, recovered)
            recovered.lines[i] = print_repl
            recovered.insert(i, f";---Replaced puts with printf---\n")
            recovered.insert(i, f";-------------------------------\n")
            recovered.insert(i+3, f";-------------------------------\n")
    recovered.write()
