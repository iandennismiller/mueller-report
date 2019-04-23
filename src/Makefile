# Mueller Report, Open Source Edition

all: volume-1 volume-2 appendix

volume-1:
	cd volume-1 && make

volume-2:
	cd volume-2 && make

appendix:
	cd appendix && make

TEX_FILES = volume-1/introduction.tex \
	volume-1/investigation.tex

spellcheck: $(addsuffix .spchk,$(basename $(TEX_FILES)))

%.spchk: %.tex
	@aspell \
		--encoding=UTF-8 \
		--lang=en \
		--personal=./aspell/.aspell.en.per \
 		check $<

.PHONY: volume-1 volume-2 appendix spellcheck
