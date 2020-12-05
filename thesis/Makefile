MAIN_FILE=main

.PHONY: all compile

all: compile copy_result

compile: pdflatex bibtex makeglossaries pdflatex

pdflatex:
	pdflatex -interaction=nonstopmode $(MAIN_FILE).tex

bibtex:
	bibtex $(MAIN_FILE).aux

makeglossaries:
	makeglossaries $(MAIN_FILE)

copy_result:
	cp $(MAIN_FILE).pdf ../$(MAIN_FILE).pdf