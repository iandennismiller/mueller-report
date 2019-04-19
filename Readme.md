# mueller-report

The 2019 Mueller Report as an open LaTeX document.

- [Volume I: Russian Interference](https://github.com/iandennismiller/mueller-report/blob/master/products/mueller-report-vol-1.pdf)

## Motivation

The version of the Mueller Report distributed on April 18, 2019 suffers from several technical limitations.  This project is an effort to correct those limitations.

## Features

- full-text search
- high fidelity text; not deteriorated by photocopy, redaction, and optical character recognition
- split document into Vol 1 and Vol 2
- descriptive page header
- table of contents with working hyperlinks
- redactions can be represented explicitly in the source code
- canonical URL with greater permanence than DOJ distribution

## Redacting template

The following text is an example for how redacted text will be represented in the working document.  It is expected that once ongoing matters have resolved, this document will become progressively unredacted.

    \xblackout{Harm to Ongoing Matter: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.}

## LaTeX Conventions

- each section is in a separate file
- each sentence in the source code is on its own line
- \P indicates a legal paragraph symbol
- \S indicates a legal section symbol
- \hr creates a horizontal rule
- `\xblackout{lorem ipsum}` creates a black box around some words
- `\footnote{lorem ipsum}` creates a footnote, but the previous line ends with `%` to prevent newline
- `\textit{lorem ipsum}` creates italics
- `\textbf{lorem ipsum}` creates italics
- `\section{lorem ipsum}` is the top-level heading
- `\subsection{lorem ipsum}` is the second-level heading
- `\subsubsection{lorem ipsum}` is the third-level heading

## See also

- [Special Counsel's Office](https://www.justice.gov/sco)
- [2019-04-18 Mueller Report, Redacted](https://www.justice.gov/storage/report.pdf)
- [LaTeX censor package](https://ctan.org/pkg/censor)
