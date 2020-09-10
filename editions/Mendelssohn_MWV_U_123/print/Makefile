LILY_PDF_CMD = lilypond -I ${LILYPOND_INCLUDE} --pdf
LATEX_CMD = xelatex

CRITICAL_PRINT_EDITION=Mendelssohn_MWV_U_123_Critical_Edition.pdf
PERFORMANCE_PRINT_EDITION=Mendelssohn_MWV_U_123_Performance_Edition.pdf
PERFORMANCE_PRINT_EDITION_VARIANT=Mendelssohn_MWV_U_123_Performance_Edition_Variant.pdf

.PHONY: all clean install

all: $(CRITICAL_PRINT_EDITION) $(PERFORMANCE_PRINT_EDITION) $(PERFORMANCE_PRINT_EDITION_VARIANT)

critical-print-score.pdf: critical-print-score.ly piano-staff.ly header.ly global.ly annotate.ly
	$(LILY_PDF_CMD) $<

performance-print-score.pdf: performance-print-score.ly piano-staff.ly header.ly global.ly annotate.ly
	$(LILY_PDF_CMD) $<

performance-print-score-variant.pdf: performance-print-score-variant.ly piano-staff.ly header.ly global.ly annotate.ly
	$(LILY_PDF_CMD) $<

$(CRITICAL_PRINT_EDITION): book.tex critical-print-score.pdf critical-print-score.annotations.inp
	$(LATEX_CMD) -jobname=$(basename $(CRITICAL_PRINT_EDITION)) '\def\critical{}\input{book}'
	biber $(basename $(CRITICAL_PRINT_EDITION)).bcf
	$(LATEX_CMD) -jobname=$(basename $(CRITICAL_PRINT_EDITION)) '\def\critical{}\input{book}'
	$(LATEX_CMD) -jobname=$(basename $(CRITICAL_PRINT_EDITION)) '\def\critical{}\input{book}'

$(PERFORMANCE_PRINT_EDITION): book.tex performance-print-score.pdf
	$(LATEX_CMD) -jobname=$(basename $(PERFORMANCE_PRINT_EDITION)) '\def\performance{}\input{book}'
	biber $(basename $(PERFORMANCE_PRINT_EDITION)).bcf
	$(LATEX_CMD) -jobname=$(basename $(PERFORMANCE_PRINT_EDITION)) '\def\performance{}\input{book}'
	$(LATEX_CMD) -jobname=$(basename $(PERFORMANCE_PRINT_EDITION)) '\def\performance{}\input{book}'

$(PERFORMANCE_PRINT_EDITION_VARIANT): book.tex performance-print-score-variant.pdf
	$(LATEX_CMD) -jobname=$(basename $(PERFORMANCE_PRINT_EDITION_VARIANT)) '\def\performance{}\def\variant{}\input{book}'
	biber $(basename $(PERFORMANCE_PRINT_EDITION_VARIANT)).bcf
	$(LATEX_CMD) -jobname=$(basename $(PERFORMANCE_PRINT_EDITION_VARIANT)) '\def\performance{}\def\variant{}\input{book}'
	$(LATEX_CMD) -jobname=$(basename $(PERFORMANCE_PRINT_EDITION_VARIANT)) '\def\performance{}\def\variant{}\input{book}'

install: $(CRITICAL_PRINT_EDITION) $(PERFORMANCE_PRINT_EDITION) $(PERFORMANCE_PRINT_EDITION_VARIANT)
	cp $(CRITICAL_PRINT_EDITION) $(PERFORMANCE_PRINT_EDITION) $(PERFORMANCE_PRINT_EDITION_VARIANT) ../../../docs/editions/Mendelssohn_MWV_U_123/print/

clean:
	rm -f *.pdf *.log *.out *.aux *.bcf *.bbl *.run.xml *.blg *.svg *.inp *~
