# Dissertation Template
LaTeX dissertation template for dissertations that are to be submitted to the University of Malta

## Requirements

This template assumes that you have LaTeX installed on your machine. If you're on macOs the MacTeX distribution is recommended. On linux, it is recommended to install LaTeX using the OS's own package manager. For Ubuntu the command is

```
sudo apt get install texlive-full
```

## Compilation

A Makefile is provided with this template that will compile the document for you. The Makefile uses the latexmk script under the hood to determine which documents have been changed and compile accordingly. All LaTeX generated files are stored in a build/ directory to avoid cluttering the directory.

To compile the document, open a terminal tab in the directory where the template is stored and issue the following command

```
make
```

If you want to create a PDF with embedded fonts (recommended for printing and submitting purposes), issue the following command

```
make all
```

To remove LaTeX generated files (clean) issue the following command

```
make clean
```

If you want to remove the generated PDF files use the following

```
make cleanAll
```

Note that all of the above commands are case-senstive.
