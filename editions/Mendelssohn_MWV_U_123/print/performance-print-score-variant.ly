\version "2.20.0"
\include "annotate.ly"
\include "header.ly"
\include "global.ly"

\score {
  \keepWithTag #'(perf finger #'m15-reading)
  \removeWithTag #'(crit #'m15-lemma)
  \include "piano-staff.ly"
}
