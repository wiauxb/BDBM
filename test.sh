#!/bin/bash
cp s2e/projects/eval/binary s2e/projects/eval/s2e-out/binary 
just lift-trace eval

just mutate eval strings split --ncuts 10
just mutate eval sys_adder --number_add 19
just mutate eval replace_puts
just mutate eval clean_adder --number_add 3
just mutate eval basic_if --words okiojvi,er okiojvi,er Premier dergbjzeka dergbjzeka Premier Premier Premier troisieme zefiĵht Premier zefiĵht zefiĵht dergbjzeka zefiĵht 
just mutate eval strings xor --ncuts -1 > output.txt
# just mutate eval strings base64 --ncuts -1
# just mutate eval random_if --max_random 17 --number 6

just link_recompile eval mutator/strings/bytecodes/base64.bc mutator/escape/detect.bc