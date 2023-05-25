import enum
import re
from ...helpers.ref import ref
from typing import Union

TYPES = enum.Enum("TYPES", ["ONE_ADDR", "TWO_ADDR", "GLB_CST", "LCL_CST"])

class stringRef (ref):

    def __init__(self, type: TYPES, line_num, line, offset, string: str = "") -> None:
        super().__init__(line_num, line)
        self.type = type
        self.offset = offset
        self.string = string

    def get_mutated_line(self, *args):
        if self.type == TYPES.ONE_ADDR:
            return self._get_mutated_line_one_string(*args)
        elif self.type == TYPES.TWO_ADDR:
            return self._get_mutated_line_two_strings(*args)
        elif self.type == TYPES.GLB_CST:
            return self._get_mutated_line_global_string(*args)
        elif self.type == TYPES.LCL_CST:
            return self._get_mutated_line_local_string(*args)
        raise ValueError(f"Unknown Type: {self.type}")

    def _get_mutated_line_one_string(self, replacing_string):
        return re.sub(r'\d{4,}', replacing_string, self.line)
    
    def _get_mutated_line_two_strings(self, repl1, repl2):
        tmp = re.sub(r'\d{4,}', repl1, self.line, count=1)
        return re.sub(r'\d{4,}', repl2, tmp, count=1)
    
    def _get_mutated_line_global_string(self, replacing_string):
        return re.sub(r'@[^, \n]*', replacing_string, self.line)
    
    def _get_mutated_line_local_string(self, replacing_string):
        return re.sub(r'c\".*\"', replacing_string, self.line)

    def __str__(self) -> str:
        return f"{self.type}: <0x{self.offset:X}> {self.line_num}: {self.line.strip()}"
    
if __name__ == "__main__":
    ref = stringRef(TYPES.ONE_ADDR, 3, "store i32 134520840, i32* %8, align 16", 0)

    print(ref.get_mutated_line("%spi0"))
    # print(ref.get_mutated_line("%spi0", "%spi1"))