#include <iostream>
#include <fstream>
#include <sstream>
#include <list>
#include "mutator.hpp"
// #include "debug_hook.hpp"

#include <llvm/IRReader/IRReader.h>
#include <llvm/IR/IRPrintingPasses.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/IR/Module.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/IR/InstrTypes.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/Bitcode/BitcodeWriter.h>
#include <llvm/Support/FileSystem.h>
#include <llvm/Support/Debug.h>


using namespace llvm;
using namespace std;

#define PROJECT_PATH s2e_dir + "/projects/" + project + "/s2e-out/"

static string s2e_dir;
static string project;
static unique_ptr<Module> project_module;
static LLVMContext llvm_context;
static SMDiagnostic err;

void init_modu(string s2e, string proj){
    s2e_dir = s2e;
    project = proj;
    project_module = parseIRFile(PROJECT_PATH + "recovered.bc", err, llvm_context);
    if (!project_module) {
        errs() << "Cannot load the module from " << PROJECT_PATH + "recovered.bc\n";
        string error;
        throw runtime_error{error};
    }
    outs() << "Module successfully loaded\n";
}

void close_modu(){
    outs() << "Let's say I close the module\n";
    // project_module->~Module();
}

FunctionCallee getputsFunction(Module *module){
    // Find or declare the puts function
    auto *putsFuncType = FunctionType::get(Type::getInt32Ty(module->getContext()), Type::getInt8PtrTy(module->getContext()), true);
    return module->getOrInsertFunction("puts", putsFuncType);
}

StoreInst *find_last_store(Value *value){
    StoreInst *last_store = nullptr;
    for (User *user: value->users()) {
        if (isa<StoreInst>(user)){
            last_store = dyn_cast<StoreInst>(user);
        }
    }
    return last_store;
}

list<int> find_maybe_string_addresses(){
    
    list<int> rep;

    // DBG_HOOK;

    Function *mainFunc = project_module->getFunction("Func_main");
    for (BasicBlock &BB: *mainFunc) {
        for(Instruction &inst: BB) {
            if (isa<LoadInst>(&inst)){
                LoadInst *load = dyn_cast<LoadInst>(&inst);
                StoreInst *store_inst = find_last_store(load->getPointerOperand());
                if (store_inst){
                    Value * val = store_inst->getValueOperand();
                    if (ConstantInt* constantInt = dyn_cast<ConstantInt>(val)){
                        const APInt& intValue = constantInt->getValue();
                        int integer = intValue.getSExtValue();
                        rep.push_back(integer);
                    }
                }
            }
        }
    }
    return rep;
}

int run()
{
    // list<int> addresses = find_maybe_string_addresses();
    // for (auto it = addresses.begin(); it != addresses.end(); ++it){
    //     outs() << *it << "\n";
    // }


    LLVMContext llvm_context;
    SMDiagnostic err;
    unique_ptr<Module> module = parseIRFile("recovered.bc", err, llvm_context);
    if (!module) {
        string error;
        // raw_string_ostream error_stream{error};
        // err.print("binrec-lift", error_stream);
        throw runtime_error{error};
    }

    Function *mainFunc = module->getFunction("Func_main");
    for (BasicBlock &BB: *mainFunc) {
        for(Instruction &inst: BB) {
            if (isa<ReturnInst>(&inst)) {
                IRBuilder<> builder(&inst);
                Constant *helloWorldStr = builder.CreateGlobalStringPtr("You got Hijacted !");
                builder.CreateCall(getputsFunction(&*module), {helloWorldStr});
            }
        }
    }
    

    // Save the modified module to a bitcode file
    std::error_code EC;
    llvm::raw_fd_ostream outputFile("output.bc", EC, llvm::sys::fs::OF_None);

    if (EC) {
        llvm::errs() << "Error opening file for writing: " << EC.message() << "\n";
        return 1;
    }

    WriteBitcodeToFile(*module, outputFile);
    return 0;
}
