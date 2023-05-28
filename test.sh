#!/bin/bash
cp s2e/projects/string/binary s2e/projects/string/s2e-out/binary 
just lift-trace string

just mutate string clean_adder --number_add 1
just mutate string replace_puts
just mutate string basic_if --words Deuxième dergbjzeka okiojvi,er Deuxième troisieme Premier zefiĵht dergbjzeka okiojvi,er dergbjzeka troisieme troisieme 
just mutate string escape envvar --var_name DEBUG GDB VM_ENABLED
just mutate string strings split --ncuts 5

just link_recompile string mutator/strings/bytecodes/base64.bc mutator/escape/detect.bc
just exec-mutated string