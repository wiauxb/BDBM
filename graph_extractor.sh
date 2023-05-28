#!/bin/bash

for dir in $(find . -mindepth 1 -maxdepth 1 -type d); do
  mkdir -p graphs/$dir/png
  mkdir -p graphs/$dir/pdf
  for f in $(find $dir -name *.gv); do
    echo $f
    timeout 120 dot $f -Tpng -O 
    timeout 120 dot $f -Tpdf -O
    mv $f.png graphs/$dir/png
    mv $f.pdf graphs/$dir/pdf
  done
done
