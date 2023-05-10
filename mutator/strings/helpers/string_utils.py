from ...helpers.utils import *
from .string_ref import stringRef, TYPES
from ...helpers.ref import *
import re


def find_strings(project, begin_main, end_main):
    """find string offsets in the binary
    
    Keyword arguments:
    project - Project Name
    begin_main - Beginning of the main function recovered.ll
    end_main - End of the main function recovered.ll
    Return: list of lists, [line_numbers, offset1, offset2, ...)
    """
    
    copy = "s2e/projects/" + project + "/s2e-out/recovered.ll"
    list = []
    with open(copy, "r") as fp:
        for i,line in enumerate(fp):
            try:
                if i > begin_main and i < end_main:
                    match = re.findall(r"i32 (\d{4,})", line)
                    if match and all_addresses_could_be_string(project, match):
                        if len(match) == 1:
                            offset = address_to_offset(project, int(match[0]))
                            list.append(stringRef(TYPES.ONE, i, line, offset))
                        elif len(match) == 2:
                            offset1 = address_to_offset(project, int(match[0]))
                            offset2 = address_to_offset(project, int(match[1]))
                            list.append(stringRef(TYPES.TWO, i, line, [offset1, offset2]))
                        else:
                            raise ValueError(f"Unhandled number of addresses in one instruction:\n{len(match)} addresses in\n{line}")
            except Exception as e:
                print(f"not usable line: {e}")
    return list

def find_constant_declaration_block(project):
    """ find the constant declaration block in the recovered.ll from <project>
    
    Keyword arguments:
    project - project name
    Return: a ref to the last line of the block
    """
    with open("s2e/projects/" + project + "/s2e-out/original_recovered.ll", 'r') as f:
        lines = f.readlines()
    
    end_block = ref(-1, "")

    for i, line in enumerate(lines):
        if re.search(r"^@.* =", line):
            end_block = ref(i+1, line)
    
    return end_block

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
