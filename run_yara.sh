#!/bin/bash

echo "-------------------------------"
echo -e "\tORIGINAL: "
for rule in programs/yara/*.yar; do
    yara $rule s2e/projects/$1/binary 2>/dev/null
done

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo -e "\tMUTATED:"
for rule in programs/yara/*.yar; do
    yara $rule s2e/projects/$1/s2e-out/mutations 2>/dev/null
done
echo "-------------------------------"