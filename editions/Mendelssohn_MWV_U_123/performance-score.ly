\version "2.22.1"
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
