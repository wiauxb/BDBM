from string_splitter import *

def add_llvm_cleanware(begin_main, end_main, project):
    recovered = "s2e/projects/" + project + "/s2e-out/recovered.ll"

    with open(recovered, "r") as f:
        lines = f.readlines()
    
    line_num = random.randrange(begin_main+1, end_main)
    clean_num = 1#random.randrange(10) #Nombre de cleanware dans le dossier

    cleanware = f"mutator/cleanware/cleanware{clean_num}.ll"
    with open(cleanware, "r") as f:
        clean_lines = f.readlines()
    function_call = clean_lines.pop()
    lines.insert(line_num, function_call)
    clean_lines = ''.join(clean_lines)
    lines.insert(end_main+2, clean_lines)
    added_lines = len(clean_lines)+1

    with open(recovered, "w") as f:
        f.writelines(lines)
    return added_lines

def find_variables(begin_main, end_main, project):
    copy = "s2e/projects/" + project + "/s2e-out/recovered.ll"
    strings = []
    potential_integers = []
    with open(copy, "r") as fp:
        for i,line in enumerate(fp):
            try:
                if i > begin_main and i < end_main:
                    match =  re.search(r"store i32 (\d{1,}),.* (%.*), .*\n", line)
                    if(match != None and address_could_be_string(project, int(match[1]))):
                        strings.append([i, match[2]])
                    elif(match != None):
                        potential_integers.append([i, int(match[1]), match[2]])
            except:
                print("not usable line")
    return strings, potential_integers

if __name__ == "__main__":
    #strings, integers = find_variables(102, 179, "printArray")
    #print(strings)
    #print(integers)
    add_llvm_cleanware(38, 106, "hello")
    pass