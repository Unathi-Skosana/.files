#!/bin/bash

for p in $(find *pdf)
do
    fn=$(basename $p ".pdf")
    inkscape $p --export-eps=$fn.eps
    echo $fn
done
