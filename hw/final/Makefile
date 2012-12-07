DOC=writeup


all: $(DOC).pdf

clean:
	rm $(DOC).log $(DOC).pdf $(DOC).toc $(DOC).nav $(DOC).snm $(DOC).aux $(DOC).out $(DOC).toc

$(DOC).pdf: $(DOC).tex
	pdflatex -file-line-error -interaction=nonstopmode $(DOC)
	pdflatex -file-line-error -interaction=nonstopmode $(DOC)
