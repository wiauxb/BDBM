import enum
import re

TYPES = enum.Enum("TYPES", ["FUNCTION", "VARIABLE", "CALL", "META"])

class adderRef ():

    def __init__(self, type: TYPES, name=None, lines=None, begin_line=None, end_line=None) -> None:
        self.type = type
        self.lines = lines
        self.begin_line = begin_line
        self.end_line = end_line
        self.name = name

    def get_original(self):
        if self.type == TYPES.FUNCTION:
            return self._get_orginal_function()
        elif self.type == TYPES.VARIABLE:
            return self._get_original_variable()
        raise ValueError(f"Unknown Type: {self.type}") 

    def _get_original_function(self):
        return self.begin_line, self.end_line, self.lines

    def _get_original_variable(self):
        return self.begin_line, self.lines

if __name__ == "__main__":
    print()
    # print(ref.get_mutated_line("%spi0", "%spi1"))