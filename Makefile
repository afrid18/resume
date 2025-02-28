# Default target
all: build

# Build the PDF
build:
	latexmk -pdf -file-line-error -interaction=nonstopmode -synctex=1 resume.tex

# Clean up temporary files
clean:
	latexmk -C

# View the PDF (using Zathura)
view: build
	zathura main.pdf &

# Build and get into the container
shell:
	docker run -it --rm -v $(PWD):/project my-latex-image bash

.PHONY: all build clean view shell
