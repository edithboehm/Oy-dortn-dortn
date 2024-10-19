\version "2.20.0"
\include "include.ly"

\score {
    <<
  		\new ChordNames \chordNames
  		\new Staff { \new Voice = "voice" {\voicePartial \voice \voiceEnd }}
        \new Lyrics \lyricsto "voice" {
            <<
            \verseOne
        	\new Lyrics {
        	  \set associatedVoice = "voice"
        	  \verseTwo
        	}
        	\new Lyrics {
              \set associatedVoice = "voice"
              \verseThree
            }
            \new Lyrics {
              \set associatedVoice = "voice"
              \verseFour
            }
        	>>
        }
    >>
    \layout { }
    \midi { }
}