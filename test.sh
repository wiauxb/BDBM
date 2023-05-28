#!/bin/bash
cp s2e/projects/string/binary s2e/projects/string/s2e-out/binary 
just lift-trace string

just mutate string strings base64 --ncuts -1
just mutate string sys_adder --number_add 14
just mutate string basic_if --words dergbjzeka zefiĵht Premier zefiĵht okiojvi,er troisieme okiojvi,er okiojvi,er dergbjzeka Premier Deuxième
just mutate string strings xor --ncuts -1 --text
just mutate string random_if --max_random 2 --number 5
just mutate string escape vm
just mutate string clean_adder --number_add 2
just mutate string escape traced
just mutate string strings split --ncuts 13
just mutate string escape envvar --var_name DEBUG GDB VM_ENABLED
just mutate string replace_puts

just link_recompile string mutator/strings/bytecodes/base64.bc mutator/escape/detect.bc
just exec-mutated string