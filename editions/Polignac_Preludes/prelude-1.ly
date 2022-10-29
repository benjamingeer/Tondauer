% Tags
%
% #'crit: only in critical edition

\new PianoStaff <<
  \accidentalStyle piano
  
  \new Staff = "up" {
    \key e \major
    \time 6/8
    \clef treble
    \tempo "Allegro moderato"
    \override Slur.details.accidental-collision = #15
    
    % Up M01
    
    r4 b'8(
    e''8 fis''8 gis''8)
    
    | % Up M02
    
    \shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . -0.4)) Slur
    <a'' fis''>4.(
    <b'' gis''>4.)
    
    | % Up M03
    
    r4 b'8(
    e''8 fis''8 gis''8)
    
    | % Up M04
    
    \shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . -0.4)) Slur
    <a'' fis''>4.(
    <b'' gis''>4.)
    
    | % Up M05
    
    <cis''' a''>4(
    <fis'' dis''>8)
    
    <b'' gis''>4(
    <e'' cis''>8)
    
    | % Up M06
    
    <a'' fis''>4(
    <dis'' b'>8)
    
    <gis'' e''>4(
    <cis'' a'>8)
    
    | % Up M07
    
    <fis'' dis''>4
    <a' b'>8
    
    <gis' e''>8 fis''8 gis''8
    
    | % Up M08
    
    \shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . -0.4)) Slur
    <a'' fis''>4.(
    <b'' gis''>4.)
    
    | % Up M09
    
    r8 bis''8( cis'''8)
    r8 eis''8( fis''8)
    
    | % Up M10
    
    r8
    \shape #'((0 . 0) (0 . 0) (0 . 0.4) (0 . -0.4)) Slur
    ais''8( b''8)
    r8
    \shape #'((0 . 0) (0 . 0) (0 . 0.4) (0 . -0.4)) Slur
    dis''8( e''8)
    
    | % Up M11
    
    r8
    \shape #'((0 . -0.4) (0 . 0) (0 . 0.4) (0 . 0)) Slur
    gis''8( a''8)
    r8 cisis''8( dis''8)
    
    | % Up M12

    r8 fisis''8( gis''8)
    r8 bis'8( cis''8)

    | % Up M13 (source P02)
    
    <b' eis' cis'>4 b''8
    <ais'' eis'' b'>4 gis''8
    
    | % Up M14
    
    fis''4( eis''8
    dis''8 cis''8 b'8)
    
    | % Up M15
    
    r4 s8
    s4.
    
    | % Up M16
    
    r4 s8
    s4.
    
    | % Up M17
    
    r4 bis'8(
    cis''8 dis''8 e''8)
    
    | % Up M18
    
    \shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . 0)) Slur
    <dis'' fis''>4.(
    <e'' gis''>4.)
    
    | % Up M19
    
    r4 b'8(
    e''8 fis''8 gis''8)
    
    | % Up M20
    
    \shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . -0.4)) Slur
    <a'' fis''>4.(
    <b'' gis''>4.)
    
    | % Up M21

    
    \choice variants {
      \editorialMarkup lemma \with {
        ann-type = critical-remark
        source = "\\source{E}{P}"
	    
        message = "Dans \\source{E}{B}, il y avait une liaison
        d'expression qui durait jusqu'à la fin de la mesure
        suivante. Elle a été supprimée dans \\source{E}{P}.

	\\centerbigdot

        \\begin{otherlanguage}{english}A slur in \\source{E}{B},
        lasting until the end of the following measure, was removed in
        \\source{E}{P}.\\end{otherlanguage}"

        item = Slur
      }{	
	<
	  \tag #'crit \footnote #'(1 . 1.5)
	  \markup {
	    Voir \italic { Remarques. }
	    \bigdot
	    See \italic { Comments. }
	  } d'''
	  b'' fis'' d''>4.
	<b'' fis'' d''>4.

	| % Up M22
	
	<a'' fis'' a'>4.
	<g'' e'' a'>4.
      }
      \editorialMarkup reading \with {
        source = "\\source{E}{B}"
      }{
	<d''' b'' fis'' d''>4.(
	<b'' fis'' d''>4.

	| % Up M22
	
	<a'' fis'' a'>4.
	<g'' e'' a'>4.)
      }
    }
    
    | % Up M23
    
    <fis'' c'' a'>4.
    <e'' c'' g'>4.
    
    | % Up M24
    
    <c'' g' e'>4.
    <a' e' c'>4.
    
    | % Up M25
    
    <g' f' b>4.
    <d''' a'' f''>4.
    
    | % Up M26
    
    <a'' f'' c''>4.
    <f'' c'' a'>4.

    | % Up M27

    <e'' c'' g'>4.
    <d'' b' f'>4.

    | % Up M28

    <b' f' d'>4.
    <b f' g'>4.

    | % Up M29

    <g' e' c'>4 g'8(
    c''8 e''8 g''8)

    | % Up M30

    <bes'' e'' bes'>4.
    <c''' f'' c''>4.

    | % Up M31 (source P03)

    <g' e' c'>4 g'8(
    c''8 e''8 g''8)

    | % Up M32

    <bes'' e'' bes'>4.
    <c''' f'' c''>4.

    | % Up M33
    
    \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \mark\markup{\musicglyph #"scripts.ufermata"}

    r4 b'8(
    e''8 g''8 ais''8)

    | % Up M34

    \shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . -0.4)) Slur
    <b'' g''>4.(
    <c''' a''>4.)

    | % Up M35

    r4 b'8(
    e''8 g''8 ais''8)

    | % Up M36

    \shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . -0.4)) Slur
    <b'' g''>4.(
    <c''' a''>4.)

    | % Up M37

    \tempo \markup { \concat { 1\super er } tempo }

    r4 b'8(
    e''8 fis''8 gis''8)

    | % Up M38

    \shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . -0.4)) Slur
    <a'' fis''>4.(
    <b'' gis''>4.)

    | % Up M39

    r4 b'8(
    e''8 fis''8 gis''8)

    | % Up M40

    \shape #'((0 . -0.4) (0 . 0) (0 . 0) (0 . -0.4)) Slur
    <a'' fis''>4.(
    <b'' gis''>4.)

    | % Up M41

    \grace { cis'''16 dis'''16 }
    <e''' b''>4( dis'''8)
    <cis''' gis''>4( b''8)

    | % Up M42

    <a'' e''>4( gis''8)
    <fis'' a'>4( e''8)

    | % Up M43

    <e'' gis' e'>2.

    | % Up M44

    R1*6/8

    | % Up M45

    R1*6/8

    | % Up M46

    R1*6/8

    \bar "|."
  }
  
  % Context for dynamic markings centred between the staves
  \new Dynamics {

    % Dynamics M01
    
    s8 s8\mf s4.\< s8\!

    | % Dynamics M02

    s8\> s4
    s4 s8\!

    | % Dynamics M03

    s2.

    | % Dynamics M04

    s2.

    | % Dynamics M05

    s8\> s8 s8\!
    s8\> s8 s8\!
    
    | % Dynamics M06

    s8\> s8 s8\!
    s8\> s8 s8\!
    
    | % Dynamics M07

    s2.

    | % Dynamics M08

    s2.

    | % Dynamics M09

    s8.\< s16\! s8
    s16. s32\> s8 s8\!
    
    | % Dynamics M10

    s8.\< s16\! s8
    s16. s32\> s8 s8\!
    
    | % Dynamics M11

    s2.

    | % Dynamics M12

    s2.

    | % Dynamics M13 (source P02)

    s2.\f

    | % Dynamics M14

    s2.

    | % Dynamics M15

    s4.
    s8 s8\dim s8\!

    | % Dynamics M16

    s2.

    | % Dynamics M17

    s2.

    | % Dynamics M18

    s2.

    | % Dynamics M19

    s8\cresc s8\! s8
    s4.

    | % Dynamics M20

    s2.

    | % Dynamics M21

    s2.\f

    | % Dynamics M22

    s2.

    | % Dynamics M23

    s2.

    | % Dynamics M24

    s2.

    | % Dynamics M25

    s2.

    | % Dynamics M26

    s2.

    | % Dynamics M27

    s2.

    | % Dynamics M28

    s2.

    | % Dynamics M29

    s4 s8\ff
    s4.

    | % Dynamics M30

    s2.

    | % Dynamics M31 (source P03)

    s2.

    | % Dynamics M32

    s2.

    | % Dynamics M33

    s4-\markup { subito \dynamic p }
    s2-\markup { meno mosso }

    | % Dynamics M34

    s2.

    | % Dynamics M35

    s2.

    | % Dynamics M36

    s2 s8
    \once \override TextScript.extra-offset = #'(0 . 1.3)
    s8-\markup { rall. }

    | % Dynamics M37
    
    s2.-\tweak #'X-offset #0 -\tweak #'Y-offset #-0.5 \mf

    | % Dynamics M38

    s2.

    | % Dynamics M39

    s2.

    | % Dynamics M40

    s2.

    | % Dynamics M41

    s2.

    | % Dynamics M42

    s2.

    | % Dynamics M43

    s4.

    \choice variants {
      \editorialMarkup lemma \with {
        ann-type = critical-remark
        source = "\\source{E}{P}"
	    
        message = "Le soufflet est absent dans \\source{E}{B}.

	\\centerbigdot

        \\begin{otherlanguage}{english}The hairpin is absent in
        \\source{E}{B}.\\end{otherlanguage}"

        item = Hairpin
      }{
	s4.\>
	
	| % Dynamics M44
	
	s2 s4\!
      }
      \editorialMarkup reading \with {
        source = "\\source{E}{B}"
      }{
	s4. | s2.
      }
    }
    
    | % Dynamics M45

    s2.

    | % Dymamics M46

    s2.
    
  }
  
  \new Staff = "down" {
    \key e \major
    \time 6/8
    \clef bass
    \override Slur.details.accidental-collision = #15
    
    % Down M01
    
    e,8( b,8 e8
    gis8 b8 e'8)

    \clef treble
    
    | % Down M02

    a'8( fis'8 b8
    gis'8 e'8 b8)

    \clef bass

    | % Down M03
    
    e,8( b,8 e8
    gis8 b8 e'8)

    \clef treble
    
    | % Down M04

    a'8( fis'8 b8
    gis'8 e'8 b8)

    | % Down M05

    r8 fis'8( gis'8)
    r8 e'8( fis'8)

    | % Down M06

    r8 dis'8( e'8)
    r8 cis'8( dis'8)

    \clef bass

    | % Down M07

    r8 b8( dis'8)
    e8( b8 e'8)

    \clef treble
    
    | % Down M08

    a'8( fis'8 b8
    gis'8 e'8 b8)

    | % Down M09

    dis'8( <cis'' fisis'>8) r8
    d'8( <bis' fis'>8) r8
    
    | % Down M10

    cis'8( <b' eis'>8) r8
    c'8( <ais' e'>8) r8

    \clef bass

    | % Down M11

    \shape #'((0 . -2) (0 . 0) (0 . 0.8) (0 . 0)) Slur

    \tag #'crit \footnote #'(1 . -5)
    \markup {
      Voir \italic { Remarques. }
      \bigdot
      See \italic { Comments. }
    }
    NoteHead

    \choice variants {
      \editorialMarkup lemma \with {
        ann-type = critical-remark
        source = "\\source{E}{P}"
	    
        message = "Les liaisons d'expression de la portée inférieure
        de la mesure 11, ainsi que toutes celles de la mesure 12, sont
        absentes dans \\source{E}{B}.

	\\centerbigdot

        \\begin{otherlanguage}{english}The slurs in the lower staff in
        mesure 11, along with all those in mesure 12, are absent in
        \\source{E}{B}.\\end{otherlanguage}"

        item = Slur
      }{	
	b8( <a' dis'>8) r8
	ais8( <fis' dis'>8) r8
      }
      \editorialMarkup reading \with {
        source = "\\source{E}{B}"
      }{
	b8 <a' dis'>8 r8
	ais8 <fis' dis'>8 r8
      }
    }
    
    | % Down M12

    fis8( <e' ais>8) r8
    \shape #'((0 . -2) (0 . 0) (0 . 0.8) (0 . -0.5)) Slur
    f8( <ees' a>8) r8

    | % Down M13 (source P02)

    \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1)) Slur
    gis8( gis,8 cis8
    gis8 b8 eis'8

    \clef treble

    | % Down M14

    gis'8 b'8) r8
    r4 r8

    \clef bass

    | % Down M15

    <<
      {
	\stemDown
	\shape #'((0 . 0.5) (2.5 . 2) (0 . 0) (0 . 0)) Slur
	fis8( e'8
	\stemNeutral
	\change Staff = "up"
	\oneVoice
	ais'8\noBeam
	cis''8 dis''8 e''8)
      }
      \\
      {
	s4
	\oneVoice
	r8 r4 r8
      }
    >>

    | % Down M16

    <<
      {
	\shape #'((0 . 0.5) (2.5 . 2) (0 . 0) (0 . 0)) Slur
	fis,8( e8
	\change Staff = "up"
	\oneVoice
	fis'8\noBeam
	ais'8 b'8 cis''8)
      }
      \\
      {
	s4
	\oneVoice
	r8 r4 r8
      }
    >>

    | % Down M17

    \tag #'crit \footnote #'(1 . -1.5)
    \markup {
      Voir \italic { Remarques. }
      \bigdot
      See \italic { Comments. }
    }
    NoteHead

    \choice variants {
      \editorialMarkup lemma \with {
        ann-type = critical-remark
        source = "\\source{E}{P}"
	    
        message = "Toutes les liaisons d'expression des mesures 17--20
        sont absentes dans \\source{E}{B}.

	\\centerbigdot

        \\begin{otherlanguage}{english}All the slurs in measures 17--20
        are absent in \\source{E}{B}.\\end{otherlanguage}"

        item = Slur
      }{	
	e,8( cis8 e8
	gis8 cis'8 e'8)
      }
      \editorialMarkup reading \with {
        source = "\\source{E}{B}"
      }{
	e,8 cis8 e8
	gis8 cis'8 e'8
      }
    }

    \clef treble

    | % Down M18

    \shape #'((0 . 1.5) (0 . -1.5) (0 . 0) (0 . 0)) Slur
    a'8( fis'8 bis8
    gis'8 e'8 b8)

    \clef bass

    | % Down M19

    e,8( b,8 e8
    gis8 b8 e'8)

    \clef treble
    
    | % Down M20

    a'8( fis'8 b8
    gis'8 e'8 b8)

    \clef bass

    | % Down M21

    <a a,>4.
    r4 r8

    | % Down M22

    r4 a,8(
    a8 b8 cis'8

    | % Down M23

    d'4) r8
    r4 r8

    | % Down M24

    r4 d,8(
    d8 e8 fis8

    | % Down M25

    <g g,>4.)
    r4 r8

    | % Down M26

    r4 g,8(
    d8 e8 f8

    | % Down M27

    g4) r8
    r4 r8

    | % Down M28

    r4 g,,8(
    g,8 a,8 b,8)

    | % Down M29

    \tag #'crit \footnote #'(1 . -1.5)
    \markup {
      Voir \italic { Remarques. }
      \bigdot
      See \italic { Comments. }
    }
    NoteHead

    \choice variants {
      \editorialMarkup lemma \with {
        ann-type = critical-remark
        source = "\\source{E}{P}"
	    
        message = "Toutes les liaisons d'expression des mesures
        29--40, ainsi que celles de la portée inférieure des mesures
        41 et 42, la nuance de la mesure 37 et le soufflet des mesures
        43--44, sont absentes dans \\source{E}{B}.

	\\centerbigdot

        \\begin{otherlanguage}{english}All the slurs in measures
        29--40, along with those in the lower staff in mesures 41 and
        42, the dynamic marking in measure 37, and the hairpin in
        measures 43--44, are absent in
        \\source{E}{B}.\\end{otherlanguage}"

        item = Slur
      }{
	c,8( g,8 e8
	g8 c'8 e'8)
      }
      \editorialMarkup reading \with {
        source = "\\source{E}{B}"
      }{
	c,8 g,8 e8
	g8 c'8 e'8
      }
    }

    \clef treble

    | % Down M30

    g'8( e'8 c'8)
    a'8( f'8 c'8)

    \clef bass

    | % Down M31

    c,8( g,8 e8
    g8 c'8 e'8)

    \clef treble

    | % Down M32

    g'8( e'8 c'8)
    a'8( f'8 c'8)
    
    \clef bass
    
    | % Down M33

    \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \once \override Staff.RehearsalMark #'direction = #DOWN
    \mark \markup { \musicglyph #"scripts.dfermata" }

    e,8( b,8 e8
    g8 b8 e'8)

    \clef treble

    | % Down M34

    g'8( e'8 b8
    a'8 fis'8 b8)

    \clef bass

    | % Down M35

    e,8( b,8 e8
    g8 b8 e'8)

    \clef treble

    | % Down M36

    g'8( e'8 b8
    a'8 fis'8 b8)

    \clef bass

    | % Down M37

    e,8( b,8 e8
    gis8 b8 e'8)

    \clef treble
    
    | % Down M38

    a'8( fis'8 b8
    gis'8 e'8 b8)

    \clef bass

    | % Down M39
    
    e,8( b,8 e8
    gis8 b8 e'8)

    \clef treble
    
    | % Down M40

    a'8( fis'8 b8
    gis'8 e'8 b8)

    \clef bass

    | % Down M41

    \grace { s16 s16 }

    e,8( b,8 e8
    gis8 b8 e'8
    
    \clef treble
    
    | % Down M42
    
    b'4) r8
    b'8( dis'8 b8)
    
    \clef bass

    | % Down M43

    e,8( b,8 e8
    gis8 b8 e'8
    
    \clef treble

    | % Down M44

    gis'8 e'8 gis'8
    b'8 gis'8 b'8

    | % Down M45

    e''2.)

    \clef bass

    | % Down M46

    \ottava #-1
    <e, e,,>2.
    \ottava #0
    
    \bar "|."

  }
>>

\layout {
  \context{
    \Staff
    \consists Mark_engraver
  }
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
    \remove Mark_engraver
  }
}

\header {
  title = \markup { \vspace #2 "Prélude I" }
  subtitle = \markup { en mi majeur \bigdot in E major }
  dedication = \markup { à \concat { M\super r } Henry Gauthier-Villars }
  composer = \composer
}
