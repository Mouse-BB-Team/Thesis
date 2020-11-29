MAIN_FILE=main

.PHONY: all

all: compile bibliography glossary compile copy_result

compile:
	pdflatex -interaction=nonstopmode $(MAIN_FILE).tex

bibliography:
	bibtex $(MAIN_FILE).aux

glossary:
	makeglossaries $(MAIN_FILE)

copy_result:
	cp $(MAIN_FILE).pdf ../$(MAIN_FILE).pdf