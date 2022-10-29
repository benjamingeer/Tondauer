% Tags
%
% #'crit: only in critical edition

\new PianoStaff <<
  \accidentalStyle piano
  \set PianoStaff.connectArpeggios = ##t
  
  \new Staff = "up" {
    \key aes \major
    \time 2/2
    \clef treble
    \tempo "Allegretto"
    \override Slur.details.accidental-collision = #15
    
    % Up M01 (source P06)

    r4 r4
    ees''8( aes'' ees''') ees'''

    | % Up M02

    \shape #'((0 . -0.4) (0 . 0.4) (0 . 0) (0 . 0)) Slur
    ees'''8( f''' des''' c'''
    bes'' aes'' f'' des'')

    | % Up M03

    c''2
    c''8( f'' c''') c'''

    | % Up M04

    \shape #'((0 . -0.4) (0 . 0.4) (0 . 0) (0 . 0)) Slur
    c'''8( des''' bes'' aes''
    ges'' ees'' des'' bes')

    | % Up M05

    aes'2
    des'8( ges' des'') des''

    | % Up M06

    aes'2
    des'8( ges' des'') des''

    | % Up M07

    aes'2
    \shape #'((0 . -1.25) (0 . 0) (0 . 1.2) (0 . -0.8)) Slur
    ges'8( des'' ges'') ges''

    | % Up M08

    f''2
    \shape #'((0 . -1.25) (0 . 0) (0 . 0.6) (0 . -0.25)) Slur
    d''8( aes'' d''') d'''

    | % Up M09

    ees'''2
    s2

    | % Up M10

    \shape #'((0 . -0.4) (0 . 0.4) (0 . 0) (0 . 0)) Slur
    ees'''8( f''' des''' c'''
    bes'' aes'' f'' des'')

    | % Up M11 (source P07)

    c''2
    s2

    | % Up M12

    \shape #'((0 . -0.4) (0 . 0.4) (0 . 0) (0 . 0)) Slur
    c'''8( des''' bes'' aes''
    ges'' f'' des'' bes')

    | % Up M13

    aes'2
    des'8( ges' des'') des''

    | % Up M14

    aes'2
    des'8( ges' des'') des''

    | % Up M15

    aes'8( g' bes' c''
    des'' ees'' f'' aes'')

    | % Up M16

    \ottava #1
    bes''( aes'' c''' des'''
    ees''' f''' ges''' bes''')

    | % Up M17

    c''''2
    c'''8( f''' c'''') c''''

    | % Up M18

    \shape #'((0 . -0.75) (0 . 0.75) (0 . 0) (0 . 0)) Slur
    c''''8( ees'''' des'''' bes'''
    g''' f''' des''' bes'')
    \ottava #0

    | % Up M19

    c'''2
    des''8( f'' des''') des'''

    | % Up M20

    c'''2
    des''8( f'' des''') des'''

    | % Up M21

    c'''2
    \shape #'((0 . -1.8) (0 . 0) (0 . 0.5) (0 . -0.3)) Slur
    aes'8( d'' b'') b''

    | % Up M22

    bes''2
    \shape #'((0 . -2.2) (0 . 0) (0 . 0.6) (0 . -0.7)) Slur
    aes'8( d'' ces''') ces'''

    | % Up M23

    bes''2
    bes'8( ees'' bes'') bes''

    | % Up M24

    \shape #'((0 . -1.2) (0 . 1.2) (0 . 0) (0 . -0.9)) Slur
    bes''8( des''' ces''' aes''
    f'' ees'' ces'' aes')

    | % Up M25

    bes'2
    ees'8( ces'' ees'') ees''

    | % Up M26 (source P08)

    d''2
    ees'8( ces'' ees'') ees''

    | % Up M27

    d''2
    f'8( bes' f'') f''

    | % Up M28

    r2
    bes'8( ees'' bes'') bes''

    | % Up M29

    f''2
    f'8( bes' f'') f''

    | % Up M30

    r2
    bes'8( ees'' bes'') bes''

    | % Up M31

    f''2
    bes'8( ees'' bes'') bes''

    | % Up M32

    \shape #'((0 . -0.4) (0 . 0.4) (0 . 0) (0 . 0)) Slur
    bes''8( c''' aes'' g''
    f'' ees'' c'' aes')

    | % Up M33

    g'2
    g'8( c'' g'') g''

    | % Up M34

    g''8( aes'' f'' ees''
    des'' bes' aes' f')

    | % Up M35

    ees'2
    des'8( f' des'') des''

    | % Up M36

    g'2
    des'8( f' des'') des''

    | % Up M37

    g'2
    g'8( des'' g'') g''

    | % Up M38

    aes''2
    ees''8( aes'' ees''') ees'''

    | % Up M39

    r2
    \ottava #1
    ees'''8( aes''' ees'''') ees''''
    \ottava #0

    | % Up M40

    \slashedGrace s8 <ees'' aes' ees'>4\arpeggio r4
    r2

    \bar "|."
  }
  
  % Context for dynamic markings centred between the staves
  \new Dynamics {

    % Dynamics M01 (source P06)

    s1\mf

    | % Dynamics M02

    s1

    | % Dynamics M03

    s1

    | % Dynamics M04

    s1

    | % Dynamics M05

    s1\f

    | % Dynamics M06

    s1

    | % Dynamics M07

    s2 s8 s8\dim s4\!

    | % Dynamics M08

    s1

    | % Dynamics M09

    s1\p

    | % Dynamics M10

    s1

    | % Dynamics M11 (source P07)

    s1

    | % Dynamics M12

    s1

    | % Dynamics M13

    s1

    | % Dynamics M14

    s2 s8 s8\cresc s4\!

    | % Dynamics M15

    s1

    | % Dynamics M16

    s1

    | % Dynamics M17

    s1\f
    
    | % Dynamics M18

    s1

    | % Dynamics M19

    s1

    | % Dynamics M20

    s1

    | % Dynamics M21

    s1

    | % Dynamics M22

    s1

    | % Dynamics M23

    s1

    | % Dynamics M24

    s1

    | % Dynamics M25

    s1

    | % Dynamics M26 (source P08)

    s1

    | % Dynamics M27

    s1

    | % Dynamics M28

    s2 s16 s16\dim s4.\!

    | % Dynamics M29

    s1

    | % Dynamics M30

    s1

    | % Dynamics M31

    s1

    | % Dynamics M32

    s1

    | % Dynamics M33

    s1

    | % Dynamics M34

    s1    

    | % Dynamics M35

    s1

    | % Dynamics M36

    s1

    | % Dynamics M37

    s1    

    | % Dynamics M38

    s1

    | % Dynamics M39

    s1\p

    | % Dynamics M40

    \slashedGrace s8 s1

  }
  
  \new Staff = "down" {
    \key aes \major
    \time 2/2
    \clef bass
    \override Slur.details.accidental-collision = #15
    
    % Down M01 (source P06)

    \clef treble

    c'8( ees' aes' c'')
    r2

    | % Down M02

    bes8( des' f' aes')
    r2

    | % Down M03

    a8( c' f' a')
    r2

    | % Down M04

    aes8( des' ges' bes')
    r2
    
    \clef bass
    
    | % Down M05
    
    aes,8( ees aes c')
    bes2

    | % Down M06

    c8( ees aes c')
    bes2

    | % Down M07

    aes,8( ees aes c')
    <des' bes>2

    \clef treble
    
    | % Down M08

    a8 c' f' a'
    <b' aes' f'>4 r4

    | % Down M09

    <<
      {
	c'8( ees' aes' c''
	\change Staff = "up"
	\oneVoice
	ees'' aes'' ees''') ees'''
      }
      \\
      {
	s2
	\oneVoice
	r2
      }
    >>

    | % Down M10

    bes8( des' f' bes')
    r2

    | % Down M11 (source P07)

    <<
      {
	a8( c' f' a'
	\change Staff = "up"
	\oneVoice
	c'' f'' c''') c'''
      }
      \\
      {
	s2
	\oneVoice
	r2
      }
    >>

    | % Down M12

    g?8( des' f' bes')
    r4
    \clef bass
    aes4

    | % Down M13

    des,8( aes, des f)
    ees2

    | % Down M14

    des,8( aes, des f)
    ees2

    | % Down M15

    des,8( aes, des aes)
    r2

    | % Down M16

    \shape #'((0 . -1.25) (0 . 0) (0 . 0) (0 . 0)) Slur
    bes,8( des ges bes)
    r2

    \clef treble

    | % Down M17

    aes8( c' f' aes')
    r2

    | % Down M18

    g8( bes des' f')
    r2

    \clef bass

    | % Down M19

    aes8( c' f' aes')
    g2

    | % Down M20

    aes8( c' f' aes')
    g2

    | % Down M21

    aes8( c' f' aes')
    f2

    | % Down M22

    \shape #'((0 . -0.3) (0 . 0) (0 . 0.7) (0 . -0.6)) Slur
    ges8( bes ees' ges')
    f2

    | % Down M23

    \shape #'((0 . 0) (0 . 0) (0 . 0.8) (0 . -0.6)) Slur
    ges8( bes ees' ges')
    r2

    | % Down M24

    \shape #'((0 . -0.75) (0 . 0) (0 . 0) (0 . 0)) Slur
    f8( aes ces' ees')
    r2

    | % Down M25

    \shape #'((0 . -0.2) (0 . 0) (0 . 1.1) (0 . -0.7)) Slur
    ges8( bes ees' ges')
    f2

    | % Down M26 (source P08)

    \shape #'((0 . -0.7) (0 . 0) (0 . 0.6) (0 . -0.2)) Slur
    bes,8( f bes d')
    ges2

    | % Down M27

    \shape #'((0 . -0.7) (0 . 0) (0 . 0.6) (0 . -0.2)) Slur
    bes,8( f aes d')
    r2

    | % Down M28

    g8( bes ees' g')
    r2

    | % Down M29

    \shape #'((0 . -0.7) (0 . 0) (0 . 0.5) (0 . -0.2)) Slur
    bes,8( f aes d')
    r2

    | % Down M30

    g8( bes ees' g')
    r2

    | % Down M31

    \shape #'((0 . -0.7) (0 . 0) (0 . 0.6) (0 . -0.2)) Slur
    bes,8( f aes d')
    <ees' bes g>2

    | % Down M32

    f8( aes c' ees')
    r2

    | % Down M33

    \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . -0.2)) Slur
    e8( g c' e')
    r2

    | % Down M34

    ees8( aes des' f')
    r2

    | % Down M35

    ees,8( bes, ees g)
    f2

    | % Down M36

    ees,8( bes, ees g)
    f2

    | % Down M37

    ees,8( bes, ees g)
    <des' ees>2

    | % Down M38

    aes,8( ees aes c')
    <c' aes ees>2

    \clef treble

    | % Down M39

    aes8( ees' aes' c'')
    
    \choice emendation {
      \editorialMarkup correction \with {
	type = addition
	ann-type = critical-remark
	source = ""
	
	message = "Il manque le changement de clef.

        \\centerbigdot

        \\begin{otherlanguage}{english}The clef change is
        missing.\\end{otherlanguage}"
	
	item = Clef
      } {
	<c'' aes' ees'>2
	
	\tag #'crit \footnote #'(-2 . -3)
	\markup {
	  Clef manquante.
	  \bigdot
	  Missing clef.
	}
	Staff.Clef

	\clef bass
      }
      \editorialMarkup sic \with {
	source = ""
      } {
	<c'' aes' ees'>2
      }
    }

    | % Down M40

    % I couldn't get \acciaccatura to work here, so this draws
    % an acciaccatura using \slashedGrace and a slur.
    \slashedGrace aes,,8( <c' aes ees>4) \arpeggio r4
    r2

    \bar "|."

  }
>>

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
  }
}

\header {
  title = \markup { \vspace #2 "Prélude III" }
  dedication = \markup { à \concat { M\super r } W. Junker }
  composer = \composer
}
