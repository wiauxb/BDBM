#!/bin/bash

PWD=$(pwd)
mkdir -p graphs/png
mkdir -p graphs/pdf

for f in $(find . -name *.gv); do
  echo $f
  timeout 120 dot $f -Tpng -O
  timeout 120 dot $f -Tpdf -O
  mv $f.png graphs/png
  mv $f.pdf graphs/pdf
done
