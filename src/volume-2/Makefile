all: build/main.pdf

build/main.pdf: main.tex
	latexmk \
		-pdf \
		-output-directory="build" \
		-pdflatex='xelatex -interaction=nonstopmode --shell-escape %O %S' \
		-xelatex \
		-use-make \
		main.tex
	mkdir -p ../../products
	cp build/main.pdf ../../docs/products/mueller-report-vol-2.pdf

.PHONY: build/main.pdf
