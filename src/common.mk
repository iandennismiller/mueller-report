# This common Makefile is included from src/*/Makefile

all: build/main.pdf build/main.epub

build/main.pdf: main.tex
	latexmk \
		-pdf \
		-output-directory="build" \
		-pdflatex='xelatex -interaction=nonstopmode --shell-escape %O %S' \
		-xelatex \
		-use-make \
		main.tex
	cp build/main.pdf ../../docs/$(FILENAME).pdf

build/main.epub: main.tex
	mkdir -p build
	tex4ebook main.tex
	mv main.epub build/main.epub
	cp build/main.epub ../../docs/$(FILENAME).epub

build/main.html: main.tex
	mkdir -p build
	tex4ht main.tex
	mv main.html build/main.html
	cp build/main.html ../../docs/$(FILENAME).html

clean:
	rm -f *.html \
		*.aux \
		*.png \
	 	main.4ct \
		main.4tc \
		main.css \
		main.dvi \
		main.idv \
		main.lg \
		main.log \
		main.ncx \
		main.tmp \
		main.xref \
		main.xwm \
		content.opf
	rm -rf main-epub
	rm -rf build

.PHONY: build/main.pdf build/main.epub build/main.html clean all
