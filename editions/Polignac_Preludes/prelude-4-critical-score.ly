\version "2.22.1"
\include "annotate.ly"
\include "header.ly"

\paper {
  print-all-headers = ##t
  first-page-number = #9
  print-first-page-number = ##t
  bottom-margin = 1\cm
  top-margin = 1\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
}

\score {
  \include "critical-settings.ly"
  \include "prelude-4.ly"
}
