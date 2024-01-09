#!/bin/bash

echo "-------------------------------"
echo -e "\tORIGINAL: "
for rule in programs/yara/*.yar; do
    yara $rule all_the_things/binrec_module/s2e/projects/$1/binary 2>/dev/null
done

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo -e "\tMUTATED:"
for rule in programs/yara/*.yar; do
    yara $rule all_the_things/binrec_module/s2e/projects/$1/s2e-out/custom_recovered 2>/dev/null
done
echo "-------------------------------"