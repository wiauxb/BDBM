from ...helpers.utils import *
from ...helpers.file_representation import fileRepresentation as fileRep
from .string_ref import stringRef, TYPES
from ...helpers.ref import *
import re


def find_strings(project, recovered: fileRep, begin_main : ref, end_main : ref):
    """find string offsets in the binary
    
    Keyword arguments:
    project - Project Name
    begin_main - Beginning of the main function recovered.ll
    end_main - End of the main function recovered.ll
    Return: list of stringRefs
    """
    
    list = []

    for i,line in enumerate(recovered.lines):
        no_comment_line = line.split(";")[0]
        match_KO = re.search(r".* load .* inttoptr \(.*\), .*", no_comment_line)
        match = re.findall(r'c"(.*)"', no_comment_line)
        if match and match_KO == None:
            print("Found string: " + match[0])
            if len(match[0].replace("\\00", "")) <= 1:
                continue
            if re.match(r"@.*=", no_comment_line):
                string = get_string_in_python_format(match[0])
                list.append(recovered.stringRef(i, TYPES.GLB_CST, -1, string))
            else:
                string = get_string_in_python_format(match[0])
                list.append(recovered.stringRef(i, TYPES.LCL_CST, -1, string))
        if i > begin_main.line_num and i < end_main.line_num and match_KO == None:
            match = re.findall(r"i32 (\d{4,})", no_comment_line)
            if match and all_addresses_could_be_string(project, match):
                if len(match) == 1:
                    offset = address_to_offset(project, int(match[0]))
                    list.append(recovered.stringRef(i, TYPES.ONE_ADDR, offset))
                elif len(match) == 2:
                    offset1 = address_to_offset(project, int(match[0]))
                    offset2 = address_to_offset(project, int(match[1]))
                    list.append(recovered.stringRef(i, TYPES.TWO_ADDR, [offset1, offset2]))
                else:
                    raise ValueError(f"Unhandled number of addresses in one instruction:\n{len(match)} addresses in\n{line}")
    return list

def find_var_usage(recovered : fileRep, var_name, exclude_line = []):
    """find all usages of <var_name> in the recovered.ll from <project>
    """
    list = []
    for i,line in enumerate(recovered.lines):
        no_comment_line = line.split(";")[0]
        # print(no_comment_line)
        match = re.search(r'%s[ \n,]' % var_name, no_comment_line)
        if match and i not in exclude_line:
            list.append(recovered.ref(i))
    #print(f"Found {len(list)} usages of {var_name}")
    #print("Excluded lines: " + str(exclude_line))
    #print("Usages: " + str(list))
    return list

def find_constant_declaration_block(recovered : fileRep):
    """ find the constant declaration block in the recovered.ll from <project>
    
    Keyword arguments:
    project - project name
    Return: a ref to the last line of the block
    """
    
    end_block = -1

    for i, line in enumerate(recovered.lines):
        if re.search(r"^@.* =", line):
            end_block = i+1
    
    return recovered.get_ref(end_block)

def all_addresses_could_be_string(project, addresses: list):
    for address in addresses:
        if not address_could_be_string(project, int(address)):
            return False
    return True


def get_string_from_binary(project, offset):
    """get string at <offset> in binary of <project> 
    
    Keyword arguments:
    project -- project name
    offset -- offset in binary
    Return: string (decoded from utf-8)
    """

    string = b''
    with open("s2e/projects/" + project + "/binary", 'br') as f:
        string = f.read()[offset:]
    
    return string.split(b'\x00')[0].decode("utf-8") #FIXME We assume the string encoding

def remove_string_from_binary(project, offset, length):
    """ Remove <length> bytes at <offset> in binary of <project>
    
    Keyword arguments:
    project -- project name
    offset -- offset in binary
    length -- length to wipe in bytes
    """
    
    copy = "s2e/projects/" + project + "/s2e-out/binary"
    original = "s2e/projects/" + project + "/s2e-out/original_binary"

    if not os.path.isfile(original):
        shutil.copyfile(copy, original)
    
    content = b''
    with open(copy, 'br') as f:
        content = bytearray(f.read())
    content[offset: offset+length] = b'\x00'*length
    with open(copy, 'bw') as f:
        f.write(content)

def get_string_in_python_format(string: str):
    """Return a string in python format (with escape sequences)
    
    Keyword arguments:
    string -- string to convert
    Return: string in python format
    """
    string = string.replace("\n", "\\0a")
    string = string.replace("\"", "\\22")
    return re.sub(r"\\([0-9a-fA-F]{2})", lambda x: chr(int(x.group(1), 16)), string)

def get_string_in_llvm_format( string: str):
    """Return a string in llvm format (with escape sequences)
    
    Keyword arguments:
    string -- string to convert
    Return: string in llvm format
    """
    
    return "".join([c if c.isprintable() or c == "\"" else f"\\{ord(c):02x}" for c in string])