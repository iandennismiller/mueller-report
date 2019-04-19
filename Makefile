all: mueller-report-vol-1.pdf

mueller-report-vol-1.pdf:
	cd src/volume-1 && make

.PHONY: mueller-report-vol-1.pdf
