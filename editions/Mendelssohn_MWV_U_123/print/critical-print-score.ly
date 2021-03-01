\version "2.20.0"
\include "annotate.ly"
\include "header.ly"
\include "global.ly"

\score {
  \keepWithTag #'crit
  \removeWithTag #'(perf finger)
  \include "piano-staff.ly"
}
