from .ref import ref
from ..strings.helpers.string_ref import stringRef, TYPES
from typing import Union

class fileRepresentation:

    def __init__(self, filename):
        self.filename = filename
        with open(filename, "r") as f:
            self.lines = f.readlines()
        self._refs = []

    def write(self):
        with open(self.filename, "w") as f:
            f.writelines(self.lines)

    def insert(self, line_num, string):
        lines = string.splitlines()
        lines.reverse()
        for line in lines:
            self.lines.insert(line_num, line+"\n")
        for ref in self._refs:
            if ref.line_num >= line_num:
                ref.line_num += len(lines)

    def delete(self, line_num):
        del self.lines[line_num]
        for ref in self._refs:
            if ref.line_num >= line_num:
                ref.line_num -= 1

    def __str__(self) -> str:
        return f"{self.filename}: {len(self.lines)} lines"

    def get_ref(self, line_num):
        rep = ref(line_num, self.lines[line_num])
        self._refs.append(rep)
        return rep
    
    def ref(self, line_num : int):
        return self.get_ref(line_num)
    
    def stringRef(self, line_num: int, type: TYPES, offset : Union[int, list], string : str = ""):
        rep = stringRef(type, line_num, self.lines[line_num], offset, string)
        self._refs.append(rep)
        return rep
