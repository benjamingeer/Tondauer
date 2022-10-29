\version "2.22.1"
\include "annotate.ly"
\include "header.ly"

\paper {
  print-all-headers = ##t
  first-page-number = #6
  print-first-page-number = ##t
  max-systems-per-page = #5
  % system-system-spacing.basic-distance = #14
  bottom-margin = 1\cm
  top-margin = 1\cm
}

\score {
  \include "critical-settings.ly"
  \include "prelude-3.ly"
}
