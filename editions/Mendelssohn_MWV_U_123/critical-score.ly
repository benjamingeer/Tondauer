\version "2.22.1"
\include "annotate.ly"
\include "header.ly"
\include "global.ly"

\paper {
  bottom-margin = 1\cm
  top-margin = 1\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
}

\score {
  \keepWithTag #'crit
  \removeWithTag #'(perf finger)
  \include "piano-staff.ly"
}
