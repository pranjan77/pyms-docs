# makefile for PyMS User Guide
# Copyright (c) 2006, Vladimir Likic <vlikic@unimelb.edu.au>

TEXFILE	= UserGuide.tex
CHAPTERS = latex/chapter01.tex latex/chapter02.tex latex/chapter03.tex \
latex/chapter04.tex latex/chapter05.tex latex/chapter06.tex \
latex/chapter07.tex latex/chapter08.tex \
latex/chapter09.tex latex/appendix.tex

pdf:	$(TEXFILE:.tex=.pdf)
ps:	$(TEXFILE:.tex=.ps)
dvi:	$(TEXFILE:.tex=.dvi)
aux:	$(TEXFILE:.tex=.aux)

%.dvi: %.tex $(CHAPTERS)
	\latex $<;
	\bibtex $(TEXFILE:.tex=);
	\makeindex $(TEXFILE:.tex=);
	\latex $<;
	\latex $<;

%.ps: %.dvi
	\dvips -q -t a4 $<

%.pdf: %.ps
	\ps2pdf -sPAPERSIZE=a4 -dPDFSETTINGS=/prepress $<
	make clean
	\/usr/bin/evince $(TEXFILE:.tex=.pdf)
	if [ -e $(TEXFILE:.tex=.ps) ]; then rm $(TEXFILE:.tex=.ps); fi

clean:
	if [ -e $(TEXFILE:.tex=.aux) ]; then rm $(TEXFILE:.tex=.aux); fi
	if [ -e $(TEXFILE:.tex=.log) ]; then rm $(TEXFILE:.tex=.log); fi
	if [ -e $(TEXFILE:.tex=.dvi) ]; then rm $(TEXFILE:.tex=.dvi); fi
	if [ -e $(TEXFILE:.tex=.toc) ]; then rm $(TEXFILE:.tex=.toc); fi
	if [ -e $(TEXFILE:.tex=.idx) ]; then rm $(TEXFILE:.tex=.idx); fi
	if [ -e $(TEXFILE:.tex=.bbl) ]; then rm $(TEXFILE:.tex=.bbl); fi
	if [ -e $(TEXFILE:.tex=.blg) ]; then rm $(TEXFILE:.tex=.blg); fi
	if [ -e $(TEXFILE:.tex=.ilg) ]; then rm $(TEXFILE:.tex=.ilg); fi
	if [ -e $(TEXFILE:.tex=.ind) ]; then rm $(TEXFILE:.tex=.ind); fi
	if [ -e $(TEXFILE:.tex=.ps) ]; then rm $(TEXFILE:.tex=.ps); fi

c:
	if [ -e $(TEXFILE:.tex=.pdf) ]; then rm $(TEXFILE:.tex=.pdf); fi

