all: build/main.pdf

build/main.pdf: main.tex
	latexmk \
		-pdf \
		-output-directory="build" \
		-pdflatex='xelatex -interaction=nonstopmode --shell-escape %O %S' \
		-xelatex \
		-use-make \
		main.tex
	cp build/main.pdf ../docs/mueller-report-vol-1.pdf

.PHONY: build/main.pdf
