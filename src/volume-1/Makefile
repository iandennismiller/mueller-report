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
	cp build/main.pdf ../../docs/products/mueller-report-vol-1.pdf
	latexmk -c

.PHONY: spellcheck build/main.pdf
