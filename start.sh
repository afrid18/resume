#!/bin/bash

# Clean up old auxiliary files on start
latexmk -C

# -pvc: Continuous preview mode
# -view=none: Don't try to open a PDF viewer inside Docker
# -output-directory: Keep your root folder clean
latexmk -pdf \
    -file-line-error \
    -interaction=nonstopmode \
    -synctex=1 \
    -output-directory=build \
    -pvc \
    -view=none \
    resume.tex
