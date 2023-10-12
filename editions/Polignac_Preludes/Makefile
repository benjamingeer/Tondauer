export PATH := $(HOME)/bin/lilypond-2.22.2:$(PATH)
LILY_PDF_CMD = lilypond -I $(LILYPOND_INCLUDE) --pdf
LATEX_CMD = lualatex

CRITICAL_EDITION=Polignac_Preludes_Critical_Edition.pdf

.PHONY: all clean install

all: $(CRITICAL_EDITION)

prelude-1-critical-score.pdf: prelude-1-critical-score.ly prelude-1.ly \
	header.ly annotate.ly critical-settings.ly
	$(LILY_PDF_CMD) $<

prelude-2-critical-score.pdf: prelude-2-critical-score.ly prelude-2.ly \
	header.ly annotate.ly critical-settings.ly
	$(LILY_PDF_CMD) $<

prelude-3-critical-score.pdf: prelude-3-critical-score.ly prelude-3.ly \
	header.ly annotate.ly critical-settings.ly
	$(LILY_PDF_CMD) $<

prelude-4-critical-score.pdf: prelude-4-critical-score.ly prelude-4.ly \
	header.ly annotate.ly critical-settings.ly
	$(LILY_PDF_CMD) $<

prelude-5-critical-score.pdf: prelude-5-critical-score.ly prelude-5.ly \
	header.ly annotate.ly critical-settings.ly
	$(LILY_PDF_CMD) $<

prelude-6-critical-score.pdf: prelude-6-critical-score.ly prelude-6.ly \
	header.ly annotate.ly critical-settings.ly
	$(LILY_PDF_CMD) $<

$(CRITICAL_EDITION): book.tex \
	prelude-1-critical-score.pdf prelude-1-critical-score.annotations.inp \
	prelude-2-critical-score.pdf prelude-2-critical-score.annotations.inp \
	prelude-3-critical-score.pdf prelude-3-critical-score.annotations.inp \
	prelude-4-critical-score.pdf prelude-4-critical-score.annotations.inp \
	prelude-5-critical-score.pdf prelude-5-critical-score.annotations.inp \
	prelude-6-critical-score.pdf prelude-6-critical-score.annotations.inp
	$(LATEX_CMD) -jobname=$(basename $(CRITICAL_EDITION)) '\def\critical{}\input{book}'
	$(LATEX_CMD) -jobname=$(basename $(CRITICAL_EDITION)) '\def\critical{}\input{book}'

install: $(CRITICAL_EDITION)
	cp $(CRITICAL_EDITION) ../../hugo/static/editions/

clean:
	rm -f *.pdf *.log *.out *.aux *.bcf *.bbl *.run.xml *.blg *.svg *.inp *~
