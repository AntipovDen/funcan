#!/bin/bash

PAPER=${PWD##*/}
if [[ "$1" == "clean" ]]
then
    echo "Cleaning paper $PAPER"
    rm -f $PAPER.pdf *.aux *.toc *.blg *.bbl *.log
else
    echo "Compiling paper $PAPER"
    pdflatex $PAPER
    bibtex $PAPER
    pdflatex $PAPER
    pdflatex $PAPER
    pdflatex $PAPER
fi
