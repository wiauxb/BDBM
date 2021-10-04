#include "FunctionLog.h"
#include "ModuleSelector.h"
#include "util.h"
#include <s2e/ConfigFile.h>
#include <s2e/Plugins/CorePlugin.h>
#include <s2e/Plugins/ModuleExecutionDetector.h>
#include <s2e/S2E.h>
#include <s2e/Utils.h>
#include <cassert>
#include <iostream>
#include <llvm/Constants.h>
#include <llvm/Function.h>
#include <llvm/LLVMContext.h>
#include <llvm/Metadata.h>

using namespace binrec;

namespace s2e::plugins {
S2E_DEFINE_PLUGIN(FunctionLog, "Log register values at basic block start (don't use with symbolic execution)",
                  "FunctionLog", "ModuleSelector");

void FunctionLog::initialize() {
    ti = TraceInfo::get();

    ModuleSelector *selector = (ModuleSelector *)(s2e()->getPlugin("ModuleSelector"));
    selector->onModuleLoad.connect(sigc::mem_fun(*this, &FunctionLog::slotModuleLoad));
    selector->onModuleExecute.connect(sigc::mem_fun(*this, &FunctionLog::slotModuleExecute));

    m_functionMonitor = static_cast<FunctionMonitor *>(s2e()->getPlugin("FunctionMonitor"));

    s2e()->getDebugStream() << "FunctionLog: Plugin initialized\n";
    m_callerPc = 0;
    ti->functionLog.entries.push_back(0);
}

FunctionLog::~FunctionLog() {
    if (ti->functionLog.entries.back() == 0) {
        ti->functionLog.entries.pop_back();
    }

    if (ti.use_count() == 1) {
        std::ofstream traceInfoOut(s2e()->getOutputFilename(TraceInfo::defaultFilename).c_str(),
                                   std::ios::out | std::ios::trunc);
        traceInfoOut << *ti;
    }
}

void FunctionLog::slotModuleLoad(S2EExecutionState *state, const ModuleDescriptor &module) {
    s2e()->getDebugStream(state) << "FunctionLog: ==> ModulePid: " << module.Pid << '\n';

    FunctionMonitor::CallSignal *cs = m_functionMonitor->getCallSignal(state, -1, module.Pid);
    cs->connect(sigc::mem_fun(*this, &FunctionLog::onFunctionCall));
}

void FunctionLog::slotModuleExecute(S2EExecutionState *state, uint64_t pc) {
    if (!ti->functionLog.entries.back()) {
        s2e()->getDebugStream(state) << "FunctionLog: new entry " << hexval(pc) << '\n';
        ti->functionLog.entries.back() = pc;
    }

    m_modulePcs.insert(pc);

    m_executedBBPc = pc;

    if (!m_callStack.empty()) {
        ti->functionLog.entryToTbs[m_callStack.top()].insert(pc);
        if (m_callerPc) {
            ti->functionLog.callerToFollowUp.insert(std::make_pair(m_callerPc, pc));
            m_callerPc = 0;
        }
    } else {
        s2e()->getWarningsStream(state) << "FunctionLog: callStack is empty: " << hexval(pc) << "\n";
    }
}

void FunctionLog::onFunctionCall(S2EExecutionState *state, FunctionMonitorState *fns) {
    uint64_t caller = state->getTb()->pcOfLastInstr;
    uint64_t pc = state->getPc();

    m_callStack.push(pc);
    FUNCMON_REGISTER_RETURN_A(state, fns, FunctionLog::onFunctionReturn, caller, pc);
}

void FunctionLog::onFunctionReturn(S2EExecutionState *state, uint64_t func_caller, uint64_t func_begin) {
    if (m_callStack.empty()) {
        s2e()->getWarningsStream() << "FunctionLog: Returning from func: " << func_begin
                                   << ", but call stack is empty.\n";
    }

    uint32_t top = m_callStack.top();
    m_callStack.pop();
    if (top != func_begin) {
        // That's required because of how dynamic libraries are called. Without this, there can be an extra return
        // address on the stack. Why? And is this way of doing it correct? Investigate...
        if (m_callStack.empty()) {
            s2e()->getWarningsStream() << "FunctionLog: Couldn't match caller func: " << top
                                       << " with returned func: " << func_begin << " and call stack is empty now.\n";
            m_callStack.push(top);
        } else if (func_begin != m_callStack.top()) {
            s2e()->getWarningsStream() << "FunctionLog: Couldn't match caller func: " << top
                                       << " with returned func: " << func_begin << "\n";
            m_callStack.push(top);
            return;
        } else {
            m_callStack.pop();
        }
    }

    if (func_begin == ti->functionLog.entries.back()) {
        // So you might wanna ask, why reset this? Why can we have multiple entry pcs? That is a very good question to
        // ask. To answer this, understand how init_env.so works: init_env.so uses LD_PRELOAD to hook into the execution
        // of our binary and enables tracing right before calling __libc_start_main. That means, we do not trace the
        // actual entry point of the binary. There might be an elegant solution to this (new S2E for example, but maybe
        // old S2E can also be convinced to trace a specific binary without init_env.so). In any case, __libc_start_main
        // calls __libc_csu_init (which calls global constructors) and then main. We want to be aware of both calls and
        // in which order they appear (so we can essentially generate our own version __libc_start_main). So when we
        // return from the first entry pc, reset this so we can record the next "entry", too.
        ti->functionLog.entries.push_back(0);
        s2e()->getDebugStream(state) << "FunctionLog: return from entry " << hexval(func_begin) << " at "
                                     << hexval(state->getPc()) << '\n';
    }

    m_callerPc = func_caller;
    std::pair<uint32_t, uint32> entryToCaller(func_begin, func_caller);
    std::pair<uint32_t, uint32> entryToReturn(func_begin, m_executedBBPc);
    ti->functionLog.entryToCaller.insert(entryToCaller);
    ti->functionLog.entryToReturn.insert(entryToReturn);
}
} // namespace s2e::plugins