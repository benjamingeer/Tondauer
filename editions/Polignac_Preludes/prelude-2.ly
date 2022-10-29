% Tags
%
% #'crit: only in critical edition

\new PianoStaff <<
  \accidentalStyle piano
  
  \new Staff = "up" {
    \key b \minor
    \time 4/4
    \clef treble
    \tempo "Moderato"
    \override Slur.details.accidental-collision = #15
    
    % Up M01 (source P04)
    
    r8 ais'8( b' d''
    fis'' b'' cis''' d''')~

    | % Up M02
    
    \shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . 0)) Slur
    d'''8( fis''' d''' cis''')
    b''2~

    | % Up M03

    \shape #'((0 . 0) (0 . 0.4) (0 . 0.4) (0 . 0)) Slur
    b''16( cis''' d''' fis''' d'''8. cis'''16
    b''2)~

    | % Up M04

    b''8( a'' gis'' fis''
    e'' d'' cis'' b'~

    | % Up M05

    b'8 a'4

    \tag #'crit \footnote #'(1.5 . -2)
    \markup {
      Altération manquante.
      \bigdot
      Missing accidental.
    }
    Accidental
    
    \choice emendation {
      \editorialMarkup correction \with {
	type = addition
	ann-type = critical-remark
	source = ""
	
	message = "Dans \\source{E}{P}, il manque l'altération du
        \\textit{sol}\\sh\\ de la portée supérieure.

        \\centerbigdot

        \\begin{otherlanguage}{english}In \\source{E}{P}, The
        accidental is missing on the \\textit{G}\\sh\\ in the upper
        staff.\\end{otherlanguage}"
	
	item = Accidental
      } { gis'8 }
      \editorialMarkup sic \with {
	source = ""
      } { g'8 }
    }

    fis'2~

    | % Up M06

    fis'16)( gis' a' cis'' a'8. gis'16\prall
    fis'2)~

    | % Up M07

    fis'8( gis' bis' dis''
    eis'' fis'' gis'' a'')~

    | % Up M08

    \shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . 0)) Slur
    a''4.( gis''8
    <fis'' dis'' gis'>8 e''8 dis'' cis'')

    | % Up M09 (source P05)

    \shape #'((0 . -1.2) (0 . 0.75) (0 . 0.75) (0 . -0.4)) Slur
    fis'8( g' b' e''
    fis'' g'' a'' b''~

    | % Up M10

    b''4. a''8
    g''8 fis'' e'' d'')

    | % Up M11

    r8
    \ottava #1
    b'''8( a''' g'''
    fis''' e''' d''' cis'''
    \ottava #0

    | % Up M12

    b''8 a'' g'' fis''
    e'' d'' cis'' b')

    | % Up M13

    r8
    \ottava #1
    d''''8( cis'''' b'''

    a''' g''' fis''' e'''

    | % Up M14

    d'''8 cis''' b'' a''
    g'' fis'' e'' d'')
    \ottava #0

    | % Up M15

    r8
    \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) Slur
    ais'8( b' d''
    fis'' b'' cis''' d'''~

    | % Up M16

    d'''8 fis''' d''' cis'''
    b''2)

    | % Up M17

    \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) Slur
    b'16( cis'' d'' fis'' d''8. cis''16\prall
    b'2)

    | % Up M18

    s2 s8 <d'' fis'>4 s8

    | % Up M19

    s8 <fis'' b'>4 fis'8->
    <b'' fis'' d'' b'>2~

    | % Up M20

    <b'' fis'' d'' b'>4 r4
    r2

    \bar "|."
  }
  
  % Context for dynamic markings centred between the staves
  \new Dynamics {

    % Dynamics M01 (source P04)
    
    s2 s8 s4\< s8\!

    | % Dynamics M02

    s4 s16 s16\> s8 s2\!

    | % Dynamics M03

    s1
    
    | % Dynamics M04

    s8\cresc s4.\! s2
    
    | % Dynamics M05

    s1\f

    | % Dynamics M06

    s1\p

    | % Dymamics M07

    s4 s16 s16\< s8 s4. s8\!

    | % Dymamics M08

    s1\f

    | % Dynamics M09 (source P05)

    s2\p s4.\< s8\!

    | % Dynamics M10

    s2 s4.\> s8\!

    | % Dynamics M11

    s1
    
    | % Dynamics M12

    s1
    
    | % Dynamics M13

    s1
    
    | % Dynamics M14

    s1

    | % Dynamics M15

    s2 s16 s16\< s4 s8\!

    | % Dynamics M16

    s4 s16 s16\> s8 s2\!

    | % Dynamics M17

    s1\p

    | % Dynamics M18

    s1

    | % Dynamics M19

    s1

    | % Dynamics M20

    s1

  }
  
  \new Staff = "down" {
    \key b \minor
    \time 4/4
    \clef bass
    \override Slur.details.accidental-collision = #15
    
    % Down M01 (source P04)
    
    \shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . 0)) Slur
    b,8( <d' fis>4 <d' fis>8)
    \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . 0)) Slur
    a,8( <d' fis>4 <d' fis>8)

    | % Down M02

    gis,8[( <d' fis>8]) a,8[( ais,8])
    b,8( <d' fis>4 <d' fis>8)

    | % Down M03

    gis,8 <d' fis>4 a,8(
    b,8) <d' fis>4 <d' fis>8
    
    | % Down M04

    \shape #'((0 . -0.5) (0 . 0.4) (0 . 0) (0 . -0.1)) Slur
    cis8( <eis' b>4 <eis' b>8)
    \shape #'((-0.6 . 0.4) (0 . 0.5) (0 . 0.5) (0 . -0.2)) Slur
    b,8( <gis eis>4 <gis eis>8)
    
    | % Down M05

    dis,8[( <a cis>8]) e,8[( eis,8])
    fis,8( <a cis>4 <a cis>8)

    | % Down M06

    \tag #'crit \footnote #'(1.5 . -1)
    \markup {
      Altération manquante.
      \bigdot
      Missing accidental.
    }
    Accidental

    \choice emendation {
      \editorialMarkup correction \with {
	type = addition
	ann-type = critical-remark
	source = ""

	message = "Il manque l'altération du \\textit{ré}\\sh\\ de la
        portée inférieure.

        \\centerbigdot

        \\begin{otherlanguage}{english}The accidental is missing on
        the \\textit{D}\\sh\\ in the lower staff.\\end{otherlanguage}"
	
	item = Accidental
      } { dis,8 }
      \editorialMarkup sic \with {
	source = ""
      } { d,8 }
    }

    <a cis>4
    e,8(

    fis,8) <a cis>4 <a cis>8

    | % Down M07

    fis,8

    \choice emendation {
      \editorialMarkup correction \with {
	type = addition
	ann-type = critical-remark
	source = ""
	
	message = "Il manque l'altération du \\textit{ré}\\sh\\ de la
        portée inférieure.

        \\centerbigdot

        \\begin{otherlanguage}{english}The accidental is missing on
        the \\textit{D}\\sh\\ in the lower staff.\\end{otherlanguage}"
	
	item = Accidental
      } {
	<
	\tag #'crit \single \footnote #'(1.5 . 1)
	\markup {
	  Altération manquante.
	  \bigdot
	  Missing accidental.
	}
	Accidental
	dis'

	\tag #'perf dis'

	fis>4
      }
      \editorialMarkup sic \with {
	source = ""
      } { <d' fis>4 }
    }

    eis,8(
    dis,8)

    <dis' fis>4
    <dis' fis>8

    | % Down M08

    \shape #'((0 . -3.25) (0 . 0) (0 . 0.25) (0 . 0)) Slur
    gis,8[( <dis' fis>8]) a,8[( b,8])
    \shape #'((0 . -1.4) (0 . 0) (0 . 0) (0 . 0)) Slur
    bis,8( <fis' dis' gis>4 <fis' dis' gis>8)

    | % Down M09 (source P05)

    \shape #'((0 . -0.8) (0 . 0) (0 . 0) (0 . 0)) Slur
    cis8( <e' b g>4 <e' b g>8)
    \shape #'((0 . -0.7) (0 . 0) (0 . 0) (0 . 0)) Slur
    b,8( <e' b g>4 <e' b g>8)

    | % Down M10

    \shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . 0)) Slur
    fis8( <e' b g>4 <e' b g>8)
    \shape #'((0 . -0.7) (0 . 0.5) (0 . 0) (0 . 0)) Slur
    e8( <cis' b g>4 <cis' b g>8)
    
    | % Down M11

    fis,8 <d' b fis>4 g,8(
    a,8) <d' b a>4 b,8(

    | % Down M12

    cis8) <e' cis' g>4 d8(
    e8) <e' b g>4 eis8(
    
    | % Down M13

    <g g,>8) <b d>4 gis,8(
    a,8) <cis' a>4 ais,8(

    | % Down M14

    b,8) <d' fis>4 cis8(
    d8) <d' fis>4 eis8(

    | % Down M15

    <fis fis,>8) <d' fis>4 <d' fis>8
    \shape #'((0 . -2.2) (0 . 0.5) (0 . 0) (0 . 0)) Slur
    e,8( <d' fis>4 <d' fis>8)

    | % Down M16

    d,8[( <d' fis>8]) e,8[( fis,8])
    b,8( <d' fis>4 <d' fis>8)

    | % Down M17

    gis,8 <d' fis>4 a,8(
    b,8) <d' fis>4 cis8(

    | % Down M18

    d8->) <fis' b>4 fis8(
    b8->) s4 cis'8(

    | % Down M19

    d'8->) s4.
    <b, b,,>2~

    | % Down M20
    
    <b, b,,>4 r4
    r2
    
    \bar "|."

  }
>>

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/64)
  }
}

\header {
  title = \markup { \vspace #2 "Prélude II" }
  dedication = \markup { à \concat { M\super r } W. Junker }
  composer = \composer
}
