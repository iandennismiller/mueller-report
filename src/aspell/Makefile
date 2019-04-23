# Mueller Report, Open Source Edition
# Spell Check

TEX_FILES = ../volume-1/introduction.tex \
	../volume-1/investigation.tex

spellcheck: $(addsuffix .spchk,$(basename $(TEX_FILES)))

%.spchk: %.tex
	@aspell \
		--encoding=UTF-8 \
		--lang=en \
		--personal=./.aspell.en.per \
 		check $<

.PHONY: spellcheck
