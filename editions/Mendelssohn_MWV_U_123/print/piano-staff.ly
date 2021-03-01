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

    \tag #'crit \footnote #'(1 . -2.5) \markup {
      {\italic D}\sharp or {\italic D}\natural?
      \bigdot
      {\italic Ré}\sharp ou {\italic ré}\natural ?
    }
    NoteHead

    \choice variants {
      \editorialMarkup lemma \with {
        ann-type = critical-remark
        source = "\\source{E}{N}, \\source{E}{B}"
	    
        message = "\\source{E}{N} and \\source{E}{B}
        have \\textit{D}\\sh, \\source{E}{S1} has \\textit{D}\\na\\ with no
        accidental (surely an error). \\source{A}{1}
        (measure 19) has a different structure here.

	\\centerbigdot

        \\begin{otherlanguage}{french}\\textit{Ré}\\sh\\ dans
        \\source{E}{N} et \\source{E}{B}, \\textit{ré}\\na\\ sans
        accident (sûrement une erreur) dans
        \\source{E}{S1}. \\source{A}{1} (mesure 19) a une
        structure différente ici.\\end{otherlanguage}"

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
	\markup {
	  {\italic B}\natural or {\italic B}\sharp?
	  \bigdot
	  {\italic Si}\natural ou {\italic si}\sharp ?
	}
	NoteHead

	\choice variants {
	  \editorialMarkup lemma \with {
	    ann-type = critical-remark
	    source = "\\source{A}{1}, \\source{E}{B}"
	    
	    message = "\\source{A}{1} (measure 23) and \\source{E}{B}
            have \\textit{B}\\na, \\source{E}{S1} and \\source{E}{N} have
            \\textit{B}\\sh\\ with no accidental.

            \\centerbigdot

            \\begin{otherlanguage}{french}\\textit{Si}\\na\\ dans
            \\source{A}{1} (mesure 23) et \\source{E}{B},
            \\textit{si}\\sh\\ sans accident dans \\source{E}{S1} et
            \\source{E}{N}.\\end{otherlanguage}"
	    
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
	\markup {
	  Redundant accidental.
	  \bigdot
	  Accident superflu.
	}
        Stem

        \criticalRemark \with {
          source = ""
          message = "Redundant sharp in \\source{E}{S1} and \\source{E}{N}.
          \\bigdot\\
          \\begin{otherlanguage}{french}Dièse superflu dans \\source{E}{S1}
          et \\source{E}{N}.\\end{otherlanguage}"
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
	\markup {
	  {\italic D}\sharp or {\italic D}\natural?
	  \bigdot
	  {\italic Ré}\sharp or {\italic ré}\natural?	  
	}
	Stem

	\choice variants {
	  \editorialMarkup lemma \with {
	    ann-type = critical-remark
	    source = "\\source{A}{1}, \\source{E}{N}, \\source{E}{B}"
	    
	    message = "\\source{A}{1} (measure 25), \\source{E}{N},
            and \\source{E}{B} have \\textit{D}\\sh, \\source{E}{S1}
            has \\textit{D}\\na\\ with no accidental.

            \\centerbigdot

            \\begin{otherlanguage}{french}\\textit{Ré}\\sh\\ dans
            \\source{A}{1} (mesure 25), \\source{E}{N} et
            \\source{E}{B}, \\textit{ré}\\na\\ sans accident dans
            \\source{E}{S1}.\\end{otherlanguage}"
	    
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
            \\source{E}{B}, the accidental is missing on the \\textit{G}\\sh\\
            in the upper staff. \\source{A}{1} (measure 25) is
            unclear.

            \\centerbigdot

            \\begin{otherlanguage}{french}Dans \\source{E}{S1}, \\source{E}{N} et
            \\source{E}{B}, il manque l'accident du \\textit{sol}\\sh\\
            de la portée supérieure. \\source{A}{1} (mesure 25) n'est pas
            clair.\\end{otherlanguage}"
	    
	    item = Accidental
	  } {
	    \tag #'crit \single \footnote #'(-2 . -3.5)
	    \markup {
	      Missing accidental.
	      \bigdot
	      Accident manquant.
	    }
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
	\markup {
	  {\italic D}\natural or {\italic D}\sharp?
	  \bigdot
	  {\italic Re}\natural ou {\italic re}\sharp ?
	}
	NoteHead

	\choice variants {
	  \editorialMarkup lemma \with {
	    ann-type = critical-remark
	    source = "\\source{E}{B}"
	    
	    message = "\\source{E}{B} has \\textit{D}\\na,
            \\source{E}{S1} and \\source{E}{N} have \\textit{D}\\sh\\
            with no accidental (surely an
            error). \\source{A}{1} (measure 25) is unclear.

            \\centerbigdot

            \\begin{otherlanguage}{french}\\textit{Ré}\\na\\ dans
            \\source{E}{B}, \\textit{re}\\sh\\ sans accident (sûrement
            une erreur) dans \\source{E}{S1} et
            \\source{E}{N}. \\source{A}{1} (mesure 25) n'est pas
            clair.\\end{otherlanguage}"
	    
	    item = Accidental
	  } { d')-\tag #'finger -1 }
	  \editorialMarkup reading \with {
	    source = "\\source{E}{S1}, \\source{E}{N}"
	  } { dis') }
	}

        ais'-\tag #'finger -4( g'-\tag #'finger -3

	\tag #'crit \footnote #'(-1.5 . -3)
	\markup {
	  {\italic E}\natural or {\italic E}\sharp?
	  \bigdot
	  {\italic Mi}\natural ou {\italic mi}\sharp ?
	}
	Stem

	\choice variants {
	  \editorialMarkup lemma \with {
	    ann-type = critical-remark
	    source = "\\source{A}{1}, \\source{E}{B}"
	    
	    message = "Twice: \\source{A}{1} (measure 26,
            though slightly different) and \\source{E}{B} have \\textit{E}\\na,
            \\source{E}{S1} and \\source{E}{N} have \\textit{E}\\sh\\
            with no accidental.

            \\centerbigdot

            \\begin{otherlanguage}{french}Deux fois :
            \\textit{mi}\\na\\ dans
            \\source{A}{1} (mesure 26, bien qu'elle soit un peu
            différente) et \\source{E}{B},
            \\textit{mi}\\sh\\ sans accident dans \\source{E}{S1} et
            \\source{E}{N}.\\end{otherlanguage}"
	    
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

	message = "\\source{E}{N} has \\textit{G}\\sh, \\source{E}{S1}
        and \\source{E}{B} have \\textit{G}\\na\\ with no accidental
        (surely an error). \\source{A}{1} (measure 31) has a
        different structure here.

        \\centerbigdot

        \\begin{otherlanguage}{french}\\textit{Sol}\\sh\\ dans
        \\source{E}{N}, \\textit{sol}\\na\\ sans accident (sûrement
        une erreur) dans \\source{E}{S1} et
        \\source{E}{B}. \\source{A}{1} (mesure 31) a une
        structure différente ici.\\end{otherlanguage}"

	item = Accidental
      } { <eis'' b'
	   \tag #'crit \single \footnote #'(-1 . -1)
	   \markup {
	     {\italic G}\sharp or {\italic G}\natural?
	     \bigdot
	     {\italic Sol}\sharp ou {\italic sol}\natural ?
	   }
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
    \markup {
      Staccato? See the critical edition.
      \bigdot
      Staccato ? Voir l'édition critique.
    }
    Script

    \choice variants {
      \editorialMarkup lemma \with {
    	ann-type = critical-remark
    	source = "\\source{E}{S1}, \\source{E}{N}"

        message = "The chord is staccato in \\source{E}{S1} and
        \\source{E}{N}, but not in \\source{E}{B}. \\source{A}{1}
        (measure 40) has a different structure here.

        \\centerbigdot

        \\begin{otherlanguage}{french}L'accord est détaché dans
        \\source{E}{S1} et \\source{E}{N}, mais pas dans
        \\source{E}{B}. \\source{A}{1} (mesure 40) a une
        structure différente ici.\\end{otherlanguage}"

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
    \markup {
      {\italic G}\sharp or {\italic G}\natural?
      \bigdot
      {\italic Sol}\sharp ou {\italic sol}\natural ?
    }
    NoteHead

    \choice variants {
      \editorialMarkup lemma \with {
        ann-type = critical-remark
        source = "\\source{E}{N}, \\source{E}{B}"
	    
        message = "\\source{E}{N} and \\source{E}{B} have
        \\textit{G}\\sh, \\source{E}{S1} has
        \\textit{G}\\na\\ with no accidental (surely an error).
        The second half of measure 23 and the first half of
        measure 24 do not occur in \\source{A}{1}.

        \\centerbigdot

        \\begin{otherlanguage}{french}\\textit{Sol}\\sh\\ dans
        \\source{E}{N} et \\source{E}{B}, \\textit{sol}\\na\\ sans
        accident (sûrement une erreur) dans \\source{E}{S1}. La
        seconde moitié de la mesure 23 et la première moitié de la
        mesure 24 ne se trouvent pas dans
        \\source{A}{1}.\\end{otherlanguage}"
	    
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
    \markup {
      {\italic G}\sharp or {\italic G}\natural?
      \bigdot
      {\italic Sol}\sharp ou {\italic sol}\natural ?
    }
    NoteHead

    \tag #'perf \footnote #'(-1 . -3)
    \markup {
      {\italic G}\sharp or {\italic G}\natural? See the critical edition.
      \bigdot
      {\italic Sol}\sharp ou {\italic sol}\natural ? Voir l'édition critique.
    }
    NoteHead

    \choice variants {
      \editorialMarkup lemma \with {
    	ann-type = critical-remark
    	source = "\\source{A}{1}, \\source{E}{N}"

        message = "\\source{A}{1} (measure 3) and \\source{E}{N} have
        \\textit{G}\\sh, \\source{E}{S1} and \\source{E}{B} have
        \\textit{G}\\na\\ with no accidental.

        \\centerbigdot

        \\begin{otherlanguage}{french}\\textit{Sol}\\sh\\ dans
        \\source{A}{1} (mesure 3) et \\source{E}{N},
        \\textit{sol}\\na\\ sans accident dans \\source{E}{S1} et
        \\source{E}{B}.\\end{otherlanguage}"

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
    \markup {
      {\italic A}\natural or {\italic A}\sharp?
      \bigdot
      {\italic La}\natural ou {\italic la}\sharp ?
    }
    NoteHead

    \choice variants {
      \editorialMarkup lemma \with {
    	ann-type = critical-remark
    	source = "\\source{A}{1}, \\source{E}{B}"
	
        message = "\\textit{A}\\na\\ in \\source{A}{1} (measure 8,
        with no accidental) and \\source{E}{B}, \\textit{A}\\sh\\ with
        no accidental in \\source{E}{S1} and \\source{E}{N}.

        \\centerbigdot

        \\begin{otherlanguage}{french}\\textit{La}\\na\\ dans
        \\source{A}{1} (mesure 8, sans accident) et \\source{E}{B},
        \\textit{la}\\sh\\ sans accident dans \\source{E}{S1} et
        \\source{E}{N}.\\end{otherlanguage}"
	
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
	
        message = "\\source{E}{N} and \\source{E}{B} have \\textit{B},
        \\source{E}{S1} has \\textit{G} (surely an error). The passage
        is different in \\source{A}{1}, but the
        theme occurs with \\textit{B} in measure 16.

        \\centerbigdot

        \\begin{otherlanguage}{french}\\textit{Si} dans \\source{E}{N}
        et \\source{E}{B}, \\textit{sol} (sûrement une erreur) dans
        \\source{E}{S1}. Le passage est différent dans \\source{A}{1},
        mais le thème est énoncé avec \\textit{si} dans la mesure
        16.\\end{otherlanguage}"
	
    	item = NoteHead
      }{
	<b,
	 \tag #'crit \footnote #'(-1 . -2)
	 \markup {
	   {\italic B} or {\italic G}?
	   \bigdot
	   {\italic Si} ou {\italic sol} ?
	 }
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
        \\source{E}{N}, only the lower \\textit{C}\\sh\\ is tied
        between measures 10 and 11.

        \\centerbigdot

        \\begin{otherlanguage}{french}Dans \\source{A}{1} (mesures 19
        à 21) et \\source{E}{B}, les deux liaisons de la mesure 9
        continuent jusqu'au premier temps de la mesure 11, alors que
        dans \\source{E}{S1} et \\source{E}{N}, seul le
        \\textit{do}\\sh\\ inférieur est lié entre les mesures 10 et
        11.\\end{otherlanguage}"

    	item = Tie
      }{
	<
	  \tag #'crit \footnote #'(2 . 3)
	  \markup {
	    Tie?
	    \bigdot
	    Liaison ?
	  }
	  cis

	  \tag #'perf \footnote #'(2 . 3)
	  \markup {
	    Tie? See the critical edition.
	    \bigdot
	    Liaison ? Voir l'édition critique.
	  }
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
      \markup {
	{\italic E}\natural or {\italic E}\sharp?
	\bigdot
	{\italic Mi}\natural ou {\italic mi}\sharp ?
      }
      Stem
    \tag #'perf \footnote #'(3 . -4)
      \markup {
	E\natural or E\sharp? See the critical edition.
	\bigdot
	{\italic Mi}\natural ou {\italic mi}\sharp ? Voir l'édition critique.
      }
      Stem

    \choice variants {
      \editorialMarkup lemma \with {
	ann-type = critical-remark
        source = "\\source{E}{S1}, \\source{E}{N}"

        message = "\\source{E}{S1} and \\source{E}{N} have
        \\textit{E}\\na\\ with no accidental, \\source{E}{B}
        has \\textit{E}\\sh. The corresponding passage in
        \\source{A}{1} (starting in measure 29) has neither, and has a
        somewhat different harmonic structure.

        Five diminished seventh chords descend chromatically in
        measures 13-14, and again in measures 15-16. The reading with
        \\textit{E}\\na\\ here matches the \\textit{E}\\na\\ that
        occurs with the corresponding chord in measure 13. On the
        other hand, the reading with \\textit{E}\\sh\\ maintains a
        parallelism in measures 15-16, repeating the same
        sequence of three ascending intervals each time (minor third, major
        second, minor second). That same interval sequence, inverted,
        also appears with the first, third, and fifth diminished
        chords in measures 13-14.

        \\centerbigdot

        \\begin{otherlanguage}{french}
        \\textit{Mi}\\na\\ sans accident dans \\source{E}{S1} et
        \\source{E}{N}, \\textit{mi}\\sh\\ dans \\source{E}{B}. Le
        passage correspondant dans \\source{A}{1} (à partir de la
        mesure 29) n'a ni l'un ni l'autre et présente une structure
        harmonique quelque peu différente.

        Cinq accords de septième diminuée descendent de manière
        chromatique dans les mesures 13 et 14, et encore une fois dans
        les mesures 15 et 16. La leçon avec \\textit{mi}\\na\\ ici
        correspond au \\textit{mi}\\na\\ qui se trouve dans l'accord
        correspondant de la measure 13. Par contre, la leçon avec
        \\textit{mi}\\sh\\ maintient un parallélisme dans les mesures
        15 et 16, en répétant la même séquence de trois intervalles
        ascendants chaque fois (une tierce mineur, un ton majeur et un
        ton mineur). La même séquence, intervertie, se trouve avec le
        premier, le troisième et le cinquème des accords diminués des
        mesures 13 et 14.
        \\end{otherlanguage}"
	
        item = Accidental
      } {
        e'-\tag #'finger _1
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
      \markup {
	{\italic E}\natural or {\italic E}\sharp?
	\bigdot
	{\italic Mi}\natural ou {\italic mi}\sharp ?
      }
      Stem

    \choice variants {
      \editorialMarkup lemma \with {
        ann-type = critical-remark
        source = "\\source{A}{1}, \\source{E}{B}"
	    
        message = "\\source{A}{1} (measure 30) and \\source{E}{B} have
        \\textit{E}\\na, \\source{E}{S1} and \\source{E}{N} have
        \\textit{E}\\sh\\ with no accidental.

        \\centerbigdot

        \\begin{otherlanguage}{french}\\textit{Mi}\\na\\ dans
        \\source{A}{1} (mesure 30) et \\source{E}{B},
        \\textit{mi}\\sh\\ sans accident \\source{E}{S1} et
        \\source{E}{N}.\\end{otherlanguage}"
	    
	item = Accidental
      }{ e-\tag #'finger _5 }
      \editorialMarkup reading \with {
        source = "\\source{E}{S1}, \\source{E}{N}"
      }{ eis }
    }

    \tag #'crit \footnote #'(2 . -2)
      \markup {
	{\italic G}\natural or {\italic G}\sharp?
	\bigdot
	{\italic Sol}\natural ou {\italic sol}\sharp ?
      }
      Stem

    \choice variants {
      \editorialMarkup lemma \with {
        ann-type = critical-remark
        source = "\\source{A}{1}, \\source{E}{N}, \\source{E}{B}"
	    
        message = "\\source{A}{1} (measure 30), \\source{E}{N}, and
        \\source{E}{B} have \\textit{G}\\na, \\source{E}{S1} has
        \\textit{G}\\sh\\ with no accidental.

        \\centerbigdot

        \\begin{otherlanguage}{french}\\textit{Sol}\\na\\ dans
        \\source{A}{1} (mesure 30), \\source{E}{N} et \\source{E}{B},
        \\textit{sol}\\sh\\ sans accident dans
        \\source{E}{S1}.\\end{otherlanguage}"
	    
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
      \markup {
	Redundant accidental.
	\bigdot
	Accident superflu.
      }
      NoteHead

    \criticalRemark \with {
      source = ""
      message = "Redundant sharp in \\source{E}{S1} and \\source{E}{N}.
      \\bigdot\\
      \\begin{otherlanguage}{french}Dièse superflu dans \\source{E}{S1}
      et \\source{E}{N}.\\end{otherlanguage}"
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
      \markup {
	Redundant accidental.
	\bigdot
	Accident superflu.
      }
      NoteHead

    \criticalRemark \with {
      source = ""
      message = "Redundant sharp in \\source{E}{S1} and \\source{E}{N}.
      \\bigdot\\
      \\begin{otherlanguage}{french}Dièse superflu dans \\source{E}{S1}
      et \\source{E}{N}.\\end{otherlanguage}"
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
      \markup {
	Redundant accidental.
	\bigdot
	Accident superflu.
      }
      NoteHead

    \criticalRemark \with {
      source = ""
      message = "Redundant sharp in \\source{E}{S1} and \\source{E}{N}.
      \\bigdot\\
      \\begin{otherlanguage}{french}Dièse superflu dans \\source{E}{S1}
      et \\source{E}{N}.\\end{otherlanguage}"
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
      \markup {
	Redundant accidental.
	\bigdot
	Accident superflu.
      }
      NoteHead

    \criticalRemark \with {
      source = ""
      message = "Redundant sharp in \\source{E}{S1} and \\source{E}{N}.
      \\bigdot\\
      \\begin{otherlanguage}{french}Dièse superflu dans \\source{E}{S1}
      et \\source{E}{N}.\\end{otherlanguage}"
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
