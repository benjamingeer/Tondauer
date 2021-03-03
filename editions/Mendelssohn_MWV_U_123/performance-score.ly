\version "2.20.0"
\include "annotate.ly"
\include "header.ly"
\include "global.ly"

\paper {
  page-count = #5
}

\score {
  \keepWithTag #'(perf finger)
  \removeWithTag #'crit
  \include "piano-staff.ly"
}
