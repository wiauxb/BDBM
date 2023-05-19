from .helpers.adder_utils import *


def find_last_meta(lines):
    last = lines[-1]

    match = re.search(r"!(\d{1,}) = .*", last)
    if last == None: 
        print("Couldn't find last metadata, return.")
        return
    
    num_new_last = int(match[1])+1

    new_last_meta = f"""!{num_new_last} = !""" + "{!\"printf\"}"
    return new_last_meta, num_new_last

def print_decl():
    return """; Function Attrs: naked noinline
declare dso_local i32 @printf(i8* noundef) local_unnamed_addr  naked noinline "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 
"""


def generate_new_print(var, arg, num_meta, line_var, num):
    cast = "%cast" +str(round(time.time()*1000)+num)
    new_print = f"""  tail call i32 @printf(i8* nonnull dereferenceable(1) {arg})  nobuiltin nounwind "no-builtins" , !funcname !{num_meta}
  {cast}= getelementptr [1 x i8], [1 x i8]* {line_var}, i64 0, i64 0
  {var} = tail call i32 @printf(i8* nonnull dereferenceable(1) {cast})  nobuiltin nounwind "no-builtins" , !funcname !{num_meta}\n"""
    return new_print

def replace_puts(project):
    with open("s2e/projects/" + project + "/s2e-out/recovered.ll", 'r') as f:
        lines = f.readlines()

    begin_main, end_main = find_main(project)


    string_to_print = "@.str"+str(round(time.time()*1000))
    ligne = "\\0a"
    var_line = f"""{string_to_print} = private unnamed_addr constant [1 x i8] c\"{ligne}\"\n"""
    for i, line in enumerate(lines):
            if re.search(r"^@.* =", line):
                var_line_num = i+1
    lines.insert(var_line_num, var_line)


    al_print = False
    for line in lines :
        match = re.search(r"@printf", line)
        if match != None: 
            al_print = True
        match = re.search(r"!(\d{1,}) = !{!\"printf\"}", line)
        if match != None:
            num_meta = match[1]
    
    if(al_print == False): 
        new_last_meta, num_meta = find_last_meta(lines)
        print_decla = print_decl()
        lines.append(new_last_meta)
        lines.insert(begin_main-2, print_decla)

    for i, line in enumerate(lines):
        match = re.search(r"(%\d{1,}).* tail call .* @puts.* (%\d{1,})\)", line)
        if match!= None:
            print_repl = generate_new_print(match[1], match[2], num_meta, string_to_print, i)
            lines[i] = print_repl
 
    with open("s2e/projects/" + project + "/s2e-out/recovered.ll", 'w') as f:
        f.writelines(lines)



if __name__ == "__main__":
    with open("s2e/projects/" + "twoprints" + "/s2e-out/recovered.ll", 'r') as f:
        lines = f.readlines()
    
    replace_puts("twoprints")
