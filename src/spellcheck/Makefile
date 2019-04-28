# Mueller Report, Open Source Edition
# Spell Check

TEX_FILES = ../volume-1/title.tex \
	../volume-1/table-of-contents.tex \
	../volume-1/introduction.tex \
	../volume-1/executive-summary.tex \
	../volume-1/investigation.tex \
	../volume-1/active-measures.tex \
	../volume-1/hacking-dumping.tex \
	../volume-1/russian-links-to-trump.tex \
	../volume-1/decisions.tex \
	../volume-2/introduction.tex \
	../volume-2/executive-summary.tex \
	../volume-2/background-principles.tex \
	../volume-2/factual-results.tex \
	../volume-2/legal-defenses-of-president.tex \
	../volume-2/conclusion.tex

spellcheck: $(addsuffix .spchk,$(basename $(TEX_FILES)))

%.spchk: %.tex
	@aspell \
		--encoding=UTF-8 \
		--lang=en \
		--personal=./.aspell.en.per \
 		check $<

.PHONY: spellcheck
