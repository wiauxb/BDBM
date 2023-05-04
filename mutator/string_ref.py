import enum
import re


TYPES = enum.Enum("TYPES", ["ONE", "TWO"])

class stringRef:

    def __init__(self, type: TYPES, line_num, line, offset) -> None:
        self.type = type
        self.line_num = line_num
        self.offset = offset
        self.line = line

    def get_mutated_line(self, *args):
        if self.type == TYPES.ONE:
            return self._get_mutated_line_one_string(*args)
        elif self.type == TYPES.TWO:
            return self._get_mutated_line_two_strings(*args)
        raise ValueError(f"Unknown Type: {self.type}")

    def _get_mutated_line_one_string(self, replacing_string):
        return re.sub(r'\d{4,}', replacing_string, self.line)
    
    def _get_mutated_line_two_strings(self, repl1, repl2):
        tmp = re.sub(r'\d{4,}', repl1, self.line, count=1)
        return re.sub(r'\d{4,}', repl2, tmp, count=1)

if __name__ == "__main__":
    ref = stringRef(TYPES.ONE, 3, "store i32 134520840, i32* %8, align 16", 0)

    print(ref.get_mutated_line("%spi0"))
    # print(ref.get_mutated_line("%spi0", "%spi1"))