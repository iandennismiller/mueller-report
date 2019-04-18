# mueller-report

The 2019 Mueller Report as an open LaTeX document.

- [Volume I: Conspiracy](https://github.com/iandennismiller/mueller-report/blob/master/products/volume-1.pdf)

## Motivation

The version of the Mueller Report distributed on April 18, 2019 suffers from several technical limitations.  This project is an effort to correct those limitations.

## Features

- searchable text
- split into Vol 1 and Vol 2
- descriptive page header
- table of contents
- redactions can be represented explicitly in the source code

## Censoring template

The following text is an example for how censored text will be represented in the working document.  It is expected that once ongoing matters have resolved, this document will become progressively unredacted.

    \xblackout{Harm to Ongoing Matter: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.}

## LaTeX Conventions

- each sentence in the source code is on its own line
- \P indicates a legal paragraph symbol
- \S indicates a legal section symbol
- \hr creates a horizontal rule
- \xblackout creates a black box around some words

## See also

- [LaTeX censor](https://ctan.org/pkg/censor)
