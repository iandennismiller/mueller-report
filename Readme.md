# Open Source Mueller Report

**Open Source Mueller Report** will be an enhanced edition of the DOJ release in order to support public discussion.

- Volume I: Russia - [[PDF]](https://iandennismiller.github.io/mueller-report/mueller-report-vol-1.pdf) [[ePub]](https://iandennismiller.github.io/mueller-report/mueller-report-vol-1.epub)
- Volume II: Obstruction - (in progress)
- Appendix - [[PDF]](https://iandennismiller.github.io/mueller-report/mueller-report-appendix.pdf) [[ePub]](https://iandennismiller.github.io/mueller-report/mueller-report-appendix.epub)

[![GitHub contributors](https://img.shields.io/github/contributors-anon/iandennismiller/mueller-report.svg)](https://github.com/iandennismiller/mueller-report/)
[![Gitter](https://img.shields.io/gitter/room/iandennismiller/mueller-report.svg)](https://gitter.im/open-source-mueller-report/community)
[![Build Status](https://travis-ci.org/iandennismiller/mueller-report.svg?branch=master)](https://travis-ci.org/iandennismiller/mueller-report)
[![GitHub issues](https://img.shields.io/github/issues-raw/iandennismiller/mueller-report.svg)](https://github.com/iandennismiller/mueller-report/issues)

### Discussion

- website: https://iandennismiller.github.io/mueller-report
- chatroom: https://gitter.im/open-source-mueller-report
- forum: https://www.reddit.com/r/OpenSourceMueller

## Motivation

The U.S. Department of Justice (DOJ) released a redacted version of the Mueller Report on April 18, 2019.
The DOJ release suffers from [technical limitations that interfere with public discussion](https://www.pdfa.org/a-technical-and-cultural-assessment-of-the-mueller-report-pdf/) about the Mueller investigation.
For example:

- [the DOJ PDF cannot be searched](https://www.pdfa.org/even-with-ocr-the-mueller-report-pdf-isnt-fully-searchable/)
- passages of text in the DOJ PDF cannot be highlighted or copied-and-pasted
- the table of contents in the DOJ PDF is not "clickable"
- the page numbers in the footer do not match the DOJ PDF page numbers
- the DOJ PDF appears to be derived from an optically-scanned copy and, consequently, there are visual artifacts in the PDF
- the DOJ PDF is a large file (137 MB)

[Open Source Mueller Report](https://github.com/iandennismiller/mueller-report) is an effort to correct those technical limitations by providing a "clean room" reimplementation of the document from source code.

## Features

- high fidelity text; not deteriorated by photocopy, redaction, and optical character recognition
- supports full-text search
- split document into Volume 1 and Volume 2
- PDF page numbering matches content page numbering
- descriptive page headers with section name
- working hyperlinks for table of contents and footnotes
- redactions are represented explicitly in the source code
- reduced file size (under 5 MB)
- canonical URL with greater permanence than DOJ distribution

### Limitations

- *under development; not complete yet*
- might include typos and other errors; [please help if you find anything!](https://github.com/iandennismiller/mueller-report/blob/master/Contributing.md#contributing)
- page numbers do not correspond to original Mueller document or to DOJ release
- redacted boxes are interrupted by spaces; they are not continuous
- redacted boxes, which are based on lorem ipsum text, are suggestive of underlying word length and structure although no information about this is known
- other cosmetic differences

## Contributing

The document is written with LaTeX.
If you know a little bit of LaTeX and you know how to use Github, then [you can help with the project](https://github.com/iandennismiller/mueller-report/blob/master/Contributing.md#contributing).
There are several kinds of **helper roles** that enable collaborative editing of the document.

### Helper roles

- [copy-paster](https://github.com/iandennismiller/mueller-report/blob/master/Contributing.md#helper-roles): locate a section heading and copy-paste text from the PDF
- [footnote adder](https://github.com/iandennismiller/mueller-report/blob/master/Contributing.md#helper-roles): add footnotes and fill them with content from the PDF
- [redacter](https://github.com/iandennismiller/mueller-report/blob/master/Contributing.md#helper-roles):  adjust length of redacted boxes to be comparable to the original
- [proof reader](https://github.com/iandennismiller/mueller-report/blob/master/Contributing.md#helper-roles): fix typographic errors, spelling, and other mistakes
- [LaTeX guru](https://github.com/iandennismiller/mueller-report/blob/master/Contributing.md#helper-roles): tweak `includes.tex` to make the document look like the original while providing enhanced functionality

### How to Contribute

[Learn how to help on the Contributing page.](https://github.com/iandennismiller/mueller-report/blob/master/Contributing.md#contributing)

## Build Instructions

The document can be rendered with TeX Live and MacTeX.

```
cd src && make all
```

The results will be written to `docs/products`.

### Debian/Ubuntu Requirements

Ensure the following packages are installed.

```
apt install aspell texlive-xetex latexmk
```

## See also

- [Special Counsel's Office](https://www.justice.gov/sco)
- [Mueller Report, Redacted, 2019-04-18](https://www.justice.gov/storage/report.pdf)
- [XeTex](http://xetex.sourceforge.net/)
- [LaTeX censor package](https://ctan.org/pkg/censor)
- [Tesseract OCR](https://github.com/tesseract-ocr/tesseract)
- [OCRmyPDF](https://github.com/jbarlow83/OCRmyPDF)
- [Poppler](https://poppler.freedesktop.org/)
- [LaTeX-Mk](http://latex-mk.sourceforge.net/)
- [Water.css](https://kognise.github.io/water.css/)

## License

Open Source Mueller Report

[(CC) 2019 Ian Dennis Miller](https://github.com/iandennismiller/mueller-report/blob/master/License.md)

**Attribution 3.0 Unported (CC BY 3.0)**

https://creativecommons.org/licenses/by/3.0/

> You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
