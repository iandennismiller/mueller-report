# Open Source Mueller Report

The open source edition of the 2019 Mueller Report will provide a perfect duplicate of the DOJ release in order to support public discussion.

- [Volume I: Russia](https://github.com/iandennismiller/mueller-report/blob/master/products/mueller-report-vol-1.pdf)
- [Volume II: Obstruction](https://github.com/iandennismiller/mueller-report/blob/master/products/mueller-report-vol-2.pdf)

## Motivation

The U.S. Department of Justice (DOJ) released a redacted version of the Mueller Report on April 18, 2019.
The DOJ release suffers from several technical limitations that interfere with public discussion about the Mueller investigation.
For example:

- the PDF cannot be searched
- passages of text cannot be highlighted or copied-and-pasted
- the table of contents is not "clickable"
- the page numbers in the footer do not match the PDF page numbers
- the DOJ PDF appears to be derived from a photocopy and consequently there are visual artifacts in the PDF

This project is an effort to correct those technical limitations by providing a "clean room" reimplementation of the document from source code.

## Features

- high fidelity text; not deteriorated by photocopy, redaction, and optical character recognition
- supports full-text search
- split document into Volume 1 and Volume 2
- PDF page numbering matches content page numbering
- descriptive page headers with section name
- working hyperlinks for table of contents and footnotes
- redactions are represented explicitly in the source code
- canonical URL with greater permanence than DOJ distribution

## Contributing

The document is written with LaTeX.
If you know a little bit of LaTeX and you can use GitHub, then you can help with the project.

There are several kinds of helper roles that enable collaborative editing of the document.

Helper roles:

- **copy-paster**: locate a section heading and copy-paste text from the PDF.  The copy-paster should also add blank footnote tags.
- **footnote adder**: find the `\footnote{}` tags and fill them with content from the PDF
- **proof reader**: fix typographic errors, spelling, and other mistakes
- **redacter**: check, add, or unredact `\blackout{}` tags; also adjust length of redacted box to be comparable to the original
- **LaTeX guru**: tweak `includes.tex` to make the document look and behave like the original

### Starting Work

In order to avoid duplication of work, [please open a github issue](https://github.com/iandennismiller/mueller-report/issues) with the title of the section you are working on and your role for that section.
Be sure nobody has already created an issue for the role and section you will work on.

### Finishing Work

When you are done with the work, [please submit a pull request](https://github.com/iandennismiller/mueller-report/pulls) to close the issue you opened.

## Document Source Code Conventions

The document is written with LaTeX.
The following conventions are used throughout the document.

- each sentence in the source code is on its own line
- paragraphs are separated by a single blank line (i.e. 2 consecutive newlines)
- each top-level section is in a separate file referenced with  `\include{}`
- some symbols must be escaped with backslash: `%`, `#`, `@`, `$`, `&`, and `_`
- `\P` indicates a legal paragraph symbol
- `\S` indicates a legal section symbol
- `\hr` creates a horizontal rule
- `\blackout{lorem ipsum}` creates a black redacted box around some words
- `\footnote{lorem ipsum}` creates a footnote, which must start on its own line
    - the previous line must end with `%` to prevent newline
    - after the comment, the footnote number is noted; e.g. `% 63`
- `\textit{lorem ipsum}` creates italics
- `\textbf{lorem ipsum}` creates italics
- `\section{lorem ipsum}` is the top-level heading
- `\subsection{lorem ipsum}` is the second-level heading
- `\subsubsection{lorem ipsum}` is the third-level heading
- `\begin{quote}` indicates a block quote
- `\begin{enumerate}[i]` produces a list with lowercase roman numerals
    - `\item` is an individual list item
    - each item is indented with 4 spaces
    - sentences within an item are separated by newlines and are also indented

## Redacting template

The following text is an example for how redacted text will be represented in the working document.
It is expected that once ongoing matters have resolved, this document will become progressively unredacted.

    \blackout{Harm to Ongoing Matter: Lorem ipsum dolor sit amet, consectetur
        adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
        magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
        ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
        irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
        fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
        sunt in culpa qui officia deserunt mollit anim id est laborum.
    }

Without newlines:

    \blackout{Harm to Ongoing Matter: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.}

Unicode method for headings:

    [████████: Reason for Redaction]

## Un-redacting

This is a living document that will be updated over time.
As redacted passages are disclosed, the corresponding passages in this source code will be uncensored and the document will be re-rendered.

## Automated Text Extraction

The raw PDF obtained from the DOJ was processed with the open source tool `OCRmyPDF`, which uses the open source `Tesseract` OCR engine to perform optical character recognition upon PDF files.

    ocrmypdf mueller-report.pdf mueller-report-ocr.pdf

The `pdftotext` utility from `poppler` was used to extract all text to a separate file.

    pdftotext mueller-report-ocr.pdf mueller-report-ocr.txt

These documents are available in the repository:

- [mueller-report-ocr.txt](https://github.com/iandennismiller/mueller-report/blob/master/data/mueller-report-ocr.txt)
- [mueller-report-ocr.pdf](https://github.com/iandennismiller/mueller-report/blob/master/data/mueller-report-ocr.pdf)

## See also

- [Special Counsel's Office](https://www.justice.gov/sco)
- [Mueller Report, Redacted, 2019-04-18](https://www.justice.gov/storage/report.pdf)
- [XeTex](http://xetex.sourceforge.net/)
- [LaTeX censor package](https://ctan.org/pkg/censor)
- [Tesseract OCR](https://github.com/tesseract-ocr/tesseract)
- [OCRmyPDF](https://github.com/jbarlow83/OCRmyPDF)
- [Poppler](https://poppler.freedesktop.org/)
- [LaTeX-Mk](http://latex-mk.sourceforge.net/)

## License

Open Source Mueller Report

(CC) 2019 Ian Dennis Miller

**Attribution 3.0 Unported (CC BY 3.0)**

https://creativecommons.org/licenses/by/3.0/

> You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
