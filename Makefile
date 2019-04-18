all: volume-1.pdf

volume-1.pdf: volume-1.tex
	latexmk \
		-pdf \
		-output-directory="build" \
		-pdflatex="pdflatex -interaction=nonstopmode" \
		-use-make \
		volume-1.tex
	mkdir -p products
	mv build/volume-1.pdf products
	latexmk -c

# volume-1.pdf: volume-1.tex
# 	pdflatex volume-1.tex
# 	pdflatex volume-1.tex
# 	pdflatex volume-1.tex

clean:
	latexmk -CA

.PHONY: products
