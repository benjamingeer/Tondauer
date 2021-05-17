\version "2.22.1"
\include "annotate.ly"
\include "header.ly"
\include "global.ly"

\score {
  \keepWithTag #'crit
  \removeWithTag #'(perf finger)
  \include "piano-staff.ly"
}
