#!/bin/bash
cp s2e/projects/string/binary s2e/projects/string/s2e-out/binary 
just lift-trace string

just mutate string escape traced
just mutate string replace_puts
just mutate string basic_if --words okiojvi,er Premier Premier troisieme troisieme zefiĵht okiojvi,er 
just mutate string sys_adder --number_add 11
just mutate string strings split --ncuts 8 --text
just mutate string strings xor --ncuts -1 --text
just mutate string strings base64 --ncuts -1 --text
just mutate string escape vm

just link_recompile string mutator/strings/bytecodes/base64.bc mutator/escape/detect.bc