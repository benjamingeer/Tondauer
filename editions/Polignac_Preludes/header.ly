\pointAndClickOff

#(define-markup-command (bigdot layout props) ()
  "Draw a big dot in text."
  (interpret-markup layout props
   (markup #:hspace 1 #:raise 0.75 (#:draw-circle 0.3 0 #t) #:hspace 1)))

composer = \markup { \vspace #3 }

\header{
  tagline = ##f
}
