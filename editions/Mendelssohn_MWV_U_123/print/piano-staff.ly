% Tags
%
% #'crit: only in critical edition
% #'perf: only in performance edition
% #'finger: fingerings

\new PianoStaff <<
  \accidentalStyle piano

  \new Staff = "up" {
    \global
    \clef treble
    \tempo "Allegro agitato"
    
    \partial 16.
    
    r16.
    
    | % Up M01
    
    r1
    
    | % Up M02
    
    r2
    
    <fis' fis>4

    <fis' \tag #'finger \finger \markup \tied-lyric #"5~3" fis>8[
    <b'-\tag #'finger -5 b>8]
    
    | % Up M03

    <b' b>4(
    
    <ais'-\tag #'finger -4 ais>8[)
    <ais' ais>8]
    
    <b'-\tag #'finger -5 b>8[
    <cis''-\tag #'finger -4 cis'>8
    
    <d''-\tag #'finger -5 d'>8
    <d'' d'>8]
    
    | % Up M04
 
    <d'' d'>4(

    <cis''-\tag #'finger -4 cis'>8[)
    <cis'' cis'>8]
    
    <d'' \tag #'finger \finger \markup \tied-lyric #"5~4" d'>8[
    <e''-\tag #'finger -5 e'>8
    
    <fis''-\tag #'finger -4 fis'>8
    <fis''-\tag #'finger -5 fis'>8]

    | % Up M05
    
    <fis'' fis'>8

    <e''-\tag #'finger -5 e'>4
    
    <d''-\tag #'finger -5 d'>4
    
    <cis''-\tag #'finger -4 cis'>8[
    <ais'-\tag #'finger -3 ais>8

    <b'-\tag #'finger -5 b>8]

    | % Up M06

    <b' b>4(
      
    <ais'-\tag #'finger -4 ais>8)
    
    r8

    s2

    | % Up M07

    \change Staff = "down"
    \voiceOne
    e32-\tag #'finger -1 g-\tag #'finger -2 cis'-\tag #'finger -4
    \change Staff = "up"
    e'-\tag #'finger -5
    d'-\tag #'finger -4 e' d' cis'

    \change Staff = "down"
    \voiceOne
    e-\tag #'finger -1 g-\tag #'finger -2 cis'-\tag #'finger -4
    \change Staff = "up"
    e'-\tag #'finger -1
    \oneVoice
    g'-\tag #'finger -2 cis''-\tag #'finger -4 e''-\tag #'finger -5 cis''-\tag #'finger -4

    d'-\tag #'finger -1 fis'-\tag #'finger -2 b'-\tag #'finger -4 d''-\tag #'finger -5
    e'-\tag #'finger -1 g'-\tag #'finger -2 ais'-\tag #'finger -3 cis''-\tag #'finger -4

    d'-\tag #'finger -1 fis'-\tag #'finger -2 ais'-\tag #'finger -4 b'-\tag #'finger -5
    d' fis' ais' b'

    | % Up M08

    e'32-\tag #'finger -1 fis'-\tag #'finger -2 g'-\tag #'finger -3 ais'-\tag #'finger -4
    g'-\tag #'finger -2 ais'-\tag #'finger -4 g' ais'
 
    e'-\tag #'finger -1 g'-\tag #'finger -2 ais'-\tag #'finger -3 cis''-\tag #'finger -4
    e''-\tag #'finger -1 g''-\tag #'finger -2 ais''-\tag #'finger -3 cis'''-\tag #'finger -4

    fis'''-\tag #'finger -5 d'''-\tag #'finger -3 b''-\tag #'finger -2 fis''-\tag #'finger -1
    e'''-\tag #'finger -5 cis'''-\tag #'finger -4 g''-\tag #'finger -2 e''-\tag #'finger -1

    dis'''-\tag #'finger -5 b''-\tag #'finger -4 fis''-\tag #'finger -2 dis''-\tag #'finger -1
    d'''-\tag #'finger -5 b''-\tag #'finger -4 fis''-\tag #'finger -2 d''-\tag #'finger -1

    | % Up M09

    cis'''32-\tag #'finger -5 ais''-\tag #'finger -4 fis''-\tag #'finger -2 cis''-\tag #'finger -1
    bis''-\tag #'finger -5 a''-\tag #'finger -4 fis''-\tag #'finger -3 dis''-\tag #'finger -2

    b''-\tag #'finger -5 gis''-\tag #'finger -3 eis''-\tag #'finger -2 d''-\tag #'finger -1
    ais''-\tag #'finger -4 g''-\tag #'finger -3 e''-\tag #'finger -1 cis''-\tag #'finger -2

    a''-\tag #'finger -5 fis''-\tag #'finger -3 dis''-\tag #'finger -2 bis'-\tag #'finger -1
    gis''-\tag #'finger -4 eis''-\tag #'finger -3 d''-\tag #'finger -2 b'-\tag #'finger -1

    g''-\tag #'finger -5 e''-\tag #'finger -4 cis''-\tag #'finger -3 ais'-\tag #'finger -2
    e''-\tag #'finger -5 cis''-\tag #'finger -3 ais'-\tag #'finger -2 g'-\tag #'finger -1

    | % Up M10

    dis''32-\tag #'finger -4 bis'-\tag #'finger -3 a'-\tag #'finger -1 fis'-\tag #'finger -2
    bis'-\tag #'finger -5 a'-\tag #'finger -4 fis'-\tag #'finger -3


    \tag #'crit \footnote #'(1 . -2.5)
      \markup { D\sharp or D\natural? }
      NoteHead

    \choice variants {
      \editorialMarkup lemma \with {
        ann-type = critical-remark
        source = "\\source{E}{N}, \\source{E}{B}"
	    
        message = "\\source{E}{N} and \\source{E}{B}
        have D\\sh, while \\source{E}{S1} has D\\na\\ (with no
        accidental), which is surely an error. \\source{A}{1}
        (measure 19) has a different structure here."
	    
        item = Accidental
      }{ dis'-\tag #'finger -2 }
      \editorialMarkup reading \with {
        source = "\\source{E}{S1}"
      }{ d' }
    }

    a'-\tag #'finger -5 fis'-\tag #'finger -3 dis'-\tag #'finger -2 bis-\tag #'finger -1
    fis'32-\tag #'finger ^4 dis'-\tag #'finger ^3 bis-\tag #'finger ^2 a-\tag #'finger ^1

    <<
      {
	cis'4 cis'8[ fis'8]
      }
      \\
      {
	cis'32-\tag #'finger ^4 a-\tag #'finger ^1 gis-\tag #'finger ^3 fis-\tag #'finger ^2
        gis fis gis fis
	
        cis'-\tag #'finger ^4 a-\tag #'finger ^1 gis-\tag #'finger ^3 fis-\tag #'finger ^2
        fis'-\tag #'finger ^5 cis'-\tag #'finger ^3 b-\tag #'finger ^2 a-\tag #'finger ^1
      }
    >>
    
    | % Up M11
    
    <<
      {
	fis'4
	
	eis'8[ eis'8]
	
	fis'8[ gis'8
	       a'8 a'8]
      }
      \\
      {
	fis'32-\tag #'finger -5 d'-\tag #'finger -3 b-\tag #'finger -2 gis-\tag #'finger -1
	b gis b d'
	
	eis'-\tag #'finger -5 d'-\tag #'finger -3 b-\tag #'finger -2 gis-\tag #'finger -1
	eis'-\tag #'finger -5 cis'-\tag #'finger -3 b-\tag #'finger -2 gis-\tag #'finger -1
	
	fis'32-\tag #'finger -5 cis'-\tag #'finger -3 b-\tag #'finger -2 a-\tag #'finger -1
	gis' cis' b a
	
	a'-\tag #'finger -5 fis'-\tag #'finger -3 dis'-\tag #'finger -2 bis-\tag #'finger -1
	a' fis' dis' bis
      }
    >>
    
    | % Up M12

    <<
      {
	a'4
        
	gis'8[ gis'8]
	
	a'8[ b'8
	     cis''8 cis''8]
      }
      \\
      {
        a'32 fis' dis' bis
        dis' bis dis' fis'
	
        gis'-\tag #'finger -4 eis'-\tag #'finger -3 d'-\tag #'finger -2

	\tag #'crit \footnote #'(0.5 . -2.5)
	\markup { B\natural or B\sharp? }
	NoteHead

	\choice variants {
	  \editorialMarkup lemma \with {
	    ann-type = critical-remark
	    source = "\\source{A}{1}, \\source{E}{B}"
	    
	    message = "\\source{A}{1} (measure 23) and \\source{E}{B}
            have B\\na, while \\source{E}{S1} and \\source{E}{N} have
            B\\sh\\ (with no accidental)."
	    
	    item = Accidental
	  }{ b-\tag #'finger -1 }
	  \editorialMarkup reading \with {
	    source = "\\source{E}{S1}, \\source{E}{N}"
	  }{ bis }
	}

	gis' eis' d' b	

        a'-\tag #'finger -5 fis'-\tag #'finger -4 cis'-\tag #'finger -2 a-\tag #'finger -1
        b'-\tag #'finger -5

        \tag #'crit \footnote #'(-2 . -0.5)
          \markup { Redundant accidental. }
          Stem

        \criticalRemark \with {
          source = ""
          message = "Redundant sharp in \\source{E}{S1} and \\source{E}{N}."
        } eis'-\tag #'finger -3

        d'-\tag #'finger -2 b-\tag #'finger -1

        cis''-\tag #'finger -4 a'-\tag #'finger -1 gis'-\tag #'finger -3 fis'-\tag #'finger -2
        cis'' a' gis' fis'
      }
    >>

    | % Up M13

    <<
      {
        bis'8[ fis''

        eis'' b']

        ais'[ e''

        dis'' a']
      }
      \\
      {
        bis'32-\tag #'finger -5( fis'-\tag #'finger -2 e'-\tag #'finger -1 dis'-\tag #'finger -2
        fis''-\tag #'finger -4

	\tag #'crit \footnote #'(-1.5 . -1.5)
	\markup { D\sharp or D\natural? }
	Stem

	\choice variants {
	  \editorialMarkup lemma \with {
	    ann-type = critical-remark
	    source = "\\source{A}{1}, \\source{E}{N}, \\source{E}{B}"
	    
	    message = "\\source{A}{1} (measure 25), \\source{E}{N},
            and \\source{E}{B} have D\\sh, while \\source{E}{S1}
            has D\\na\\ (with no accidental)."
	    
	    item = Accidental
	  } { dis''-\tag #'finger -3 }
	  \editorialMarkup reading \with {
	    source = "\\source{E}{S1}"
	  } { d'' }
	}

	cis''-\tag #'finger -2 bis'-\tag #'finger -1

        eis''-\tag #'finger -5 d''-\tag #'finger -4 b'-\tag #'finger -2 eis'-\tag #'finger -1
        b'-\tag #'finger -5

	\choice emendation {
	  \editorialMarkup correction \with {
	    type = addition
	    ann-type = critical-remark
	    source = ""

	    message = "In \\source{E}{S1}, \\source{E}{N}, and
            \\source{E}{B}, the accidental is missing on the G\\sh\\
            in the upper staff. \\source{A}{1} (measure 25) is
            unclear."
	    
	    item = Accidental
	  } {
	    \tag #'crit \single \footnote #'(-2 . -3.5)
	    \markup { Missing accidental. }
	    Stem
	    gis'
	    
	    \tag #'perf gis'-\tag #'finger -3
	  }
	  \editorialMarkup sic \with {
	    source = "\\source{E}{S1}, \\source{E}{N}, \\source{E}{B}"
	  } { g' }
	}

	eis'-\tag #'finger -2

	\tag #'crit \footnote #'(0.5 . -3)
	  \markup { D\natural or D\sharp? }
	  NoteHead

	\choice variants {
	  \editorialMarkup lemma \with {
	    ann-type = critical-remark
	    source = "\\source{E}{B}"
	    
	    message = "\\source{E}{B} has D\\na, while \\source{E}{S1}
            and \\source{E}{N} have D\\sh\\ (with no accidental),
            which is surely an error. \\source{A}{1} (measure 25) is
            unclear."
	    
	    item = Accidental
	  } { d')-\tag #'finger -1 }
	  \editorialMarkup reading \with {
	    source = "\\source{E}{S1}, \\source{E}{N}"
	  } { dis') }
	}

        ais'-\tag #'finger -4( g'-\tag #'finger -3

	\tag #'crit \footnote #'(-1.5 . -3)
	\markup { E\natural or E\sharp? }
	Stem

	\choice variants {
	  \editorialMarkup lemma \with {
	    ann-type = critical-remark
	    source = "\\source{A}{1}, \\source{E}{B}"
	    
	    message = "Twice in this beat, \\source{A}{1} (measure 26,
            though slightly different) and \\source{E}{B} have E\\na,
            while \\source{E}{S1} and \\source{E}{N} have E\\sh\\
            (with no accidental)."
	    
	    item = Accidental
	  }{
	    e'-\tag #'finger -2
	    cis'-\tag #'finger -1
	    e''-\tag #'finger -5
	  }
	  \editorialMarkup reading \with {
	    source = "\\source{E}{S1}, \\source{E}{N}"
	  }{ eis' cis' eis''}
	}

	cis''-\tag #'finger -3 b'-\tag #'finger -2 ais'-\tag #'finger -1

        dis''-\tag #'finger -5 bis'-\tag #'finger -3 a'-\tag #'finger -2 dis'-\tag #'finger -1
        a'-\tag #'finger -5 fis'-\tag #'finger -3 dis'-\tag #'finger -2 bis-\tag #'finger -1)
      }
    >>

    | % Up M14

    <<
      {
        gis'8[ d''

        cis'' bis']

        cis''4

        cis''8[ cis''8]-\tag #'finger -2
      }
      \\
      {
        gis'32-\tag #'finger -4( d'-\tag #'finger -1 cis'-\tag #'finger -2 b-\tag #'finger -1
        d''-\tag #'finger -5 b'-\tag #'finger -4 a'-\tag #'finger -3 gis'-\tag #'finger -2

        cis''-\tag #'finger -4 a'-\tag #'finger -1 gis'-\tag #'finger -3 fis'-\tag #'finger -2
        bis'-\tag #'finger -5 a'-\tag #'finger -1 gis'-\tag #'finger -3 fis'-\tag #'finger -2)

        cis''-\tag #'finger -4 a'-\tag #'finger -1 gis'-\tag #'finger -3 fis'-\tag #'finger -2
        gis'-\tag #'finger -3 fis'-\tag #'finger -2 gis'-\tag #'finger -3 a'-\tag #'finger -1

        cis''-\tag #'finger -5 gis'-\tag #'finger -3 fis'-\tag #'finger -2 eis'-\tag #'finger -1
      }
    >>

    | % Up M15

    <a'' fis'' dis'' a'>4

    <gis'' d'' b' gis'>4

    <g'' e'' cis'' g'>4

    <fis'' c'' a' fis'>4

    | % Up M16

    \choice variants {
      \editorialMarkup lemma \with {
	ann-type = critical-remark
	source = "\\source{E}{N}"

	message = "\\source{E}{N} has G\\sh, while \\source{E}{S1} and
        \\source{E}{B} have G\\na, which is surely an
        error. \\source{A}{1} (measure 31) has a different structure
        here."

	item = Accidental
      } { <eis'' b'
	   \tag #'crit \single \footnote #'(-1 . -1)
	   \markup {  G\sharp or G\natural? }
	   Accidental
	   gis'
	   
	   \tag #'perf gis'
	   
	   eis'>4
	}
      \editorialMarkup reading \with {
	source = "\\source{E}{S1}, \\source{E}{B}"
      } { <eis'' b' g' eis'>4 }
    }

    <fis'' cis'' a' fis'>8[
    <d'' d'>8]

    <cis'' a' fis' cis'>4

    <cis'' cis'>8[
    <fis'' fis'>8]

    | % Up M17

    <fis'' d'' b' fis'>4(

    <eis'' eis'>8)

    \clef bass

    cis,8-\tag #'finger -2\staccato
    fis,8-\tag #'finger -4\staccato

    \clef treble

    <cis'' cis'>8

    <a'' a'>8[(
    <gis'' gis'>16)
    <fis'' fis'>16\staccato]

    | % Up M18

    <fis'' fis'>4(

    <eis'' eis'>8)

    \clef bass

    cis,8\staccato
    fis,8\staccato

    \clef treble

    <cis'' cis'>8[
    <cis'' cis'>8
    <e'' e'>8]

    | % Up M19

    <e'' e'>4(

    <dis'' dis'>8)

    \clef bass

    b,,8\staccato
    e,8\staccato

    \clef treble

    b'8-\tag #'finger -1

    <b'' b'>16[(
    <g'' g'>16)
    <fis'' fis'>16\staccato
    <e'' e'>16\staccato]

    | % Up M20

    <e'' e'>4(

    <dis'' dis'>8)
    \clef bass
    b,,8\staccato

    e,8\staccato
    r8

    \clef treble

    \tag #'crit \footnote #'(-2.5 . -0.75)
      \markup { Staccato? }
      Script
    \tag #'perf \footnote #'(-2.5 . -0.75)
      \markup { Staccato? See the critical edition. }
      Script

    \choice variants {
      \editorialMarkup lemma \with {
    	ann-type = critical-remark
    	source = "\\source{E}{S1}, \\source{E}{N}"

        message = "The chord is staccato in \\source{E}{S1} and
        \\source{E}{N}, but not in \\source{E}{B}. \\source{A}{1}
        (measure 40) has a different structure here."

    	item = Script
      }{
	<e'' b' g' e'>8\arpeggio\staccato\sf
      }
      \editorialMarkup reading \with {
    	source = "\\source{E}{B}"
      }{
	<e'' b' g' e'>8\arpeggio\sf
      }
    }
    
    \clef bass
    b,,8\staccato

    | % Up M21

    e,8\staccato
    r8

    \clef treble
    <g'' e'' b' g'>8\arpeggio\sf
    \clef bass
    b,,8\staccato

    e,8\staccato
    r8

    \clef treble
    <b'' g'' e'' b'>8\arpeggio\sf
    \clef bass
    b,,8\staccato

    | % Up M22

    e,8\staccato
    r8

    \clef treble
    <e''' b'' g'' e''>8\arpeggio\sf
    \clef bass
    e,8-\tag #'finger -2\staccato

    eis,8-\tag #'finger -3\staccato
    \clef treble
    eis'32-\tag #'finger -2 gis'-\tag #'finger -3 b'-\tag #'finger -1 d''-\tag #'finger -2

    b''-\tag #'finger -5 d''-\tag #'finger -2 b'-\tag #'finger -1 gis'-\tag #'finger -3
    eis'8-\tag #'finger -2
    \clef bass

    | % Up M23

    eis,8-\tag #'finger -2
    \clef treble
    eis'32 gis' b' d''

    b'' d'' b' gis'
    eis'8

    \clef bass
    eis,8
    \clef treble
    eis'32-\tag #'finger -2 gis'-\tag #'finger -3 b'-\tag #'finger -1 d''-\tag #'finger -2

    eis''-\tag #'finger -3

    \tag #'crit \footnote #'(1 . 2)
      \markup { G\sharp or G\natural? }
      NoteHead

    \choice variants {
      \editorialMarkup lemma \with {
        ann-type = critical-remark
        source = "\\source{E}{N}, \\source{E}{B}"
	    
        message = "\\source{E}{N} and \\source{E}{B} have G\\sh, while
        \\source{E}{S1} has G\\na\\ (with no accidental), which is
        surely an error. The second half of measure 23 and the first
        half of measure 24 do not occur in \\source{A}{1}."
	    
        item = Accidental
      }{ gis''-\tag #'finger -4 }
      \editorialMarkup reading \with {
        source = "\\source{E}{S1}"
      }{ g'' }
    }
   
    b''-\tag #'finger -1 d'''-\tag #'finger -2
    eis'''-\tag #'finger -4 d'''-\tag #'finger -2 b''-\tag #'finger -1 gis''-\tag #'finger -4

    | % Up M24

    eis''32-\tag #'finger -3 d''-\tag #'finger -2 b'-\tag #'finger -1 gis'-\tag #'finger -3
    eis'-\tag #'finger -2 gis'-\tag #'finger -3 b'-\tag #'finger -1 d''-\tag #'finger -2

    b''-\tag #'finger -5 d''-\tag #'finger -2 b'-\tag #'finger -1 gis'-\tag #'finger -4
    \stemUp
    eis'-\tag #'finger -3 d'-\tag #'finger -2
    \change Staff = "down"
    b-\tag #'finger -1 gis-\tag #'finger -2
    \stemNeutral
    \change Staff = "up"

    r32
    \change Staff = "down"
    \stemDown
    b-\tag #'finger -1
    \change Staff = "up"
    d'-\tag #'finger -2 fis'-\tag #'finger -3
    \stemNeutral
    b'-\tag #'finger -1 d''-\tag #'finger -2 fis''-\tag #'finger -3 b''-\tag #'finger -5

    fis''-\tag #'finger -3 d''-\tag #'finger -2 b'-\tag #'finger -1 fis'-\tag #'finger -3
    \stemUp
    d'-\tag #'finger -2
    \change Staff = "down"
    b-\tag #'finger -1 fis-\tag #'finger -3 d-\tag #'finger -2
    \change Staff = "up"
    \stemNeutral

    | % Up M25

    \voiceOne
    \change Staff = "down"
    e32-\tag #'finger -1 g-\tag #'finger -2
    \change Staff = "up"
    cis'-\tag #'finger -4 e'-\tag #'finger -1
    \oneVoice
    
    g'-\tag #'finger -2 cis''-\tag #'finger -4 e''-\tag #'finger -1 g''-\tag #'finger -2

    cis'''-\tag #'finger -4 g''-\tag #'finger -2 e''-\tag #'finger -1 cis''-\tag #'finger -4
    \stemUp
    g'-\tag #'finger -2 e'-\tag #'finger -1
    \change Staff = "down"
    cis'-\tag #'finger -4 e-\tag #'finger -1

    r32 d-\tag #'finger -2 fis-\tag #'finger -3 b-\tag #'finger -1
    \change Staff = "up"
    \stemNeutral
    d'-\tag #'finger -2 fis'-\tag #'finger -3 b'-\tag #'finger -1 d''-\tag #'finger -2

    fis''-\tag #'finger -3 b''-\tag #'finger -5 fis''-\tag #'finger -3 d''-\tag #'finger -2
    b'-\tag #'finger -1 fis'-\tag #'finger -3 d'-\tag #'finger -2 b-\tag #'finger -1

    | % Up M26

    \stemUp
    \change Staff = "down"
    \voiceOne
    r32 e-\tag #'finger -1 g-\tag #'finger -2 ais-\tag #'finger -3
    \change Staff = "up"
    cis'-\tag #'finger -4 e'-\tag #'finger -1 g'-\tag #'finger -2 ais'-\tag #'finger -3
    \stemNeutral
    \oneVoice

    cis''-\tag #'finger -4 e'' g'' ais''
    cis''' ais'' g'' e''

    r32 b-\tag #'finger -1 d'-\tag #'finger -2 fis'-\tag #'finger -3
    a'-\tag #'finger -1 c'' dis'' a''

    r32 b-\tag #'finger -1 e'-\tag #'finger -2 g'-\tag #'finger -3
    b'-\tag #'finger -1 d'' eis'' b''

    | % Up M27

    r32 ais-\tag #'finger -2 cis'-\tag #'finger -3 e'-\tag #'finger -1
    g'-\tag #'finger -2 ais'-\tag #'finger -3 cis''-\tag #'finger -4 e''-\tag #'finger -5

    r32 fis'-\tag #'finger -1 b'-\tag #'finger -2 d''-\tag #'finger -4
    r32 e'-\tag #'finger -1 ais'-\tag #'finger -2 g''-\tag #'finger -5

    r32 fis' b' fis''
    r32 fis' c'' a''

    r32 g' b' g''
    r32 fis' gis' ais'
    
    | % Up M28

    b'32-\tag #'finger -1 cis''-\tag #'finger -3 d''-\tag #'finger -1 e''-\tag #'finger -2
    fis''-\tag #'finger -3 g'' fis'' e''-\tag #'finger -2

    d''-\tag #'finger -1 e''-\tag #'finger -4 d'' cis''
    b'-\tag #'finger -1 cis''-\tag #'finger -4 b' a'

    g' a' b' cis''
    d'' cis'' b' a'

    g' a' b' a'
    g'-\tag #'finger -1 a'-\tag #'finger -4 g' fis'

    | % Up M29

    e'32 b'-\tag #'finger -5 g' fis'
    e' g'-\tag #'finger -4 e'-\tag #'finger -2 d'-\tag #'finger -1

    cis'-\tag #'finger -2 e'-\tag #'finger -4 cis'-\tag #'finger -2 b-\tag #'finger -1
    \voiceOne
    \change Staff = "down"
    ais-\tag #'finger -2 cis'-\tag #'finger -4 ais-\tag #'finger -3 g-\tag #'finger -1

    fis8-\tag #'finger -2
    \oneVoice
    \change Staff = "up"
    r8

    <ais'' fis'' e'' cis'' ais'>8
    r8

    | % Up M30

    <b'' fis'' d'' b'>8
    r8

    r4

    r2\fermata

    \bar "|."
  }

  % Context for dynamic markings centred between the staves
  \new Dynamics {
    \partial 16.
    s16.\f

    | % Dynamics M01

    s1

    | % Dynamics M02

    s1

    | % Dynamics M03

    s1

    | % Dynamics M04

    s2

    \once \override DynamicTextSpanner.style = #'none
    \crescTextCresc
    s8\<
    s4.\!

    | % Dynamics M05

    s1

    | % Dynamics M06

    s2
    s2\p

    | % Dynamics M07

    s2.
    s4\cresc

    | % Dynamics M08

    s4
    s4\!
    s2

    | % Dynamics M09

    s4\f
    s2.

    | % Dynamics M10

    \once \override DynamicTextSpanner.style = #'none
    \dimTextDim
    s8\>
    s2..\!
    
    | % Dynamics M11
    
    s1

    | % Dynamics M12

    s1

    | % Dynamics M13

    s1

    | % Dynamics M14

    s1

    | % Dynamics M15

    s1

    | % Dynamics M16

    s1

    | % Dynamics M17

    s1

    | % Dynamics M18

    s1

    | % Dynamics M19

    s1

    | % Dynamics M20

    s1

    | % Dynamics M21

    s1

    | % Dynamics M22

    s2
    s16\f

    \once \override DynamicTextSpanner.style = #'none
    \crescTextCresc
    s16\<
    s4.\!

    | % Dynamics M23

    s1

    | % Dynamics M24

    r2
    r2\ff

    | % Dynamics M25

    s1

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
  }

  \new Staff = "down" {
    \global
    \clef bass

    \partial 16.
    
    fis,32-\tag #'finger _4( gis, ais,
    
    | % Down M01
    
    b,32 cis\<-\tag #'finger _3 d e
    fis-\tag #'finger _3\! g-\tag #'finger _2\> fis e\!
    
    d-\tag #'finger _5 e-\tag #'finger _1 d cis
    b,-\tag #'finger _4 cis-\tag #'finger _3 b,-\tag #'finger _1 a,

    g,-\tag #'finger _3 a,\< b, cis-\tag #'finger _3\!
    d-\tag #'finger _2\> cis-\tag #'finger _3 b,-\tag #'finger _1\! a,

    g,-\tag #'finger _3 a, b, a,
    g, a,-\tag #'finger _2 g, fis,)
    
    | % Down M02
    
    e,32-\tag #'finger _5 g,-\tag #'finger _3 ais, b,
    ais, b, ais, b,
    
    eis,-\tag #'finger _5

    \tag #'crit \footnote #'(1 . -2)
      \markup { G\sharp or G\natural? }
      NoteHead
    \tag #'perf \footnote #'(-1 . -3)
      \markup { G\sharp or G\natural? See the critical edition. }
      NoteHead

    \choice variants {
      \editorialMarkup lemma \with {
    	ann-type = critical-remark
    	source = "\\source{A}{1}, \\source{E}{N}"

        message = "\\source{A}{1} (measure 3) and \\source{E}{N} have
        G\\sh, while \\source{E}{S1} and \\source{E}{B} have
        G\\na\\ (with no accidental)."

    	item = Accidental
      }{
	gis,-\tag #'finger _3
      }
      \editorialMarkup reading \with {
    	source = "\\source{E}{S1}, \\source{E}{B}"
      }{ g, }
    }
    
    ais, b,
    ais, b, ais, b,
    
    fis,-\tag #'finger _5 b,-\tag #'finger _3 cis d
    cis d cis d
    
    fis, b, cis d
    cis d cis d
    
    | % Down M03

    fis,-\tag #'finger _5 cis-\tag #'finger _3 d e
    d e d cis
    
    fis,-\tag #'finger _5 cis-\tag #'finger _3 d-\tag #'finger _2 e-\tag #'finger _1
    fis-\tag #'finger _3 g-\tag #'finger _2 fis e
    
    d-\tag #'finger _5 e fis g-\tag #'finger _2
    fis-\tag #'finger _3 e-\tag #'finger _1 d cis

    b,-\tag #'finger _4 cis d e-\tag #'finger _1
    d-\tag #'finger _2 cis-\tag #'finger _3 b,-\tag #'finger _1 a,-\tag #'finger _3
    
    | % Down M04
    
    gis,32-\tag #'finger _4 b,-\tag #'finger _3 d-\tag #'finger _2 eis-\tag #'finger _1
    d eis d eis
    
    ais,-\tag #'finger _4 cis-\tag #'finger _3 e-\tag #'finger _2 g-\tag #'finger _1
    fis-\tag #'finger _2 g-\tag #'finger _1 fis-\tag #'finger _3 e-\tag #'finger _4
    
    d-\tag #'finger _5 b-\tag #'finger _1 a g
    fis-\tag #'finger _4 g-\tag #'finger _1 fis e

    d-\tag #'finger _4 e-\tag #'finger _1 d cis
    b,-\tag #'finger _4 cis-\tag #'finger _2 b,-\tag #'finger _3

    \tag #'crit \footnote #'(0.5 . -2)
      \markup { A\natural or A\sharp? }
    NoteHead

    \choice variants {
      \editorialMarkup lemma \with {
    	ann-type = critical-remark
    	source = "\\source{A}{1}, \\source{E}{B}"
	
        message = "\\source{A}{1} (measure 8) and \\source{E}{B} have
        A\\na\ (with no accidental in \\source{A}{1}), while
        \\source{E}{S1} and \\source{E}{N} have A\\sh\
        (with no accidental)."
	
    	item = NoteHead
      }{ a, }
      \editorialMarkup reading \with {
	source = "\\source{E}{S1}, \\source{E}{N}"
      }{
	ais,
      }
    }    
    
    | % Down M05
    
    g,32-\tag #'finger _5 b,-\tag #'finger _4 dis e
    dis e dis e
    
    fis,-\tag #'finger _5 b,-\tag #'finger _3 cis d
    cis d cis d
    
    e,-\tag #'finger _5 g,-\tag #'finger _3 b,-\tag #'finger _1 cis-\tag #'finger _2
    b,-\tag #'finger _3 cis-\tag #'finger _2 b, cis
    
    eis,-\tag #'finger _5 gis,-\tag #'finger _4 cis d
    cis d cis d

    | % Down M06

    fis,32 b, cis d
    cis d cis b,

    fis,-\tag #'finger _5 cis-\tag #'finger _3 d e
    fis-\tag #'finger -3 g fis e

    <<
      {
	d e fis g
	fis e d-\tag #'finger -1 cis-\tag #'finger -2
	
	d-\tag #'finger -1 fis-\tag #'finger -2 ais-\tag #'finger -4 b-\tag #'finger -5
	d fis ais b
      }
      \\
      {
	<fis, fis,,>4

	\once \set fingeringOrientations = #'(right)
	<fis, \tag #'finger \finger \markup \tied-lyric #"1~2" fis,,>8[
	  <b, b,,>8]
      }
    >>

    | % Down M07

    \voiceTwo
    <b, b,,>4(

    <ais, ais,,>8[)
    <ais, ais,,>8]

    \choice variants {
      \editorialMarkup lemma \with {
    	ann-type = critical-remark
    	source = "\\source{E}{N}, \\source{E}{B}"
	
        message = "\\source{E}{N} and \\source{E}{B} have B, while
        \\source{E}{S1} has G, which is surely an error. The passage
        is different in \\source{A}{1}, but the theme occurs
        with B in measure 16."
	
    	item = NoteHead
      }{
	<b,
	 \tag #'crit \footnote #'(-1 . -2)
	 \markup { B or G? }
	 b,,

	 \tag #'perf b,,
       >8[
	}
      \editorialMarkup reading \with {
	source = "\\source{E}{S1}"
      }{
	<g, g,,>8[
      }
    }
      
      <cis cis,>8
      
      <d d,>8
      <d d,>8]
    
    | % Down M08
    
    <d d,>4(

    <cis cis,>8[)
    <cis cis,>8]

    \oneVoice
    <d d,>8[
    <e e,>8

    <fis fis,>8
    <fis fis,>8]

    | % Down M09

    <fis fis,>4
    <cis cis,>2.~

    | % Down M10

    \choice variants {
      \editorialMarkup lemma \with {
    	ann-type = critical-remark
    	source = "\\source{A}{1}, \\source{E}{B}"

        message = "In \\source{A}{1} (measures 19-21) and
        \\source{E}{B}, both the ties in measure 9 continue to the
        first beat of measure 11, while in \\source{E}{S1} and
        \\source{E}{N}, only the lower C\\sh\\ is tied between
        measures 10 and 11."

    	item = Tie
      }{
	<
	  \tag #'crit \footnote #'(2 . 3)
	  \markup { Does the upper tie continue to measure 11? }
	  cis

	  \tag #'perf \footnote #'(2 . 3)
	  \markup { Does the upper tie continue to measure 11? See the critical edition. }
	  cis

	  cis,
	>1~
      }
      \editorialMarkup reading \with {
    	source = "\\source{E}{S1}, \\source{E}{N}"
      }{
	<cis cis,~>1
      }
    }

    | % Down M11

    <cis cis,>4
    
    r4
    
    <cis cis,>4
    
    <cis cis,>8[
    <fis fis,>8]

    | % Down M12

    <fis fis,>4

    <eis eis,>8[
    <eis eis,>8]

    <fis fis,>8[
    <gis gis,>8

    <a a,>8
    <a a,>8]

    | % Down M13

    <a a,>4

    <gis gis,>4

    <g g,>4

    <fis fis,>4

    | % Down M14

    <eis eis,>4

    <fis fis,>8[
    <d d,>8]

    <cis cis,>4.

    \stemDown
    cis'32-\tag #'finger _4
    \change Staff = "up"
    eis'-\tag #'finger _1 fis'-\tag #'finger _3 gis'-\tag #'finger _2
    \stemNeutral
    \change Staff = "down"
    
    | % Down M15

    bis32-\tag #'finger _5 dis'-\tag #'finger _3

    \tag #'crit \footnote #'(2 . -2)
      \markup { E\natural or E\sharp? }
      Stem
    \tag #'perf \footnote #'(3 . -4)
      \markup { E\natural or E\sharp? See the critical edition. }
      Stem

    \choice variants {
      \editorialMarkup lemma \with {
	ann-type = critical-remark
        source = "\\source{E}{S1}, \\source{E}{N}"

        message = "\\source{E}{S1} and \\source{E}{N} have E\\na\\
        (with no accidental), while \\source{E}{B} has E\\sh. The
        corresponding passage in \\source{A}{1} (starting in measure
        29) has neither, and has a somewhat different harmonic
        structure.

        Five diminished seventh chords descend chromatically in
        measures 13-14, and again in measures 15-16. The reading with
        E\\na\\ here matches the E\\na\\ that occurs with the
        corresponding chord in measure 13. On the other hand, the
        reading with E\\sh\\ maintains a parallelism in measures
        15-16, repeating the same ascending four-note interval
        sequence each time (minor third, major second, minor
        second). That same interval sequence, inverted, also appears
        with the first, third, and fifth diminished chords in measures
        13-14."
	
        item = Accidental
      } {
	% TODO: find a better way to do this.
        \tag #'m15-lemma e'-\tag #'finger _1
	\tag #'m15-reading eis'-\tag #'finger _1
      }
      \editorialMarkup reading \with {
	source = "\\source{E}{B}"
      } { eis' }
    }

    fis'-\tag #'finger ^1

    fis-\tag #'finger _4 a-\tag #'finger _2 bis-\tag #'finger _1 dis'-\tag #'finger _2

    eis-\tag #'finger _5 gis-\tag #'finger _3 b-\tag #'finger _2 d'-\tag #'finger _1
    b-\tag #'finger _5 d'-\tag #'finger _3 e'-\tag #'finger _2 f'-\tag #'finger _1

    ais-\tag #'finger _5 cis'-\tag #'finger _3 d'-\tag #'finger _2 e'-\tag #'finger _1


    \tag #'crit \footnote #'(2 . -2)
      \markup { E\natural or E\sharp? }
      Stem

    \choice variants {
      \editorialMarkup lemma \with {
        ann-type = critical-remark
        source = "\\source{A}{1}, \\source{E}{B}"
	    
        message = "\\source{A}{1} (measure 30) and \\source{E}{B} have
        E\\na, while \\source{E}{S1} and \\source{E}{N} have E\\sh\\
        (with no accidental)."
	    
	item = Accidental
      }{ e-\tag #'finger _5 }
      \editorialMarkup reading \with {
        source = "\\source{E}{S1}, \\source{E}{N}"
      }{ eis }
    }

    \tag #'crit \footnote #'(2 . -2)
      \markup { G\natural or G\sharp? }
      Stem

    \choice variants {
      \editorialMarkup lemma \with {
        ann-type = critical-remark
        source = "\\source{A}{1}, \\source{E}{N}, \\source{E}{B}"
	    
        message = "\\source{A}{1} (measure 30), \\source{E}{N}, and
        \\source{E}{B} have G\\na, while \\source{E}{S1} has G\\sh\\
        (with no accidental)."
	    
	item = Accidental
      }{ g-\tag #'finger _4 }
      \editorialMarkup reading \with {
        source = "\\source{E}{S1}"
      }{ gis }
    }

    ais-\tag #'finger _3 cis'-\tag #'finger _2
    
    dis-\tag #'finger _5 fis-\tag #'finger _3 a-\tag #'finger _2 bis-\tag #'finger _1
    a-\tag #'finger _5 c'-\tag #'finger _3 d'-\tag #'finger _1 ees'-\tag #'finger _2

    | % Down M16

    gis32-\tag #'finger _5 b-\tag #'finger _3 cis'-\tag #'finger _2 d'-\tag #'finger _1
    d-\tag #'finger _5 gis-\tag #'finger _3 a-\tag #'finger _2 b-\tag #'finger _1

    cis fis gis a
    b, fis gis a

    cis fis

    \tag #'crit \footnote #'(-1 . 1.5)
      \markup { Redundant accidental. }
      NoteHead

    \criticalRemark \with {
      source = ""
      message = "Redundant sharp in \\source{E}{S1} and \\source{E}{N}."
    } gis

    a

    gis a gis fis

    cis fis gis a
    gis a gis fis

    | % Down M17

    cis32 gis a b
    a b a gis

    cis gis a b
    a b a gis

    cis fis

    \tag #'crit \footnote #'(-1 . 1.5)
      \markup { Redundant accidental. }
      NoteHead

    \criticalRemark \with {
      source = ""
      message = "Redundant sharp in \\source{E}{S1} and \\source{E}{N}."
    } gis

    a

    gis a gis fis

    cis fis\< gis a
    b-\tag #'finger _3\! cis'\> d' cis'\!

    | % Down M18

    b32-\tag #'finger _3 cis'-\tag #'finger _2 b-\tag #'finger _1 a-\tag #'finger _2
    gis-\tag #'finger _3 a-\tag #'finger _1 gis fis

    cis gis a b
    a b a gis

    cis fis

    \tag #'crit \footnote #'(-1 . 1.5)
      \markup { Redundant accidental. }
      NoteHead

    \criticalRemark \with {
      source = ""
      message = "Redundant sharp in \\source{E}{S1} and \\source{E}{N}."
    } gis

    a
    gis a gis fis

    cis fis gis a
    gis a gis fis

    | % Down M19

    c32 fis g a
    g a g fis

    b, fis g a
    g a g fis

    b, e fis g
    b, e fis g

    b,-\tag #'finger _5 e-\tag #'finger _3 fis-\tag #'finger _2 g-\tag #'finger _1
    a-\tag #'finger _3 b-\tag #'finger _2 c'-\tag #'finger _1 b-\tag #'finger _2

    | % Down M20

    a32-\tag #'finger _3 b-\tag #'finger _1 a g
    fis-\tag #'finger _4 g-\tag #'finger _1 fis e

    b, fis g a
    g a g fis

    b, e fis g
    fis g fis e

    b, e fis g
    fis g fis e

    | % Down M21

    b,32 e fis g
    fis g fis e

    b, e fis g
    b, e fis g

    e-\tag #'finger _5 g-\tag #'finger _3 b-\tag #'finger _1 cis'-\tag #'finger _2
    b-\tag #'finger _3 cis'-\tag #'finger _2 b-\tag #'finger _1 g-\tag #'finger _3

    e g b cis'
    b cis' b g

    | % Down M22

    e32 g b cis'
    b cis' b g

    e g b cis'
    b cis' b-\tag #'finger _1 g-\tag #'finger _4

    eis-\tag #'finger _5 gis-\tag #'finger _3 b-\tag #'finger _2 d'-\tag #'finger _1
    s4
    s32
    \change Staff = "up"
    \stemDown
    d'-\tag #'finger _1
    \change Staff = "down"
    b-\tag #'finger _2 gis-\tag #'finger _3
    \stemNeutral

    | % Down M23

    eis32 gis b d'
    s4
    s32
    \stemDown
    \change Staff = "up" d'
    \change Staff = "down" b gis
    \stemNeutral

    \tag #'crit \footnote #'(1 . 2)
      \markup { Redundant accidental. }
      NoteHead

    \criticalRemark \with {
      source = ""
      message = "Redundant sharp in \\source{E}{S1} and \\source{E}{N}."
    } eis

    gis b d'
    r8

    r4

    | % Down M24

    r2

    <fis, fis,,>4

    <fis, fis,,>8[
      <b, b,,>8]

    | % Down M25

    \voiceTwo
    <b, b,,>4\sf
    \oneVoice

    <ais, ais,,>8[
    <cis cis,>8]

    <cis cis,>4\sf

    <b, b,,>8[
    <d d,>8]

    | % Down M26

    \voiceTwo
    <d d,>4\sf
    \oneVoice

    <cis cis,>8[
    <e e,>8]

    <d d,>8[
    <fis fis,>8

    <e e,>8
    <g g,>8]

    | % Down M27

    <fis fis,>8[
    <ais ais,>8

    <b b,>8
    <cis' cis>8]

    <d' d>8[
    <dis' dis>8
    <e' e>8]

    <<
      {
	eis'8-\tag #'finger ^1
      }
      \\
      {
	eis32-\tag #'finger _5 fis gis ais
      }
    >>
    
    | % Down M28

    b32 cis' d' e'
    fis' g' fis' e'

    d' e' d' cis'
    \clef bass
    b cis' b a

    g a b cis'
    d' cis' b a

    g a b a
    g-\tag #'finger _3 a-\tag #'finger _1 g fis

    | % Down M29

    e32 b-\tag #'finger _1 g-\tag #'finger _2 fis
    e g-\tag #'finger _1 e-\tag #'finger _2 d

    cis e-\tag #'finger _1 cis-\tag #'finger _2 b,
    \voiceTwo
    ais, cis-\tag #'finger _2 ais,-\tag #'finger _3 g,-\tag #'finger _1

    fis,8-\tag #'finger _2
    \oneVoice
    r8

    <fis e cis fis,>8
    r8

    | % Down M30

    <b, fis, d, b,,>8
    r8

    r4

    r2\fermata

    \bar "|."
  }
>>
