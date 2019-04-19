# Mueller Report, Open Source Edition

all: mueller-report-vol-1.pdf

mueller-report-vol-1.pdf:
	cd src/volume-1 && make

mueller-report-vol-2.pdf:
	cd src/volume-2 && make

.PHONY: mueller-report-vol-1.pdf mueller-report-vol-2.pdf
