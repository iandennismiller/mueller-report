# Contributing

The document is written with LaTeX.
If you know a little bit of LaTeX and you know how to use Github, then you can help with the project.
There are several kinds of **helper roles** that enable collaborative editing of the document.

## Helper roles

- **redacter**: adjust or unredact `\blackout{}` tags; also adjust length of redacted box to be comparable to the original.
    - [See available redacter tasks](https://github.com/iandennismiller/mueller-report/issues?q=is%3Aissue+is%3Aopen+label%3Aredacter+-label%3Aassigned)
- **proof reader**: fix typographic errors, spelling, and other mistakes.
    - [See available proofer tasks](https://github.com/iandennismiller/mueller-report/issues?q=is%3Aissue+is%3Aopen+label%3Aproofer+-label%3Aassigned)
- **LaTeX guru**: tweak `includes.tex` to make the document look like the original while providing enhanced functionality.
    - [See available guru tasks](https://github.com/iandennismiller/mueller-report/issues?q=is%3Aissue+is%3Aopen+label%3Aguru+-label%3Aassigned)
- ~~copy-paster: locate a section heading and copy-paste text from the PDF.  The copy-paster should also add [redactions](#redacting-template).~~
- ~~footnote adder: add [blank footnotes](#footnote-template) and fill them with content from the PDF. Also add [redactions](#redacting-template) where appropriate.~~

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

    wget https://www.justice.gov/storage/report.pdf
    ocrmypdf report.pdf mueller-report-ocr-2019-04-18.pdf

The `pdftotext` utility from `poppler` was used to extract all text to a separate file.

    pdftotext \
        mueller-report-ocr-2019-04-18.pdf \
        mueller-report-ocr-2019-04-18.txt

The [OCR text product](https://github.com/iandennismiller/mueller-report/blob/master/docs/ocr/mueller-report-ocr-2019-04-18.txt) is available for download.

## Contributor Covenant Code of Conduct

### Our Pledge

In the interest of fostering an open and welcoming environment, we as
contributors and maintainers pledge to making participation in our project and
our community a harassment-free experience for everyone, regardless of age, body
size, disability, ethnicity, sex characteristics, gender identity and expression,
level of experience, education, socio-economic status, nationality, personal
appearance, race, religion, or sexual identity and orientation.

### Our Standards

Examples of behavior that contributes to creating a positive environment
include:

* Using welcoming and inclusive language
* Being respectful of differing viewpoints and experiences
* Gracefully accepting constructive criticism
* Focusing on what is best for the community
* Showing empathy towards other community members

Examples of unacceptable behavior by participants include:

* The use of sexualized language or imagery and unwelcome sexual attention or
 advances
* Trolling, insulting/derogatory comments, and personal or political attacks
* Public or private harassment
* Publishing others' private information, such as a physical or electronic
 address, without explicit permission
* Other conduct which could reasonably be considered inappropriate in a
 professional setting

### Our Responsibilities

Project maintainers are responsible for clarifying the standards of acceptable
behavior and are expected to take appropriate and fair corrective action in
response to any instances of unacceptable behavior.

Project maintainers have the right and responsibility to remove, edit, or
reject comments, commits, code, wiki edits, issues, and other contributions
that are not aligned to this Code of Conduct, or to ban temporarily or
permanently any contributor for other behaviors that they deem inappropriate,
threatening, offensive, or harmful.

### Scope

This Code of Conduct applies both within project spaces and in public spaces
when an individual is representing the project or its community. Examples of
representing a project or community include using an official project e-mail
address, posting via an official social media account, or acting as an appointed
representative at an online or offline event. Representation of a project may be
further defined and clarified by project maintainers.

### Enforcement

Instances of abusive, harassing, or otherwise unacceptable behavior may be
reported by contacting the project team at @iandennismiller on Twitter. All
complaints will be reviewed and investigated and will result in a response that
is deemed necessary and appropriate to the circumstances. The project team is
obligated to maintain confidentiality with regard to the reporter of an incident.
Further details of specific enforcement policies may be posted separately.

Project maintainers who do not follow or enforce the Code of Conduct in good
faith may face temporary or permanent repercussions as determined by other
members of the project's leadership.

### Attribution

This Code of Conduct is adapted from the [Contributor Covenant][homepage], version 1.4,
available at https://www.contributor-covenant.org/version/1/4/code-of-conduct.html

[homepage]: https://www.contributor-covenant.org

For answers to common questions about this code of conduct, see
https://www.contributor-covenant.org/faq
