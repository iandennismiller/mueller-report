# Mueller Report, Open Source Edition

KINDLEBIN=~/Library/Code/KindleGen_Mac_i386_v2_9/kindlegen

all: volume-1 volume-2 appendix complete summaries

volume-1:
	cd volume-1 && make all clean

volume-2:
	cd volume-2 && make all clean

appendix:
	cd appendix && make all clean

complete:
	cd complete && make all clean

summaries:
	cd summaries && make all clean

spellcheck:
	cd spellcheck && make spelltest

html:
	cd volume-1 && make build/main.html clean
	cd volume-2 && make build/main.html clean
	cd appendix && make build/main.html clean
	cd complete && make build/main.html clean
	cd summaries && make build/main.html clean

pdf:
	cd volume-1 && make build/main.pdf clean
	cd volume-2 && make build/main.pdf clean
	cd appendix && make build/main.pdf clean
	cd complete && make build/main.pdf clean
	cd summaries && make build/main.pdf clean

epub:
	cd volume-1 && make build/main.epub clean
	cd volume-2 && make build/main.epub clean
	cd appendix && make build/main.epub clean
	cd complete && make build/main.epub clean
	cd summaries && make build/main.epub clean

clean:
	cd volume-1 && make clean
	cd volume-2 && make clean
	cd appendix && make clean
	cd complete && make clean
	cd summaries && make clean

kindle:
	-cd ../docs && $(KINDLEBIN) -c2 mueller-report-vol-1.html
	-cd ../docs && $(KINDLEBIN) -c2 mueller-report-vol-2.html
	-cd ../docs && $(KINDLEBIN) -c2 mueller-report-appendix.html
	-cd ../docs && $(KINDLEBIN) -c2 mueller-report.html
	-cd ../docs && $(KINDLEBIN) -c2 mueller-report-summaries.html

.PHONY: volume-1 volume-2 appendix spellcheck clean html pdf epub kindle summaries
