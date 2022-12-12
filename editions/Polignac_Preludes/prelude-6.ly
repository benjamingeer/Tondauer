% Tags
%
% #'crit: only in critical edition

\new PianoStaff <<
  \accidentalStyle piano
  
  \new Staff = "up" {
    \key aes \major
    \time 4/4
    \clef treble
    \tempo "Allegro molto"
    \override Slur.details.accidental-collision = #15
    
    % Up M01 (source P15)

    d'4. ees'8
    e'\<( f'\! bes'\> aes'\!)

    | % Up M02

    <<
      {
	ees''2^>
      }
      \\
      {
	ees'4. e'8
      }
    >>

    f'\<( ges'\! des''\> ces''\!)

    | % Up M03

    ees''8( des'' ces'' bes'
    aes' ges' fes' ees')

    | % Up M04

    d'4. des'8
    c'( des' des'' bes')

    | % Up M05

    d'4. ees'8
    e'8( f' ees'' c'')

    | % Up M06

    <f'' d'>4.^>\arpeggio ees'8
    e'( f' c'' a')

    | % Up M07

    f''8( e'' d'' c''
    bes' a' g' f')

    | % Up M08

    <<
      {
	bes'4. a'8
      }
      \\
      {
	ees'4 r4
      }
    >>

    \shape #'((0 . 0) (0 . 0) (0 . -0.6) (0 . 0.8)) Slur
    aes'8( g' d' ees')

    | % Up M09

    c''4. bes'8
    a'( aes' f' ges')

    | % Up M10

    ees'8( f'

    \tag #'crit \footnote #'(-1.5 . 3)
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
	
	message = "Il manque l'altération du \\textit{sol}\\fl\\ de la
        portée supérieure.

        \\centerbigdot

        \\begin{otherlanguage}{english}The accidental is missing on
        the \\textit{G}\\fl\\ in the upper staff.\\end{otherlanguage}"
	
	item = Accidental
      } { ges'8 }
      \editorialMarkup sic \with {
	source = ""
      } { g'8 }
    }

    aes'
    bes' ces'' des'' ees'')

    | % Up M11

    f''4. e''8
    ees''8( d'' a' bes')

    | % Up M12 (source P16)

    \shape #'((0 . 0) (0 . 0) (0 . 0.8) (0 . -0.8)) Slur
    des''8( ges' des'' ges'
    des''8 ges' des'' ges')~

    | % Up M13

    \shape #'((0 . 0) (0 . 0) (0 . 0.8) (0 . -0.8)) Slur
    ges'8( aes' bes' ces''
    des'' ees'' f'' ges'')

    | % Up M14

    g''8( fis'' e'' d''
    cis'' b' a' g')

    | % Up M15

    \shape #'((0 . 0) (0 . 0) (0 . 0.4) (0 . -0.4)) Slur
    f'?8( g' a' bes'
    c'' d'' e'' f'')

    | % Up M16

    ges''8( f'' ees'' des''
    c'' bes' aes' ges')

    | % Up M17

    \shape #'((0 . 0) (0 . 0) (0 . 0.8) (0 . -0.8)) Slur
    fes'8(

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
	
	message = "Il manque l'altération du \\textit{sol}\\fl\\ de la
        portée supérieure.

        \\centerbigdot

        \\begin{otherlanguage}{english}The accidental is missing on
        the \\textit{G}\\fl\\ in the upper staff.\\end{otherlanguage}"
	
	item = Accidental
      } { ges'8 }
      \editorialMarkup sic \with {
	source = ""
      } { g'8 }
    }

    aes' beses'
    ces'' des'' ees'' fes'')

    | % Up M18

    f''8( e'' d'' c''
    b' a' g' f')

    | % Up M19

    \shape #'((0 . 0) (0 . 0.5) (1.5 . -2) (0 . 1.9)) Slur
    e'8( c'' e' c''
    e' c'' e' c'')

    | % Up M20

    \shape #'((0 . 0) (0 . 0) (0.8 . -0.9) (0 . 0.9)) Slur
    ees'8( c'' ees' c'')
    \shape #'((0 . 0) (0 . 0) (0.7 . -0.7) (0 . 0)) Slur
    d'( g' d' g')

    | % Up M21

    \tempo \markup { a tempo }

    d'4. ees'8
    e'( f' bes' aes')

    | % Up M22

    fes''( ees'' des'' ces''
    bes' aes' ges' f')

    | % Up M23

    e'4. g'8
    \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . -0.3)) Slur
    aes'( bes' des'' ces'')

    | % Up M24

    \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0)) Slur
    ges''8( fes'' ees'' des''
    ces'' bes' aes' fes')

    | % Up M25

    <ees'' ees'>4.

    <<
      {
	ees''?8
	ees''4^> r4
      }
      \\
      {
	e'8
	f'8 ges' des'' ces''
      }
    >>

    | % Up M26

    ees''8( des'' ces'' bes'
    aes' ges' fes' ees')

    | % Up M27

    d'4. des'8
    c'8( des' a' fis')

    | % Up M28

    ees'4.

    \tag #'crit \footnote #'(-1.5 . 4)
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
	
	message = "Il manque probablement un \\na\\ au \\textit{ré},
        étant donné la forme de ce motif dans ses autres apparitions.

        \\centerbigdot

        \\begin{otherlanguage}{english}The \\textit{D} is probably
        missing a \\na, considering the shape of the other occurrences
        of this motif.\\end{otherlanguage}"
	
	item = Accidental
      } { d'8 }
      \editorialMarkup sic \with {
	source = ""
      } { des'8 }
    }

    ees'8( fis' ees'' c'')

    | % Up M29

    <<
      {
	f''4.^> f''8
	f''4.^> f''8		
      }
      \\
      {
	f'2\sf f'2\sf
      }
    >>

    | % Up M30

    f''8( ees'' d'' c''
    bes' a' g' f')

    | % Up M31

    <<
      {
	bes'4.^> bes'8
	bes'4.^> bes'8		
      }
      \\
      {
	bes2 bes2
      }
    >>

    | % Up M32

    bes'8( aes' g' f'
    ees' d' c' bes)

    | % Up M33

    e'4. f'8
    fis'8( g' c'' bes')

    | % Up M34

    fis''8( g'' c''' bes'')
    fis''8( g'' c''' bes'')

    | % Up M35

    d'4. ees'8
    e'8( f' bes' aes')

    | % Up M36

    \shape #'((0 . -0.8) (0 . 0.4) (0 . 0) (0 . 0)) Slur
    e''8( f'' bes'' aes''
    e''8 f'' bes'' aes'')

    | % Up M37

    aes'4. a'8
    bes'8( b' des'' c'')

    | % Up M38

    aes'4. bes'8
    a'8( bes' ees'' des'')

    | % Up M39

    \shape #'((0 . -0.8) (0 . 0.4) (0 . 0) (0 . 0)) Slur
    a''8( bes'' ees''' des'''
    a''8 bes'' ees''' des''')

    | % Up M40

    <f''' f''>4.
    <f''' f''>8
    <f''' f''>4.
    <f''' f''>8

    | % Up M41

    <f'''? f''?>8
    <ees''' ees''>
    <des''' des''>
    <c''' c''>
    <bes'' bes'>
    <aes'' aes'>
    <ges'' ges'>
    <fes'' fes'>

    | % Up M42

    <ees'' ees'>1

    | % Up M43

    d'4. ees'8
    e'8( f' <ees'' g'> <c'' aes'>)

    | % Up M44

    d'4. ees'8
    e'8( f' <ees'' g'> <c'' aes'>)

    | % Up M45

    r8 ees'8( c'' ees'')
    r8 ees''( c''' ees''')

    | % Up M46

    r8
    \ottava #1
    ees''' c'''' ees''''
    <ees''' c'''' ees''''>2
    \ottava #0

    \bar "|."
  }
  
  % Context for dynamic markings centred between the staves
  \new Dynamics {

    % Dynamics M01 (source P15)

    s1\mf

    | % Dynamics M02

    s1

    | % Dynamics M03

    s8\> s4. s4. s8\!

    | % Dynamics M04

    s1

    | % Dynamics M05

    s1

    | % Dynamics M06

    s1\f

    | % Dynamics M07

    s2 s8\dim s4.\!

    | % Dynamics M08

    s1

    | % Dynamics M09

    s4.\> s8\!
    s2

    | % Dynamics M10

    s8\< s4. s4. s8\!

    | % Dynamics M11

    s1\f

    | % Dynamics M12 (source P16)

    s1-\markup { dolce }

    | % Dynamics M13

    s8\< s4. s4. s8\!

    | % Dynamics M14

    s8\> s4. s4. s8\!

    | % Dynamics M15

    s8\< s4. s4. s8\!

    | % Dynamics M16

    s8\> s4. s4. s8\!

    | % Dynamics M17

    s1

    | % Dynamics M18

    s1

    | % Dynamics M19

    s1

    | % Dynamics M20

    s16 s16-\markup { rall. } s4. s2

    | % Dynamics M21

    s1\f

    | % Dynamics M22

    s1

    | % Dynamics M23

    s1

    | % Dynamics M24

    s1

    | % Dynamics M25

    s1\f

    | % Dynamics M26

    s1

    | % Dynamics M27

    s1

    | % Dynamics M28

    s1

    | % Dynamics M29

    s1

    | % Dynamics M30

    s1

    | % Dynamics M31

    s8 s4.\ff s2

    | % Dynamics M32

    s1
    
    | % Dynamics M33

    s1\f

    | % Dynamics M34

    s1\p

    | % Dynamics M35

    s1\f

    | % Dynamics M36

    s1\p

    | % Dynamics M37

    s1

    | % Dynamics M38

    s1

    | % Dynamics M39

    s1\p

    | % Dynamics M40

    s1-\tweak #'X-offset #0 \ff

    | % Dynamics M41

    s1

    | % Dynamics M42

    s4 s4\> s4. s8\!

    | % Dynamics M43

    s1\p

    | % Dynamics M44

    s1    

    | % Dynamics M45

    s1    

    | % Dynamics M46

    s1    

  }
  
  \new Staff = "down" {
    \key aes \major
    \time 4/4
    \clef bass
    \override Slur.details.accidental-collision = #15
    
    % Down M01 (source P15)

    r8 g,8( ees bes)
    r8
    \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . 0)) Slur
    aes,8( ees c')

    | % Down M02

    r8
    \shape #'((0 . -1.6) (0 . 0) (0 . 0.7) (0 . -0.6)) Slur
    bes,8( ees des')
    r8 
    \shape #'((0 . -0.8) (0 . 0) (0 . 0.7) (0 . -0.6)) Slur
    ees8( ges ees')    
    
    | % Down M03

    r8 fes8( aes des')
    r8 aes,8( ces aes)    
    
    | % Down M04

    r8 g,8( ees bes)
    r8 ges,8( des bes)    
    
    | % Down M05

    r8 g,8( ees bes)
    r8 aes,8( f c')

    | % Down M06

    r8
    \shape #'((0 . -1.2) (0 . 0) (0 . 0.4) (0 . -0.3)) Slur
    bes,8( f d')
    r8 a,8( f c')
    
    | % Down M07

    r8
    \shape #'((0 . -1.4) (0 . 0) (0 . 0.5) (0 . -0.2)) Slur
    c8( g e')
    r8
    \shape #'((0 . -0.3) (0 . 0) (0 . 0.2) (0 . -0.2)) Slur
    d8( f d')

    | % Down M08

    r8 g,8( ees bes)
    r8 aes,8( ees c')

    | % Down M09

    r8
    \shape #'((0 . -2) (0 . 0) (0 . 0.4) (0 . -0.2)) Slur
    aes,8( f d')
    r8
    \shape #'((0 . -1.2) (0 . 0) (0 . 1.2) (0 . -0.8)) Slur
    bes,8( ges des')

    | % Down M10

    r8
    \shape #'((0 . -1) (0 . 0.6) (0 . 0) (0 . 0)) Slur
    ces8( ges ees')
    r8 ees8( ges ees')

    | % Down M11

    r8 a,8( f c')
    r8
    \shape #'((0 . -1.2) (0 . 0) (0 . 0.5) (0 . -0.2)) Slur
    bes,8( f d')

    | % Down M12

    r8 des'( ges bes,)
    r8 des'( ges bes,)

    | % Down M13

    r8 des'( ges bes,)
    r8 des'( ges bes,)

    | % Down M14

    r8 d'( fis a,)
    r8 d'( fis a,)

    | % Down M15

    r8 c'( f a,)
    r8 c'( f a,)

    | % Down M16

    r8 des'8( f aes,)
    r8 des'8( f aes,)

    | % Down M17

    r8 ces'8( fes aes,)
    r8 ces'8( fes aes,)

    | % Down M18

    r8 c'8( e g,)
    r8 c'8( e g,)

    | % Down M19

    r8 c'8( e g,)
    r8 c'8( e g,)

    | % Down M20

    r8 c'8( ees g,)
    r8 b8( d g,)

    | % Down M21

    r8
    \shape #'((0 . -1.2) (0 . 0) (0 . 0.8) (0 . -0.7)) Slur
    g,8( ees bes)
    r8
    \shape #'((0 . -1) (0 . 0.6) (0 . 0) (0 . 0)) Slur
    aes,8( ees c')
    
    | % Down M22

    r8
    \shape #'((0 . -1.2) (0 . 0) (0 . 1) (0 . -0.7)) Slur
    bes,8( ees des')
    r8
    \shape #'((0 . -0.6) (0 . 0) (0 . 0.8) (0 . -0.7)) Slur
    ces8( aes ces')

    | % Down M23

    r8
    \shape #'((0 . -1.2) (0 . 0) (0 . 1) (0 . -0.7)) Slur
    des8( aes fes')
    r8
    \shape #'((0 . 0.2) (0 . 0) (0 . 0.5) (0 . -0.7)) Slur
    fes8( aes ces')

    | % Down M24

    r8
    \shape #'((0 . -1.2) (0 . 0) (0 . 0.7) (0 . -0.7)) Slur
    des8( aes fes')
    r8
    \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . -0.7)) Slur
    fes8( aes ces')

    | % Down M25

    r8
    \shape #'((0 . -1.6) (0 . 0) (0 . 0.6) (0 . -0.3)) Slur
    aes,8( ees c'?)
    r8
    \shape #'((0 . -0.5) (0 . 0) (0 . 0.8) (0 . -0.7)) Slur
    ees8( ges ees')

    | % Down M26

    r8 fes8( aes des')
    r8 aes,8( ces aes)

    | % Down M27

    r8 g,8( ees bes)
    r8 fis,8( ees a)

    | % Down M28

    r8
    \shape #'((0 . -0.5) (0 . 0) (0 . 0.6) (0 . -0.3)) Slur
    a,8( ees a)
    r8
    \shape #'((0 . 0) (0 . 0.5) (0 . 0) (0 . 0)) Slur
    a,8( fis ees')

    | % Down M29

    r8
    \shape #'((0 . -2.1) (0 . 0) (0 . 0.4) (0 . -0.3)) Slur
    bes,8( f d')
    r8 f8( bes d')

    | % Down M30

    r8
    \shape #'((0 . -2.1) (0 . 0) (0 . 0.4) (0 . -0.3)) Slur
    bes,8( f d')
    r8 f8( bes d')

    | % Down M31

    r8 ees,8( bes, g)
    r8 bes,8( ees g)

    | % Down M32

    r8 ees,8( bes, g)
    r8 bes,8( ees g)

    | % Down M33

    r8 d,8( bes, f)
    r8 ees,8( bes, g)

    | % Down M34

    r8 ees,8( bes, g)
    r8 ees,8( bes, g)

    | % Down M35

    r8 g,8( ees bes)
    r8
    \shape #'((0 . 0) (0 . 0) (0 . 3.5) (0 . 0)) Slur
    aes,8( f des')

    | % Down M36

    r8 aes,8( f des')
    r8 aes,8( f des')

    | % Down M37

    r8 aes,8( f des')
    r8 aes,8( ees c')

    | % Down M38

    r8 aes,8( f des')
    r8 ges,8( des bes)
    
    | % Down M39

    r8 ges,8( des bes)
    r8 ges,8( des bes)

    | % Down M40

    r8
    \shape #'((0 . -1.4) (0 . 0.6) (0 . 0) (0 . 0)) Slur
    f,8( d bes)
    r8 f,8( d bes)

    | % Down M41

    r8 ees,8( des g)
    r8 ees,8( des g)
    
    | % Down M42

    r8 aes,8( ees c')
    r8 aes,8( ees c')

    | % Down M43

    r8 aes,8( ees c')
    r8
    \shape #'((0 . -1.4) (0 . 0.8) (0 . 0) (0 . 0)) Slur
    aes,8( ees c')

    | % Down M44

    r8 aes,8( ees c')
    r8
    \shape #'((0 . -1.4) (0 . 0.5) (0 . 0) (0 . 0)) Slur
    aes,8( ees c')

    | % Down M45

    <ees aes,>2
    <ees aes,>2

    | % Down M46

    <ees aes,>2
    <ees aes,>2

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
  title = \markup { \vspace #2 "Prélude VI" }
  dedication = \markup { à \concat { M\super r } Lazare Weiller }
  composer = \composer
}
