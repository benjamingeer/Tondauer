% Tags
%
% #'crit: only in critical edition

\new PianoStaff <<
  \accidentalStyle piano
  
  \new Staff = "up" {
    \key a \minor
    \time 4/4
    \clef treble
    \tempo "Allegro"
    \override Slur.details.accidental-collision = #15
    
    % Up M01 (source P09)

    a''4( c'' b' g'')

    | % Up M02

    <<
      {
	e''4.( cis''8)
	cis''4( d''4)
      }
      \\
      {
	g'4. cis''8
	bes' a' g' f'
      }
    >>

    | % Up M03

    f''4( a' gis' e'')

    | % Up M04

    \shape #'((0.5 . 1) (0 . 1.7) (0 . 0.7) (0 . 0.3)) Slur
    <b'^( d'>4. gis'8)
    
    <<
      {
	gis'4( a')
      }
      \\
      {
	f'8 e' d' c'
      }
    >>

    | % Up M05

    f'4( f'' e'' e')

    | % Up M06

    ees''4( ees' d'' d')

    | % Up M07

    \shape #'((0 . -0.7) (0 . 0) (0 . 0) (0 . -0.5)) Slur
    des'4( des'' c'' c')

    | % Up M08

    ces''4( ces' bes' bes)

    | % Up M09

    \shape #'((0 . -2) (0 . 1.5) (0 . 0) (0 . 0)) Slur
    b'4( b'' ais'' ais')

    | % Up M10

    a''4( a' gis'' gis')

    | % Up M11

    \shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . -0.2)) Slur
    g'4( g'' fis'' fis')

    | % Up M12

    f''4( f' e'' e')

    | % Up M13

    a''4( c'' b' g'')

    | % Up M14

    \shape #'((0 . 0.6) (0 . 0) (0 . 0) (0 . 0.2)) Slur
    <e''^( g'>4. cis''8)

    <<
      {
      \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.2)) Slur
	cis''4( d'')
      }
      \\
      {
	bes'8 a' g' f'
      }
    >>

    | % Up M15 (source P10)

    f''4( a' gis' e'')

    | % Up M16

    <<
      {
	b'4. g'8
	g'4( a')
      }
      \\
      {
	\stemUp
	d'4. s8
	\stemDown
	f'8 e' d' c'
	\stemNeutral
      }
    >>

    | % Up M17

    <<
      {
	e''4( f'')
	e''( f'')
      }
      \\
      {
	bes'8( a' g' f')
	bes'( a' g' f')
      }
    >>
    
    | % Up M18

    <<
      {
	b'4( c'')
	b'( c'')
      }
      \\
      {
	f'8( e' d' c')
	f'( e' d' c')
      }
    >>
    
    | % Up M19

    <<
      {
	a'4( bes')
	a'( bes')
      }
      \\
      {
	ees'8( d' c' bes)
	ees'( d' c' bes)
      }
    >>

    | % Up M20

    <<
      {
	fis'4( g')
	fis'( g')
      }
      \\
      {
	c'8( b a g)
	c'( b a g)
      }
    >>

    | % Up M21

    \tempo \markup { \concat { 1\super er } tempo }

    bes''4(\pp d'' cis'' a'')

    | % Up M22

    \shape #'((0 . 0) (0 . 0) (0 . 0.4) (0 . 0)) Slur
    c'''4( e'' dis'' b'')

    | % Up M23

    bes''4( d'' cis'' a'')

    | % Up M24

    \shape #'((0 . 0) (0 . 0) (0 . 0.3) (0 . 0)) Slur
    c'''4( e'' dis'' b'')

    | % Up M25

    <fis''' b''>4(
    <dis''' fis''>
    <b'' dis''>
    <fis'' b'>)

    | % Up M26

    <fis''' b''>4(
    <dis''' fis''>
    <b'' dis''>
    <fis'' b'>)

    | % Up M27

    <a'' c''>4
    <c'' e'>
    <b' d'>
    <g'' b'>

    | % Up M28

    <e'' g'>4
    <a' cis'>^>\sfz~
    <a' cis'>
    <d'' f' d'>

    | % Up M29

    <f'' a'>4
    <a' b>
    <gis' b>
    <e'' gis'>

    | % Up M30

    <b' d'>4
    <gis' b>^>\sfz~
    <gis' b>
    <a' c' a>

    | % Up M31

    \shape #'((0 . -1.5) (0 . 1) (0 . 1) (0 . -1.5)) Slur
    d''4( c''' b'' b')

    | % Up M32

    bes''4( bes' a'' a')

    | % Up M33 (source P11)

    \shape #'((0 . -0.8) (0 . 0.2) (0 . 0) (0 . -0.8)) Slur
    aes'4( aes'' g'' g')

    | % Up M34

    ges''4( ges' f'' f')

    | % Up M35

    \shape #'((0 . -2) (0 . 1.5) (0 . 0.2) (0 . 0)) Slur
    b'4( b'' ais'' ais')

    | % Up M36

    a''4( a' gis'' gis')

    | % Up M37

    \shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . -0.2)) Slur
    g'4( g'' fis'' fis')

    | % Up M38

    f''4( f' e'' e')

    | % Up M39

    g'4( e'' f'' a')

    | % Up M40

    <d'' f'>4.
    \stemUp
    b'8
    \stemNeutral

    <<
      {
	b'8( c'' d'' e'')
      }
      \\
      {
	f'4_> e'_>
      }
    >>

    | % Up M41

    \shape #'((0 . -1) (0 . 0) (0 . 1.2) (0 . -1)) Slur
    b'4( g'' a'' c'')

    | % Up M42

    <e'' g'>4.
    \stemDown
    cis''8
    \stemNeutral

    <<
      {
	cis''8( d'' e'' f'')
      }
      \\
      {
	bes'4 a'
      }
    >>

    | % Up M43

    f''4( a' gis' e'')

    | % Up M44

    <b' d'>4.
    \stemUp
    gis'8
    \stemNeutral

    <<
      {
	gis'8( a' b' c'')
      }
      \\
      {
	f'4 e'
      }
    >>

    | % Up M45

    f'4^( a gis e')

    | % Up M46

    b4. gis8 gis4( a4)

    | % Up M47

    r2
    \tempo \markup { a tempo }
    r4 <f' d' a>4

    | % Up M48

    <e' c' a>4^\markup { \italic { energico } }
    d'4 c'4
    \change Staff = "down"
    \stemUp
    <b e d>4

    | % Up M49

    <a e c>2.
    \change Staff = "up"
    f'4

    | % Up M50

    <e' c'>4 d' c'
    \change Staff = "down"
    <e d>4

    | % Up M51

    \tempo \markup { a tempo }
    <a e c>2
    \change Staff = "up"
    \stemNeutral
    <e'' a' e'>2

    | % Up M52

    \slashedGrace e'''8( a''1)
    
    \bar "|."
  }
  
  % Context for dynamic markings centred between the staves
  \new Dynamics {

    % Dynamics M01 (source P09)

    s1\mf

    | % Dynamics M02

    s1

    | % Dynamics M03

    s1

    | % Dynamics M04

    s1

    | % Dynamics M05

    s1-\tweak #'Y-offset #-4.75 \p

    | % Dynamics M06

    s1

    | % Dynamics M07

    s1

    | % Dynamics M08

    s1

    | % Dynamics M09

    s4\mf s4\> s2

    | % Dynamics M10

    s8 s8\! s2.

    | % Dynamics M11

    s1

    | % Dynamics M12

    s1

    | % Dynamics M13

    s1

    | % Dynamics M14

    s1

    | % Dynamics M15 (source P10)

    s1

    | % Dynamics M16

    s1

    | % Dynamics M17

    s16\f s16-\markup { allargando } s8 s2.

    | % Dynamics M18

    s1

    | % Dynamics M19

    s1\ff

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

    \once \override TextScript.extra-offset = #'(0 . 0.7)
    s1-\markup { dolce legato }

    | % Dynamics M26

    s1

    | % Dynamics M27

    s1-\tweak #'X-offset #0 -\tweak #'Y-offset #-6 \f

    | % Dynamics M28

    s1-\tweak #'X-offset #0 -\tweak #'Y-offset #-6 \ff

    | % Dynamics M29

    s1

    | % Dynamics M30

    s1

    | % Dynamics M31

    s8 s8-\tweak #'Y-offset #-6 \p s2.

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

    s1\mf

    | % Dynamics M40

    s1

    | % Dynamics M41

    s1\p

    | % Dynamics M42

    s1

    | % Dynamics M43

    s1

    | % Dynamics M44

    s1

    | % Dynamics M45

    s8 s8-\markup { dim. \hspace #6 e \hspace #6 rall. }
    s2.

    | % Dymamics M46

    s1-\tweak #'Y-offset #-2 -\tweak #'X-offset #0 \pp

    | % Dynamics M47

    s2 s8 s8-\tweak #'Y-offset #-2 \f s4

    | % Dynamics M48

    s1

    | % Dynamics M49

    s2 s2\mf

    | % Dynamics M50

    s1

    | % Dynamics M51

    s1

    | % Dynamics M52

    \slashedGrace s8 s1

  }
  
  \new Staff = "down" {
    \key a \minor
    \time 4/4
    \clef bass
    \override Slur.details.accidental-collision = #15
    
    % Down M01 (source P09)

    r8
    \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) Slur
    e8( a c'
    d' e' f' e')

    | % Down M02

    r8
    \shape #'((0 . -0.7) (0 . 0) (0 . 0.8) (0 . -0.5)) Slur
    a,8( e bes)
    r8 a,8( d a)

    | % Down M03

    r8 b,8( f d')
    e8 f'( e' d')

    | % Down M04

    r8 e,8( f b)
    r8 a,8( e a)

    | % Down M05

    r8 b,8( g d')
    r8 c8( g c')

    | % Down M06

    r8
    \shape #'((0 . -0.9) (0 . 0) (0 . 0.5) (0 . -0.8)) Slur
    c8( f g
    a bes c' bes)

    | % Down M07

    r8
    \shape #'((0 . -1.2) (0 . 0) (0 . 0.5) (0 . -0.5)) Slur
    g,8( ees bes)
    r8
    \shape #'((0 . -0.5) (0 . 0) (0 . 0.5) (0 . -0.5)) Slur
    aes,8( ees aes)

    | % Down M08

    r8 aes,8( des ees)
    \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -0.4)) Slur
    f( ges aes ges)

    | % Down M09

    r8 eis,8( cis gis)
    r8 fis,8( cis fis)

    | % Down M10

    r8
    \shape #'((0 . 0) (0 . 0.0) (0 . 0.7) (0 . -0.7)) Slur
    fis8( b cis'
    dis' e' fis' e')

    | % Down M11

    r8 cis,8( a, e)
    r8 d,8( a, d)

    | % Down M12

    r8
    \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) Slur
    d8( g a
    b c' d' c')

    | % Down M13

    r8
    \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) Slur
    e8( a c'
    d' e' f' e')
    
    | % Down M14

    r8
    \shape #'((0 . -1.5) (0 . 0) (0 . 0.5) (0 . -0.5)) Slur
    a,8( e bes)
    r8 a,8( d a)

    | % Down M15 (source P10)

    r8 b,8( f d')
    e8 f'( e' d')
    
    | % Down M16

    r8 e,8( f b)
    r8 f,8( c a)

    | % Down M17

    r8 f,8( c a)
    r8 f,8( c a)

    | % Down M18

    r8 g,8( c g)
    r8 c,8( g, e)

    | % Down M19

    r8 f,8( bes, f)
    r8 bes,,8( f, d)

    | % Down M20

    r8 d,8( g, d)
    r8 g,,8( d, b,)

    \clef treble

    | % Down M21

    r8 g8( e' bes')
    r8 a8( e' a')

    | % Down M22

    r8 a8( fis' c'')
    r8 b8( fis' b')
    
    | % Down M23

    r8 g8( e' bes')
    r8 a8( e' a')

    | % Down M24

    r8 a8( fis' c'')
    r8 b8( fis' b')

    | % Down M25

    r8 b8( fis' b')
    r8 b8( fis' dis'')

    | % Down M26

    r8 b8( fis' b')
    r8 b8( fis' dis'')

    \clef bass

    | % Down M27

    r8
    \shape #'((0 . -0.2) (0 . 0) (0 . 0.8) (0 . -0.8)) Slur
    e8( a c'
    d' e' f' e')

    | % Down M28

    r8
    \shape #'((0 . -1) (0 . 0) (0 . 0.6) (0 . -0.5)) Slur
    a,8( e bes)
    gis( a bes a)

    | % Down M29

    r8 b,8( f d')
    \shape #'((0 . -2) (0 . 1.2) (0 . -0.2) (0 . -0.2)) Slur
    e( f' e' d')

    | % Down M30

    r8 e,8( e f)
    dis( e f e)

    | % Down M31

    r8 fis,8( d a)
    r8 g,8( d g)

    | % Down M32

    r8
    \shape #'((0 . 0) (0 . 0.6) (0 . 0.6) (0 . 0)) Slur
    g8( c' d'
    e' f' g' f')

    | % Down M33

    r8
    \shape #'((0 . 0) (0 . 0.4) (0 . 0.6) (0 . -0.2)) Slur
    d,8( bes, f)
    r8 ees,8( bes, ees)

    | % Down M34

    r8
    \shape #'((0 . -1.1) (0 . 0.9) (0 . 0.1) (0 . -0.6)) Slur
    ees8( aes bes
    c' des' ees' des')

    | % Down M35

    r8 eis,8( cis gis)
    r8 fis,8( cis fis)

    | % Down M36

    r8
    \shape #'((0 . 0) (0 . 0.5) (0 . 0.2) (0 . -0.7)) Slur
    fis8( b cis'
    dis' e' fis' e')

    | % Down M37

    r8 cis,8( a, e)
    r8 d,8( a, d)

    | % Down M38

    r8
    \shape #'((0 . 0) (0 . 0.6) (0 . 0.5) (0 . 0)) Slur
    d8( g a
    b c' d' c')

    | % Down M39

    r8 g,8( c g)
    r8 f,8( c d)

    | % Down M40

    r8 g,8( f g)
    r8 c,8( g, c)

    | % Down M41

    r8 e8( b e')
    r8 e8( a e')

    | % Down M42

    r8
    \shape #'((0 . -1) (0 . 0) (0 . 0.6) (0 . -0.4)) Slur
    a,8( e bes)
    r8 a,8( f d')

    | % Down M43

    r8 b,8( f d')
    \shape #'((0 . -2) (0 . 1) (0 . -0.2) (0 . -0.2)) Slur
    e( f' e' d')

    | % Down M44

    r8 e,8( f b)
    r8 a,8( e a)

    | % Down M45

    r8 d,8( b, f)
    r8 e,8( b, e)

    | % Down M46

    r8 e,8( d e)
    r8 a,8( e c')

    | % Down M47

    <b, b,,>2.\sfz s4

    | % Down M48

    \stemDown
    <c c,>4-\markup { \italic { marcato il basso } }

    <<
      {
	\crossStaff {
	  <a f?>4
	  <a e>
	}
      }
      \\
      {
	d,8 e,8 fis,4
      }
    >>

    gis,4

    | % Down M49

    a,2.

    <<
      {
	\crossStaff {
	  <b a>4
	}
      }
      \\
      {
	<d d,>4
      }
    >>

    | % Down M50

    <<
      {
	\crossStaff {
	  a4
	  <a f>4
	  <a e>4
	}
      }
      \\
      {
	<c c,>4
	<d d,>4
	e,4
      }
    >>

    <e, e,,>4

    | % Down M51

    <a, a,,>2
    <c' a e>2
    \stemNeutral

    | % Down M52

    \slashedGrace s8
    <c' e a,>1

    \bar "|."

  }

  % Context for pedal markings below the staves
  \new Dynamics {

    % Pedal M01 (source P09)

    s1

    | % Pedal M02

    s1

    | % Pedal M03

    s1

    | % Pedal M04

    s1

    | % Pedal M05

    s1

    | % Pedal M06

    s1

    | % Pedal M07

    s1

    | % Pedal M08

    s1

    | % Pedal M09

    s1

    | % Pedal M10

    s1

    | % Pedal M11

    s1

    | % Pedal M12

    s1

    | % Pedal M13

    s1

    | % Pedal M14

    s1

    | % Pedal M15 (source P10)

    s1

    | % Pedal M16

    s1

    | % Pedal M17

    s1

    | % Pedal M18

    s1

    | % Pedal M19

    s1

    | % Pedal M20

    s1

    | % Pedal M21

    s1

    | % Pedal M22

    s1

    | % Pedal M23

    s1

    | % Pedal M24

    s1

    | % Pedal M25

    s1\sustainOn

    | % Pedal M26

    s2 s4 s8. s16\sustainOff

    | % Pedal M27

    s1

    | % Pedal M28

    s1

    | % Pedal M29

    s1

    | % Pedal M30

    s1

    | % Pedal M31

    s1

    | % Pedal M32

    s1

    | % Pedal M33

    s1

    | % Pedal M34

    s1

    | % Pedal M35

    s1

    | % Pedal M36

    s1

    | % Pedal M37

    s1

    | % Pedal M38

    s1

    | % Pedal M39

    s1

    | % Pedal M40

    s1

    | % Pedal M41

    s1

    | % Pedal M42

    s1

    | % Pedal M43

    s1

    | % Pedal M44

    s1
 
    | % Pedal M45

    s1

    | % Pedal M46

    s1

    | % Pedal M47

    s1

    | % Pedal M48

    s1

    | % Pedal M49

    s1

    | % Pedal M50

    s1

    | % Pedal M51

    s1

    | % Pedal M52
    
    \slashedGrace s8 s1
    
 }
>>

\layout {
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }

  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
  }
}

\header {
  title = \markup { \vspace #2 "Prélude IV" }
  dedication = \markup { à \concat { M\super r } Henry Gauthier-Villars }
  composer = \composer
}
