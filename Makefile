LATEX = pdflatex
LATEX_FLAGS = -shell-escape

%.aux : %.tex
	$(LATEX) $(LATEX_FLAGS) $(basename $<)

%.pdf : %.aux
	$(LATEX) $(LATEX_FLAGS) $(basename $<)

all: example-worksheet.pdf
