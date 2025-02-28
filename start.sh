#!/bin/bash

# Initial build (still needed)
latexmk -pdf -file-line-error -interaction=nonstopmode -synctex=1 resume.tex

# Monitor for file changes and rebuild (that's all we need)
while inotifywait -e modify,move,create,delete -r /project; do
    echo "File change detected. Rebuilding..."
    latexmk -pdf -file-line-error -interaction=nonstopmode -synctex=1 resume.tex
done
