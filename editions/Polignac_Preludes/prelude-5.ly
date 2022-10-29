% Tags
%
% #'crit: only in critical edition

\new PianoStaff <<
  \accidentalStyle piano
  
  \new Staff = "up" {
    \key bes \major
    \time 2/4
    \clef treble
    \tempo "Andantino"
    \override Slur.details.accidental-collision = #15
    
    % Up M01 (source P12)

    \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -1.8)) Slur
    <bes' d'>8[( c'' d'' ees'']

    | % Up M02

    f''8[ g'' <bes'' f''> d''~])

    | % Up M03

    d''8[ ees'' <f'' c''> <g'^~ f'> ]
    
    | % Up M04
    
    <g' ees'>8[ a' <bes' f'> d']
    
    | % Up M05
    
    r8
    \shape #'((0 . -1.5) (0 . 0) (0 . 2) (0 . -2.2)) Slur
    c''8[( d'' ees'']
    
    | % Up M06
    
    f''8[g'' <c''' aes''> d'')~])
    
    | % Up M07

    \shape #'((0 . -1.7) (0 . 0) (0 . 1.5) (0 . -1.75)) Slur
    d''8[( ees'' <aes'' f''> c''~])

    | % Up M08
    
    \shape #'((0 . 0) (0 . 0) (0 . 1.5) (0 . -1)) Slur
    c''8[( d'' <ees'' bes'> g'])
    
    | % Up M09
    
    s2
    
    | % Up M10

    ees''2

    | % Up M11
    
    \omit TupletNumber
    
    \tuplet 3/2 4 { des'8( aes' des'') }
    ees''4(
    
    | % Up M12
    
    ees''4) s4
    
    | % Up M13
    
    s4 aes''4~    
    
    | % Up M14
    
    aes''2
    
    | % Up M15
    
    R1*2/4
    
    | % Up M16
    
    bes'2~

    | % Up M17

    bes'2

    | % Up M18

    \tempo "Più mosso"

    \shape #'((0 . -1.5) (0 . 0) (0 . 1.7) (0 . -2.3)) Slur
    g'8[( bes' c'' ees'']
    
    | % Up M19
    
    f''8[ g'' <c''' aes''>^> ees''])

    | % Up M20

    s2

    | % Up M21 (source P13)

    \tuplet 3/2 4 {
      \shape #'((0 . -0.8) (0 . 0) (0 . 1.25) (0 . -0.75)) Slur
      bes''8( f''' aes''')
    }

    r4

    | % Up M22

    \shape #'((0 . 0) (0 . 0) (0 . 3) (0 . -2.5)) Slur
    d'8[( f' g' a']

    | % Up M23

    bes'8[ des'' <ges'' ees''>^> bes'])

    | % Up M24

    s2

    | % Up M25

    \tuplet 3/2 4 {
      \shape #'((0 . -0.8) (0 . 0) (0 . 1.25) (0 . -0.75)) Slur
      aes''8( ees''' ges''')
    }
    r4

    | % Up M26

    <ges'' ees''>8^>( a'8) r4

    | % Up M27

    s2

    | % Up M28

    <bes' d'>8[( c'' d'' ees''])

    | % Up M29

    \shape #'((0 . -1) (0 . 0) (0 . 0.5) (0 . -1)) Slur
    f''8[( g'' <bes'' f''> d''~])
    
    | % Up M30
    
    \shape #'((0 . 0) (0 . 0) (0 . 0.75) (0 . -1.6)) Slur
    d''8[( ees'' <f'' c''> <g'^~ f'> ])

    | % Up M31

    <g' ees'>8[^( a' <bes' f'> aes])

    | % Up M32

    \tuplet 3/2 4 {
      \change Staff = "down"
      \shape #'((0 . -0.75) (-1 . 1.5) (0 . 0) (0 . 0)) Slur
      bes8(
      \change Staff = "up"
      f' bes'
      aes' d'' bes'')
    }

    | % Up M33

    \tuplet 3/2 4 { bes'8( f'' bes'' aes'' d''' bes''') }

    | % Up M34

    \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) Slur
    bes8[^( c' d' ees']

    | % Up M35

    f'8[ g' aes' bes']

    | % Up M36

    c''8[ bes' aes' g'])

    | % Up M37

    f'8[^( ees' d' c'])

    | % Up M38

    \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . -0.4)) Slur
    b8[^( c' d' e']

    | % Up M39    

    f'8[ g' a' b']

    | % Up M40

    c''8[ bes' a' g'])

    | % Up M41

    \shape #'((0 . 0.25) (0 . 0) (0 . -0.75) (0 . 0.25)) Slur
    f'8( e'
    \undo \omit TupletNumber
    \tuplet 3/2 4 { d'8 c' f') }
    \omit TupletNumber
    
    | % Up M42

    \ottava #1
    
    <<
      {
	<f''' bes'''>2
      }
      \\
      {
	<f''' bes'''>8 bes''8^~ bes''4
      }
    >>

    \ottava #0

    | % Up M43

    r4 <b' b>4

    | % Up M44

    <<
      {
	<c''~ g'>2

	| % Up M45 (source P14)

	c''4 cis''4

	| % Up M46

	<d''~ a'>2

	| % Up M47

	d''4 ees''4

	| % Up M48

	<f''~ d''>2

	| % Up M49

	f''8[^( g'' bes'' d''~])

	| % Up M50

	d''8[^( ees'' f'' g'~])

	| % Up M51

	\oneVoice

	<g' ees'>8[^( a' <bes' f'> d'])
      }
      \\
      {
	<c'' g'>8
	c'4 r8

	| % Up M45 (source P14)

	r4
	\stemUp
	cis'4
	\stemDown

	| % Up M46

	<d'' a'>8
	d'4_> r8

	| % Up M47

	r4 ees'4

	| % Up M48

	f'2

	| % Up M49

	d''4_> f''

	| % Up M50

	s4 c''8 f'

	| % Up M51

	s2
      }
    >>

    \stemNeutral

    | % Up M52

    r8
    \shape #'((0 . -1.4) (0 . 0) (0 . 1.7) (0 . -2.2)) Slur
    c''8[( d'' ees'']

    | % Up M53

    f''8[ g'' <c''' aes''> d''])~

    | % Up M54

    \shape #'((0 . -1.6) (0 . 0) (0 . 1) (0 . -1.6)) Slur
    d''8[( ees'' <aes'' f''> c''])~

    | % Up M55

    \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -0.7)) Slur
    c''8[( d'' <ees'' bes'> g'])~

    | % Up M56

    g'8[( a' <bes' f'> d'])~

    | % Up M57

    \tempo "Lento"

    d'8[( e' <f' c'> a])

    | % Up M58

    \tempo "Stretto"

    \tuplet 3/2 4 {
      \change Staff = "down"
      bes,8( f bes a
      \change Staff = "up"
      d' a')
    }

    | % Up M59

    \tuplet 3/2 4 {
      \change Staff = "down"
      \shape #'((0 . -0.2) (0 . 1.5) (0 . 0) (0 . 0)) Slur
      bes8(
      \change Staff = "up"
      f' bes' a' d'' a'')
    }

    | % Up M60

    \ottava #1
    
    \tuplet 3/2 4 {
      bes'8( f'' bes'' a'' d''' a''')
    }

    | % Up M61

    <d'''' bes''' d'''>2 % See the comment in Down M61

    \ottava #0

    \bar "|."
  }
  
  % Context for dynamic markings centred between the staves
  \new Dynamics {

    % Dynamics M01 (source P12)

    s2-\markup { \dynamic mf "en sourdine" }

    | % Dynamics M02
 
    s2

    | % Dynamics M03
 
    s2   
    
    | % Dynamics M04
 
    s2
    
    | % Dynamics M05
 
    s2
    
    | % Dynamics M06
 
    s2   
    
    | % Dynamics M07
 
    s2   
    
    | % Dynamics M08
 
    s2   

    | % Dymamics M09

    s4 s4\pp

    | % Dynamics M10

    s2
    
    | % Dynamics M11

    s2
    
    | % Dynamics M12

    s2
    
    | % Dynamics M13

    s2
    
    | % Dynamics M14

    s2
    
    | % Dynamics M15

    s2
    
    | % Dynamics M16

    s8 s4.-\markup { rall. }
    
    | % Dynamics M17

    s16
    s16-\markup { molto } s4.
    
    | % Dynamics M18
    
    s2-\tweak #'Y-offset #-3 \f

    | % Dynamics M19

    s2

    | % Dynamics M20

    s2

    | % Dynamics M21 (source P13)

    \tuplet 3/2 4 { s4\> s8\! } s4
    
    | % Dynamics M22

    s2

    | % Dynamics M23

    s2

    | % Dynamics M24

    s4 \tuplet 3/2 4 { s4\> s8\! }

    | % Dynamics M25

    s2

    | % Dynamics M26

    s2

    | % Dynamics M27

    s2

    | % Dynamics M28

    s2

    | % Dynamics M29

    s2

    | % Dynamics M30

    s2

    | % Dynamics M31

    s4 s4-\tweak #'Y-offset #-5.5 \f

    | % Dynamics M32

    s2

    | % Dynamics M33
    
    s4\> \tuplet 3/2 4 { s4 s8\! }

    | % Dynamics M34

    s16
    \once \override TextScript.extra-offset = #'(0 . 0.4)
    s16-\markup { accelerando } s8 s4

    | % Dynamics M35

    s4\< \tuplet 3/2 4 { s4 s8\! }

    | % Dynamics M36

    s2

    | % Dynamics M37

    s4\> \tuplet 3/2 4 { s8 s8\! s8 }

    | % Dynamics M38

    s2

    | % Dynamics M39

    s4\< \tuplet 3/2 4 { s4 s8\! }
    
    | % Dynamics M40

    s2

    | % Dynamics M41

    s2

    | % Dynamics M42

    s2-\tweak #'X-offset #0 \ff

    | % Dynamics M43

    s2

    | % Dynamics M44

    s2

    | % Dynamics M45

    s4 s16
    \once \override TextScript.extra-offset = #'(0 . 1.5)
    s8.-\markup { \italic "sempre" \dynamic ff }

    | % Dynamics M46

    s2

    | % Dynamics M47

    s4 s8\dim s8\!

    | % Dynamics M48

    s2-\tweak #'X-offset #0 \pp

    | % Dynamics M49

    s2

    | % Dynamics M50

    s2

    | % Dynamics M51

    s2

    | % Dynamics M52

    s2

    | % Dynamics M53

    s2

    | % Dynamics M54

    s2
    
    | % Dynamics M55

    s2

    | % Dynamics M56

    s32 s32-\markup { rall. molto } s16 s4.

    | % Dynamics M57

    s2

    | % Dynamics M58

    s2\p

    | % Dynamics M59

    s2

    | % Dynamics M60

    s2

    | % Dynamics M61

    s2

  }
  
  \new Staff = "down" {
    \key bes \major
    \time 2/4
    \clef bass
    \override Slur.details.accidental-collision = #15
    
    % Down M01 (source P12)

    \tuplet 3/2 4 { bes,8( f d') f( bes f')  }

    | % Down M02
    
    \omit TupletNumber

    \tuplet 3/2 4 { ees8( bes ees') d( bes f')  }

    | % Down M03

    \tuplet 3/2 4 { g8( d' bes') c( g c') }

    | % Down M04

    \tuplet 3/2 4 { f8( c' f') bes,( f bes) }

    | % Down M05

    \tuplet 3/2 4 { bes,( f d') f( g bes) }

    | % Down M06

    \tuplet 3/2 4 { c8( g ees') aes( c' f') }

    | % Down M07

    \tuplet 3/2 4 {
      \shape #'((0 . -0.9) (0 . 0) (0 . 0.7) (0 . -0.8)) Slur
      c'8( ees' aes') f( d' aes')
    }

    | % Down M08

    \tuplet 3/2 4 {
      \shape #'((0 . -2.7) (-0.5 . 1.8) (1 . 0) (0 . 0)) Slur
      bes,8( aes d') ees,( bes, g)
    }

    | % Down M09

    \tuplet 3/2 4 {
      \shape #'((0 . -4.6) (0 . 0) (0 . 0) (0 . 0)) Slur
      f8( bes f'
      \change Staff = "up"
      des' aes' des'')
      \change Staff = "down"
    }

    | % Down M10

    \tuplet 3/2 4 { ees,8( bes, ees f bes f') }

    | % Down M11

    s4 \tuplet 3/2 4 { ees,8( bes, ees) }

    | % Down M12

    <<
      {
        \omit TupletNumber

        \tuplet 3/2 4 {
          \stemDown
	  \shape #'((0 . -4.6) (0 . 0) (0 . 1) (0 . 0)) Slur
          f8( bes f'
          \stemNeutral
          \change Staff = "up"
          des' aes' des''~)
        }
      
        | % Down M13
        
        des''4 s4
      }
      \\
      {
        s2
        
        | % Down M13
          
        \change Staff = "down"
        \omit TupletNumber
        \tuplet 3/2 4 {
	  \shape #'((0 . 0) (0 . 0.7) (0 . 0) (0 . 0)) Slur
 	  des'8^( e' f' bes c' des')
	}
      }
    >>

    | % Down M14

    \tuplet 3/2 4 {
      \shape #'((0 . -1.9) (0 . 1.9) (0 . 0) (0 . -0.8)) Slur
      aes8( c' des' ges bes c'
    }

    | % Down M15

    \tuplet 3/2 4 { f8 ges aes ees f ges) }

    | % Down M16

    \tuplet 3/2 4 {
      \shape #'((0 . -0.7) (0 . 0.6) (0 . 0) (0 . -0.4)) Slur
      des8( f ges des f ges)
    }

    | % Down M17

    \tuplet 3/2 4 {
      \shape #'((0 . -2) (-2 . 2.2) (1 . 0) (0 . 0)) Slur
      c8( fes ges c fes ges)
    }

    | % Down M18

    \tuplet 3/2 4 {
      \shape #'((0 . -1.7) (0 . 0.5) (0 . 0) (0 . 0)) Slur
      bes,8( ees g d ees g)
    }

    | % Down M19

    \tuplet 3/2 4 { c8( d ees) }

    <<
      {
        \omit TupletNumber
    
        \tuplet 3/2 4 {
	  \stemDown
	  \shape #'((0 . 0) (0 . 0) (1 . 3) (0 . 0)) Slur
	  bes,8( f aes
	  \stemNeutral
	}

        | % Down M20

        \change Staff = "up"

        \stemDown
        \tuplet 3/2 4 { bes8 f' aes' bes' f'' aes'') }
        \stemNeutral
      }
      \\
      {
        s4

        | % Down M20

        \oneVoice

        R1*2/4
      }
    >>

    | % Down M21 (source P13)

    R1*2/4

    | % Down M22

    \tuplet 3/2 4 {
      \shape #'((0 . -1.2) (0 . 0) (0 . 0.8) (0 . -0.8)) Slur
      ees,8( bes, bes ees g des')
    }

    | % Down M23

    \tuplet 3/2 4 { ees8 ges des' }

    <<
      {
        \omit TupletNumber
    
        \stemDown
        \tuplet 3/2 4 {
	  \shape #'((0 . 0) (0 . 0) (1.5 . 3.5) (0 . 0)) Slur
	  aes,8( ees ges
	}
        \stemNeutral

        | % Down M24

        \tuplet 3/2 4 {
          aes8
          \change Staff = "up"
          ees' ges' aes' ees'' ges'')
        }
      }
      \\
      {
        s4

        | % Down M24

        \oneVoice

        s2
      }
    >>

    | % Down M25

    R1*2/4

    | % Down M26

    \tuplet 3/2 4 { f,8( c f) }

    <<
      {
	\omit TupletNumber
	\stemDown
    
	\tuplet 3/2 4 {
	  \shape #'((0 . -1.5) (0 . 0) (0 . 1) (0 . 0)) Slur
	  f8( c' ees'
	  
	  | % Down M27

	  \change Staff = "up"

	  f' c'' ees'' f'' c''' ees''')
	}
      }
      \\
      {
	s4

	| % Down M27
	
	s2
      }
    >>

    | % Down M28

    \stemNeutral
    \change Staff = "down"

    \tuplet 3/2 4 {
      bes,8( f d')
      f( bes f')
    }

    | % Down M29

    \tuplet 3/2 4 { ees8( bes ees') d( bes f') }

    | % Down M30

    \tuplet 3/2 4 { g8( d' bes') c( g c') }

    | % Down M31

    \tuplet 3/2 4 { f8( c' f') bes,( f d') }

    | % Down M32

    s2

    | % Down M33

    R1*2/4

    | % Down M34

    \tuplet 3/2 4 { aes,8( f bes) ees( f bes) }

    | % Down M35

    \tuplet 3/2 4 { d8( f bes) c( f bes) }

    | % Down M36

    \tuplet 3/2 4 {
      \shape #'((0 . -0.7) (-1 . -1.5) (0 . 1.2) (0 . -0.8)) Slur
      bes,8( f aes) c( f aes)
    }

    | % Down M37

    \tuplet 3/2 4 {
      \shape #'((0 . -0.2) (-0.5 . 0) (0.5 . 0.6) (0 . -1)) Slur
      d8( f aes) ees( f aes)
    }

    | % Down M38

    \tuplet 3/2 4 { d8( f g) c( f g) }

    | % Down M39

    \tuplet 3/2 4 { b,8( f g) a,( f g) }

    | % Down M40

    \tuplet 3/2 4 { g,8( f g) a,( f g) }

    | % Down M41

    \tuplet 3/2 4 { b,8( f g) c( f a) }

    | % Down M42

    \tuplet 3/2 4 { bes,,8( f, d) c( f bes) }

    | % Down M43

    \tuplet 3/2 4 { d8( f bes) des( f g) }

    | % Down M44

    \tuplet 3/2 4 { c,8( g, e) d( g c') }

    | % Down M45

    \tuplet 3/2 4 { e8 g c' ees g a }

    | % Down M46

    \tuplet 3/2 4 { d,8 a, fis e a d' }

    | % Down M47

    \tuplet 3/2 4 { fis8 a d' f a c' }

    | % Down M48

    \shape #'((0 . -2.2) (0 . 0) (0 . 1.5) (0 . -1.6)) Slur
    bes,16( f d' f)
    \shape #'((0 . -2.8) (-1.2 . 1.4) (0.2 . 1) (0 . -1.6)) Slur
    d( bes f' bes)

    | % Down M49

    \shape #'((0 . -0.8) (0 . 0) (0 . 1) (0 . -1.2)) Slur
    ees16( bes ees' bes)
    \shape #'((0 . -1.7) (0 . 0) (0 . 0.8) (0 . -1.7)) Slur
    d( bes f' bes)

    | % Down M50

    \shape #'((0 . -2.2) (0 . 0) (0 . 1.5) (0 . -1.7)) Slur
    g16( d' bes' d')
    \shape #'((0 . -1) (0 . 0) (0 . 0.5) (0 . -1.2)) Slur
    c( g c' g)

    | % Down M51

    \shape #'((0 . -0.8) (0 . 0) (0 . 0.5) (0 . -1.2)) Slur
    f16( c' f' c')
    \shape #'((0 . -0.8) (0 . 0) (0 . 0.8) (0 . -0.8)) Slur
    bes,( f bes f)

    | % Down M52

    \shape #'((0 . -1.7) (0 . 0) (0 . 1.7) (0 . -1.8)) Slur
    bes,16( f d' f)
    \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -0.3)) Slur
    f( g bes g)

    | % Down M53

    \shape #'((0 . -2.3) (-1 . 0) (0 . 1.7) (0 . -1.8)) Slur
    c16( g ees' g)
    \shape #'((0 . -0.5) (0 . 0) (0 . 1) (0 . -0.7)) Slur
    aes( c' f' c')

    | % Down M54

    \shape #'((0 . -1.8) (-0.5 . 0) (0 . 1) (0 . -1.8)) Slur
    c'16( ees' aes' ees')
    \shape #'((0 . -1.8) (0 . 0) (0 . 1) (0 . -1.8)) Slur
    f( d' aes' d')

    | % Down M55

    \shape #'((0 . -2.7) (-1 . 2.2) (0 . 0.5) (0 . -0.8)) Slur
    bes,16( aes d' aes)
    ees,( bes, g bes,)

    | % Down M56

    \shape #'((0 . -0.7) (0 . 0) (0 . 0.5) (0 . -1.2)) Slur
    f16( a ees' a)
    \shape #'((0 . -0.7) (0 . 0) (0 . 0.8) (0 . -1)) Slur
    bes,( f bes f)

    | % Down M57

    \shape #'((0 . 0) (0 . 0.7) (0 . 0.7) (0 . -0.3)) Slur
    c16( g bes g)
    f,( c ees16 c)

    | % Down M58

    s2

    | % Down M59

    s2

    | % Down M60

    s2

    | % Down M61

    \choice emendation {
      \editorialMarkup correction \with {
	type = substitution
	ann-type = critical-remark
	source = ""
	
	message = "Dans \\source{E}{P}, l'accord est composé de rondes
	et non de blanches.

        \\centerbigdot

        \\begin{otherlanguage}{english}In \\source{E}{P}, the chord consists
        of whole notes rather than half notes.\\end{otherlanguage}"
	
	item = NoteHead
      } {
	<bes,
	 \tag #'crit \footnote #'(1.5 . -2)
	 \markup {
	   Durées incorrectes.
	   \bigdot
	   Incorrect note values.
	 }
	 bes,,

	 \tag #'perf bes,,
       >2
      }
      \editorialMarkup sic \with {
	source = ""
      } {
	<bes, bes,,>1
      }
    }
    
    \bar "|."
  }
  
  % Context for pedal markings below the staves
  \new Dynamics {

    % Pedal M01 (source P12)

    s2

    | % Pedal M02

    s2

    | % Pedal M03

    s2

    | % Pedal M04

    s2

    | % Pedal M05

    s2

    | % Pedal M06

    s2

    | % Pedal M07

    s2

    | % Pedal M08

    s2

    | % Pedal M09

    s4.\sustainOn
    s16 s16\sustainOff

    | % Pedal M10

    s2

    | % Pedal M11

    s2

    | % Pedal M12

    s2

    | % Pedal M13

    s2

    | % Pedal M14

    s2

    | % Pedal M15

    s2

    | % Pedal M16

    s2

    | % Pedal M17

    s2

    | % Pedal M18

    s2

    | % Pedal M19

    s4 s4\sustainOn

    | % Pedal M20

    s2

    | % Pedal M21 (source P13)

    s4. s16 s16\sustainOff

    | % Pedal M22

    s2

    | % Pedal M23

    s2

    | % Pedal M24

    s2

    | % Pedal M25

    s2

    | % Pedal M26

    s2

    | % Pedal M27

    s2

    | % Pedal M28

    s2

    | % Pedal M29

    s2

    | % Pedal M30

    s2

    | % Pedal M31

    s2
    
    | % Pedal M32

    s2

    | % Pedal M33

    s2

    | % Pedal M34

    s2

    | % Pedal M35

    s2

    | % Pedal M36

    s2

    | % Pedal M37

    s2

    | % Pedal M38

    s2

    | % Pedal M39

    s2

    | % Pedal M40

    s2

    | % Pedal M41

    s2

    | % Pedal M42

    s2

    | % Pedal M43

    s2

    | % Pedal M44

    s2

    | % Pedal M45

    s2

    | % Pedal M46

    s2

    | % Pedal M47

    s2

    | % Pedal M48

    s2

    | % Pedal M49

    s2

    | % Pedal M50

    s2

    | % Pedal M51

    s2

    | % Pedal M52

    s2

    | % Pedal M53

    s2

    | % Pedal M54

    s2

    | % Pedal M55

    s2

    | % Pedal M56

    s2

    | % Pedal M57

    s2

    | % Pedal M58

    s2

    | % Pedal M59

    s2

    | % Pedal M60

    s2

    | % Pedal M61

    s2

  }
>>

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
  }
}

\header {
  title = \markup { \vspace #2 "Prélude V" }
  dedication = \markup { à \concat { M\super me } Henry Gauthier-Villars }
  composer = \composer
}
