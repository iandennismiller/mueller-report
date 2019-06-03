# This common Makefile must be included from src/*/Makefile

all: build/main.pdf build/main.epub build/main.html

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
	rm -f *.html

build/main.html: main.tex
	mkdir -p build ../../docs/images
	htlatex main.tex "bookstyle,fn-in,charset=utf-8" " -cunihtf -utf8"

	sed -e 's/\<!-- fn-in,charset=utf-8,html,xhtml --\>/\<meta name="viewport" content="width=device-width, initial-scale=1.0"\>/' main.html > main.html.new
	mv main.html.new main.html

	sed -e 's/\<p class="noindent" \>__________\<\/p\>/\<hr width="10%"\>/' main.html > main.html.new
	mv main.html.new main.html

	sed -e 's/_ _/_■_/g' main.html > main.html.new
	mv main.html.new main.html

	sed -e 's/\([■_]\{2,\}\)/\<span class="redacted"\>\1\<\/span\>/g' main.html > main.html.new
	mv main.html.new main.html

	sed -e 's/_■_/_ _/g' main.html > main.html.new
	mv main.html.new main.html

	mv main.html build/main.html
	cp build/main.html ../../docs/$(FILENAME).html
	-cp images/* ../../docs/images

clean:
	rm -f *.html \
		*.aux \
		*.png \
	 	*.4ct \
		*.4tc \
		*.css \
		*.dvi \
		*.idv \
		*.lg \
		*.log \
		*.ncx \
		*.tmp \
		*.xref \
		*.xwm \
		*.opf
	rm -rf main-epub
	rm -rf build

.PHONY: build/main.pdf build/main.epub build/main.html clean all
