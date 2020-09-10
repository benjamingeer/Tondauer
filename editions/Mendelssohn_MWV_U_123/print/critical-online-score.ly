\version "2.20.0"
\include "annotate.ly"
\include "online-header.ly"
\include "global.ly"

\score {
  \keepWithTag #'(crit withoutFingerings)
  \removeWithTag #'(perf finger pedal)
  \include "piano-staff.ly"
}
