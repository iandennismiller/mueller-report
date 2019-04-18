all: volume-1.pdf

volume-1.pdf: volume-1.tex
	latexmk \
		-output-directory="build" \
		-pdf \
		-pdflatex="pdflatex -interaction=nonstopmode" \
		-use-make \
		volume-1.tex
	mkdir -p products
	mv build/volume-1.pdf products
	latexmk -c

clean:
	latexmk -CA
