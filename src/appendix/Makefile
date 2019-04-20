all: mueller-report-appendix.pdf

mueller-report-appendix.pdf: main.tex
	latexmk \
		-pdf \
		-output-directory="build" \
		-pdflatex='xelatex -interaction=nonstopmode --shell-escape %O %S' \
		-xelatex \
		-use-make \
		main.tex
	mkdir -p ../../products
	mv build/main.pdf ../../docs/products/mueller-report-appendix.pdf
	latexmk -c
