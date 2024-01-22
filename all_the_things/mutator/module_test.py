import llvmlite.binding as llvm
import llvmlite.ir as ir
import os

from dotenv import load_dotenv
load_dotenv(".env")
s2e_dir = os.environ.get('S2EDIR')

def generate_extra_module():
    module = ir.Module(name="test")
    int8 = ir.IntType(8)
    int32 = ir.IntType(32)
    to_print = "hijacked\n\00"
    string = ir.ArrayType(int8, len(to_print))
    string_var = string(to_print)
    # global_to_print = ir.GlobalVariable(module, string, "str")
    # global_to_print.global_constant = True
    # global_to_print.initializer = string_var
    puts = ir.Function(module, ir.FunctionType(int32, (ir.PointerType(int8),)), name="puts")
    func = ir.Function(module, ir.FunctionType(int32, ()), name="func_test")
    block =func.append_basic_block(name="entry")
    builder = ir.IRBuilder(block)
    var_ptr = builder.getelemptr(string_var, 0, 0)
    result = builder.call(puts, (var_ptr, ))
    builder.ret(result)
    return module


if __name__ == "__main__":
    recovered_bitcode = s2e_dir + "/projects/" + "hello" + "/s2e-out/recovered.bc"
    with open(recovered_bitcode, 'br') as ll_file:
        recovered = llvm.parse_bitcode(ll_file.read())
        recovered.verify()
    if recovered is None:
        raise IOError(f"{recovered_bitcode} not a valid LLVM bytecode.")
    # print(recovered)
    # print(recovered.get_function("main"))
    print(generate_extra_module())