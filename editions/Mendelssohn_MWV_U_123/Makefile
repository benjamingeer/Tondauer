export PATH := $(HOME)/bin/lilypond-2.22.2:$(PATH)
LILY_PDF_CMD = lilypond -I $(LILYPOND_INCLUDE) --pdf
LATEX_CMD = lualatex

CRITICAL_EDITION=Mendelssohn_MWV_U_123_Critical_Edition.pdf
PERFORMANCE_EDITION=Mendelssohn_MWV_U_123_Performance_Edition.pdf

.PHONY: all clean install

all: $(CRITICAL_EDITION) $(PERFORMANCE_EDITION)

critical-score.pdf: critical-score.ly piano-staff.ly header.ly global.ly annotate.ly
	$(LILY_PDF_CMD) $<

performance-score.pdf: performance-score.ly piano-staff.ly header.ly global.ly annotate.ly
	$(LILY_PDF_CMD) $<

$(CRITICAL_EDITION): book.tex critical-score.pdf critical-score.annotations.inp
	$(LATEX_CMD) -jobname=$(basename $(CRITICAL_EDITION)) '\def\critical{}\input{book}'
	biber $(basename $(CRITICAL_EDITION)).bcf
	$(LATEX_CMD) -jobname=$(basename $(CRITICAL_EDITION)) '\def\critical{}\input{book}'
	$(LATEX_CMD) -jobname=$(basename $(CRITICAL_EDITION)) '\def\critical{}\input{book}'

$(PERFORMANCE_EDITION): book.tex performance-score.pdf
	$(LATEX_CMD) -jobname=$(basename $(PERFORMANCE_EDITION)) '\def\performance{}\input{book}'
	biber $(basename $(PERFORMANCE_EDITION)).bcf
	$(LATEX_CMD) -jobname=$(basename $(PERFORMANCE_EDITION)) '\def\performance{}\input{book}'
	$(LATEX_CMD) -jobname=$(basename $(PERFORMANCE_EDITION)) '\def\performance{}\input{book}'

install: $(CRITICAL_EDITION) $(PERFORMANCE_EDITION)
	cp $(CRITICAL_EDITION) $(PERFORMANCE_EDITION) ../../hugo/static/editions/

clean:
	rm -f *.pdf *.log *.out *.aux *.bcf *.bbl *.run.xml *.blg *.svg *.inp *~
