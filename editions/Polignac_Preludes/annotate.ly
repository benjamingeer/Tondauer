\include "oll-core/package.ily"
\loadModule stylesheets.span
\loadModule scholarly.annotate
\loadModule scholarly.choice
\setSpanColor default #black
\setSpanColor lemma #black
\setSpanColor correction #black
\setOption scholarly.annotate.use-colors ##f
\setOption scholarly.annotate.export-targets #'(latex)
\setOption scholarly.annotate.export.latex.all-attributes ##f
\setOption scholarly.annotate.skip-attributes #'(item type ann-type music-type style-type span-class location context-id context-label score-id score-label grob-type grob-label footnote-offset footnote-text)
