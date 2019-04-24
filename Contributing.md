# Contributing

The document is written with LaTeX.
If you know a little bit of LaTeX and you know how to use Github, then you can help with the project.
There are several kinds of **helper roles** that enable collaborative editing of the document.

## Helper roles

- **copy-paster**: locate a section heading and copy-paste text from the PDF.  The copy-paster should also add [redactions](#redacting-template).
    - [See available copy-paster tasks](https://github.com/iandennismiller/mueller-report/issues?utf8=%E2%9C%93&q=is%3Aissue+is%3Aopen+label%3Acopy-paster+-label%3Aassigned)
- **footnote adder**: add [blank footnotes](#footnote-template) and fill them with content from the PDF. Also add [redactions](#redacting-template) where appropriate.
    - [See available footnote-adder tasks](https://github.com/iandennismiller/mueller-report/issues?q=is%3Aissue+is%3Aopen+label%3Afootnote-adder+-label%3Aassigned)
- **redacter**: adjust or unredact `\blackout{}` tags; also adjust length of redacted box to be comparable to the original
- **proof reader**: fix typographic errors, spelling, and other mistakes
- **LaTeX guru**: tweak `includes.tex` to make the document look like the original while providing enhanced functionality

## How to Start Work

In order to avoid duplication of work, we use kanban [project boards](https://github.com/iandennismiller/mueller-report/projects?query=is%3Aopen+sort%3Acreated-asc).

To start working on the document:

- click on the [project board](https://github.com/iandennismiller/mueller-report/projects?query=is%3Aopen+sort%3Acreated-asc) with the most recent activity
- find an issue in the **todo column** with your helper role and the document section you will work on
- Post a comment to that issue indicating you are working on it
- I will "assign" the issue to you and move it to **in progress** on the [project board](https://github.com/iandennismiller/mueller-report/projects?query=is%3Aopen+sort%3Acreated-asc)

## Finishing Work

**Important: only work on one role at a time. If you create a pull request that includes multiple roles, it might be impossible to merge your work!**

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
- `\textbf{lorem ipsum}` creates bold face
- `\section{lorem ipsum}` is the top-level heading
- `\subsection{lorem ipsum}` is the second-level heading
- `\subsubsection{lorem ipsum}` is the third-level heading
- `\paragraph{lorem ipsum}` is the fouth-level heading
- `\subparagraph{lorem ipsum}` is the fifth-level heading
- `\begin{quote}` indicates a block quote
- `\begin{itemize}`
    - `\item` is an individual list item
- `\begin{enumerate}[i]` produces a list with lowercase roman numerals
    - `\item` is an individual list item
    - each item is indented with 4 spaces
    - sentences within an item are separated by newlines and are also indented

## Footnote template

The Mueller Report consists of content with footnotes.
In the **copy-paster role**, when migrating content, it is faster to set aside the footnotes as separate work by creating blank footnotes for later.

### Template

Replace `000` with the actual footnote number from the original document.

    % 000
    \footnote{000}

### Blank footnote example

In this example, footnote number `15` appears after the word "information" within a sentence.

    Here is a key piece of information% 15
    \footnote{15}
    that appears inside a sentence.

The `\footnote` tag includes the content `15` as a placeholder for the future.
Notice the use of newlines; the footnote appears on its own line.
Also, the fragment ending with "information" ends with a `%` comment, which will suppress that particular newline so that there is no whitespace before the superscript footnote number that appears in the main content.

## Redacting template

This is the copy-paster template for redactions.  Simply provide the reason for redaction as indicated in the DOJ text.

    \blackout{Reason for Redaction}

Method for redacted section headings:
    [$\blacksquare\blacksquare\blacksquare\blacksquare\blacksquare\blacksquare\blacksquare\blacksquare$: Reason for Redaction]}

Redacted passages can be expanded or trimmed to approximate the original redactions using lorem ipsum text.

    \blackout{Harm to Ongoing Matter: Lorem ipsum dolor sit amet, consectetur
        adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
        magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
        ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
        irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
        fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
        sunt in culpa qui officia deserunt mollit anim id est laborum.
    }

Lorem ipsum example without newlines:

    \blackout{Harm to Ongoing Matter: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.}

## Un-redacting

This is a living document that will be updated over time.
As redacted passages are disclosed, the corresponding passages in this source code will be uncensored and the documents will be re-rendered.

## Automated Text Extraction

The raw PDF obtained from the DOJ was processed with the open source tool `OCRmyPDF`, which uses the open source `Tesseract` OCR engine to perform optical character recognition upon PDF files.

    ocrmypdf mueller-report.pdf mueller-report-ocr.pdf

The `pdftotext` utility from `poppler` was used to extract all text to a separate file.

    pdftotext mueller-report-ocr.pdf mueller-report-ocr.txt

These documents are available in the repository:

- [mueller-report-ocr.pdf](https://github.com/iandennismiller/mueller-report/blob/master/data/mueller-report-ocr.pdf)
- [mueller-report-ocr.txt](https://github.com/iandennismiller/mueller-report/blob/master/data/mueller-report-ocr.txt)