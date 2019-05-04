all: build/main.pdf

build/main.pdf: main.tex
	latexmk \
		-pdf \
		-output-directory="build" \
		-pdflatex='xelatex -interaction=nonstopmode --shell-escape %O %S' \
		-xelatex \
		-use-make \
		main.tex
	cp build/main.pdf ../../docs/mueller-report-appendix.pdf

build/main.epub: main.tex
	mkdir -p build
	tex4ebook main.tex
	mv main.epub build/main.epub
	cp build/main.epub ../../docs/mueller-report-appendix.epub

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

.PHONY: build/main.pdf build/main.epub epub clean
