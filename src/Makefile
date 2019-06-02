# Mueller Report, Open Source Edition

all: volume-1 volume-2 appendix

volume-1:
	cd volume-1 && make all clean

volume-2:
	cd volume-2 && make all clean

appendix:
	cd appendix && make all clean

complete:
	cd complete && make all clean

spellcheck:
	cd spellcheck && make spelltest

clean:
	cd volume-1 && make clean
	cd volume-2 && make clean
	cd appendix && make clean
	cd complete && make clean

.PHONY: volume-1 volume-2 appendix spellcheck clean
