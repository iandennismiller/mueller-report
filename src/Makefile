# Mueller Report, Open Source Edition

KINDLEBIN=~/Library/Code/KindleGen_Mac_i386_v2_9/kindlegen

all: volume-1 volume-2 appendix complete summaries clean

spellcheck:
	cd spellcheck && make spelltest

volume-1:
	cd volume-1 && make all

volume-2:
	cd volume-2 && make all

appendix:
	cd appendix && make all

complete:
	cd complete && make all

summaries:
	cd summaries && make all

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

.PHONY: all spellcheck volume-1 volume-2 appendix complete summaries clean kindle
