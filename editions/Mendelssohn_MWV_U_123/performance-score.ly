\version "2.22.1"
\include "annotate.ly"
\include "header.ly"
\include "global.ly"

\paper {
  max-systems-per-page = #5
  bottom-margin = 1\cm
  top-margin = 1\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
}

\score {
  \keepWithTag #'(perf finger)
  \removeWithTag #'crit
  \include "piano-staff.ly"
}
