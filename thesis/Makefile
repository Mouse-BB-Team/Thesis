MAIN_FILE=main

.PHONY: all compile

all: compile copy_result

compile: pdflatex bibtex makeglossaries pdflatex_final

pdflatex:
	pdflatex -interaction=nonstopmode -shell-escape $(MAIN_FILE).tex

pdflatex_final:
	pdflatex -interaction=nonstopmode -shell-escape $(MAIN_FILE).tex
	pdflatex -interaction=nonstopmode -shell-escape $(MAIN_FILE).tex
	pdflatex -interaction=nonstopmode -shell-escape $(MAIN_FILE).tex

bibtex:
	bibtex $(MAIN_FILE).aux

makeglossaries:
	makeglossaries $(MAIN_FILE)

copy_result:
	cp $(MAIN_FILE).pdf ../$(MAIN_FILE).pdf

