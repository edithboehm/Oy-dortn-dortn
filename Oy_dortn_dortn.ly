\version "2.20.0"
\include "include.ly"

\score {
    <<
  		\new ChordNames \chordNames
  		\new Staff { \new Voice = "melody" {\melodyPartial \melody \melodyEnd }}
        \new Lyrics \lyricsto "melody" {
            <<
            \verseOne
        	\new Lyrics {
        	  \set associatedVoice = "melody"
        	  \verseTwo
        	}
        	\new Lyrics {
              \set associatedVoice = "melody"
              \verseThree
            }
            \new Lyrics {
              \set associatedVoice = "melody"
              \verseFour
            }
        	>>
        }
    >>
    \layout { }
    \midi { }
}