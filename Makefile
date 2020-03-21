# You want latexmk to *always* run, because make does not have all the info.
# Also, include non-file targets in .PHONY so they are run regardless of any
# file of the given name existing.
.PHONY: main.pdf mainFinal.pdf all clean cleanAll

# Final targets

default: main.pdf

all: main.pdf mainFinal.pdf

# Font embedding rule
mainFinal.pdf: main.pdf
	gs -q -dNOPAUSE -dBATCH -dPrinted=false -dPDFSETTINGS=/prepress -sDEVICE=pdfwrite -sOutputFile=$@ $<

# Compilation

main.pdf: main.tex
	latexmk -output-directory=build/ -synctex=1 -pdf $<
	ln -sf build/$@ $@

# Cleanup
clean:
	rm -rf build/

cleanAll:
	rm -rf build/
	rm -f main.pdf mainFinal.pdf
