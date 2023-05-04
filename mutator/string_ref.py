import enum


TYPES = enum.Enum("Types", ["STORE", "SELECT"])

class stringRef:

    def __init__(self, type: TYPES, line_num, offset) -> None:
        self.type = type
        self.line_num = line_num
        self.offset = offset

        