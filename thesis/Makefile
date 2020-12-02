MAIN_FILE=main

.PHONY: all compile

all: compile copy_result

compile: pdflatex bibtex  pdflatex

pdflatex:
	pdflatex -interaction=nonstopmode -shell-escape $(MAIN_FILE).tex

bibtex:
	bibtex $(MAIN_FILE).aux

copy_result:
	cp $(MAIN_FILE).pdf ../$(MAIN_FILE).pdf
