\pointAndClickOff

#(define-markup-command (bigdot layout props) ()
  "Draw a big dot in text."
  (interpret-markup layout props
   (markup #:hspace 1 #:raise 0.75 (#:draw-circle 0.3 0 #t) #:hspace 1)))

\header {
  title = \markup { Prelude \bigdot Prélude }
  opus = "MWV U 123 (Op. 104a, No. 2)"
  composer = "Felix Mendelssohn"
  tagline = ""  % removed
  maintainer = "Benjamin Geer"
  maintainerEmail = "ben@benjamingeer.name"
  copyright = \markup {
    \vspace #1
    \with-url #"https://creativecommons.org/licenses/by-sa/4.0/deed.en" { \epsfile #X #12 #"by-sa.eps" }
    \raise #0.7 { \tiny { Copyright © 2021 Benjamin Geer }}
  }
}
