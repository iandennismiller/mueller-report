all: mueller-report-vol-1.pdf

mueller-report-vol-1.pdf: main.tex
	latexmk \
		-pdf \
		-output-directory="build" \
		-pdflatex='xelatex -interaction=nonstopmode --shell-escape %O %S' \
		-xelatex \
		-use-make \
		main.tex
	mkdir -p ../../products
	mv build/main.pdf ../../products/mueller-report-vol-1.pdf
	latexmk -c
