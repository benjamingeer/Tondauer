\version "2.22.1"
\include "annotate.ly"
\include "header.ly"

\paper {
  print-all-headers = ##t
  first-page-number = #4
  print-first-page-number = ##t
  max-systems-per-page = #5
  bottom-margin = 1\cm
  top-margin = 1\cm
}

\score {
  \include "critical-settings.ly"
  \include "prelude-2.ly"
}
