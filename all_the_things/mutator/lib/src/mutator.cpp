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

Function *create_fwrite_repl(Module *module, LLVMContext &llvm_context){

    FunctionType *FputcType = FunctionType::get(
        IntegerType::getInt32Ty(llvm_context),
        {Type::getInt32Ty(llvm_context), Type::getInt32Ty(llvm_context)},
        false);
    FunctionCallee FputcFunc = module->getOrInsertFunction("fputc", FputcType);

    FunctionType *ftype = FunctionType::get(Type::getInt32Ty(llvm_context), {
                                            Type::getInt32Ty(llvm_context),
                                            Type::getInt32Ty(llvm_context),
                                            Type::getInt32Ty(llvm_context),
                                            Type::getInt32Ty(llvm_context)}, false);
    Function *fwriteRepl = Function::Create(ftype, Function::ExternalLinkage, "fwrite_repl", module);

    // Loop to replace fwrite with fputc
    BasicBlock *entryBlock = BasicBlock::Create(llvm_context, "entry", fwriteRepl);
    BasicBlock *loopHeaderBlock = BasicBlock::Create(llvm_context, "loop.header", fwriteRepl);
    BasicBlock *loopBodyBlock = BasicBlock::Create(llvm_context, "loop.body", fwriteRepl);
    BasicBlock *loopExitBlock = BasicBlock::Create(llvm_context, "loop.exit", fwriteRepl);

    IRBuilder<> Builder(llvm_context);

    // Set up the entry block
    Builder.SetInsertPoint(entryBlock);
    Argument *ptr = fwriteRepl->getArg(0);
    ptr->setName("ptr");
    Argument *size = fwriteRepl->getArg(1);
    size->setName("size");
    Argument *nmemb = fwriteRepl->getArg(2);
    nmemb->setName("nmemb");
    Argument *filePtr = fwriteRepl->getArg(3);
    filePtr->setName("filePtr");
    
    Value *numChar = Builder.CreateMul(size, nmemb);
    Builder.CreateBr(loopHeaderBlock);
    Builder.SetInsertPoint(loopHeaderBlock);

    // Loop counter variable
    PHINode *counter = Builder.CreatePHI(Type::getInt32Ty(llvm_context), 2, "counter");
    counter->addIncoming(Builder.getInt32(0), entryBlock);

    // Condition (counter < size * nmemb)
    Value *condition = Builder.CreateICmpSLT(counter, numChar, "condition");
    Builder.CreateCondBr(condition, loopBodyBlock, loopExitBlock);

    // Loop body
    Builder.SetInsertPoint(loopBodyBlock);

    // Load the character from ptr + counter
    Value *charPtr = Builder.CreateGEP(Type::getInt8Ty(llvm_context),
                                    Builder.CreateIntToPtr(ptr, Type::getInt8PtrTy(llvm_context)),
                                    {counter});
    // Value *loadedChar = Builder.CreateLoad(Type::getInt8Ty(llvm_context), charPtr);
    Value *loadedChar = Builder.CreateLoad(Type::getInt8Ty(llvm_context), Builder.CreateIntToPtr(charPtr, Type::getInt8PtrTy(llvm_context)));

    // Call fputc with the loaded character
    CallInst *FputcCall = Builder.CreateCall(FputcFunc, {Builder.CreateSExt(loadedChar, Type::getInt32Ty(llvm_context)), filePtr});

    // Increment the counter
    Value *incrementedCounter = Builder.CreateAdd(counter, Builder.getInt32(1), "inc");
    counter->addIncoming(incrementedCounter, loopBodyBlock);

    Builder.CreateBr(loopHeaderBlock);

    // Loop exit block
    Builder.SetInsertPoint(loopExitBlock);
    Builder.CreateRet(Builder.getInt32(0));

    return fwriteRepl;
}

int replace_fwrite(string path, string output_path)
{
    LLVMContext llvm_context;
    SMDiagnostic err;
    unique_ptr<Module> module = parseIRFile(path, err, llvm_context);
    if (!module) {
        string error;
        throw runtime_error{error};
    }

    Function *fwriteRempl = create_fwrite_repl(module.get(), llvm_context);

    if (!fwriteRempl) {
        errs() << "Error creating loop function\n";
        return 1;
    }

    Function *real_fwrite = module->getFunction("fwrite");
    if (!real_fwrite){
        errs() << "Cannot find the fwrite declaration.\n";
        return 1;
    }

    fwriteRempl->copyAttributesFrom(real_fwrite);
    real_fwrite->replaceAllUsesWith(fwriteRempl);
    real_fwrite->eraseFromParent();

    std::error_code EC;
    llvm::raw_fd_ostream LLoutputFile(output_path, EC, llvm::sys::fs::OF_None);
    if (!EC) {
        module->print(LLoutputFile, nullptr);
        LLoutputFile.flush();
    }
    else
    {
        return 1;
    }
    return 0;
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
