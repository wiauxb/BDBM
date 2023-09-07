import enum

TYPES = enum.Enum("TYPES", ["FUNCTION", "VARIABLE", "CALL", "META"])

class adderRef ():
    """Class that represents a reference to a function or a variable."""

    def __init__(self, type: TYPES, name=None, lines=None, begin_line=None, end_line=None) -> None:
        self.type = type
        self.lines = lines
        self.begin_line = begin_line
        self.end_line = end_line
        self.name = name

    def get_original(self):
        """Return the original function begin and end line number and lines
        or variable line number and line"""

        if self.type == TYPES.FUNCTION:
            return self._get_original_function()
        elif self.type == TYPES.VARIABLE:
            return self._get_original_variable()
        raise ValueError(f"Unknown Type: {self.type}") 

    def _get_original_function(self):
        return self.begin_line, self.end_line, self.lines

    def _get_original_variable(self):
        return self.begin_line, self.lines
