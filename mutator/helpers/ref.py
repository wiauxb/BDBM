
class ref:

    def __init__(self, line_num, line) -> None:
        self.line_num = line_num
        self.line = line

    def __str__(self) -> str:
        return f"{self.line_num}: {self.line}"
