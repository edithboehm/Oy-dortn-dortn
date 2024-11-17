\version "2.24.4"
\include "include.ly"
\include "chords.ly"

\score {
  <<
    \new ChordNames \chordNames
    \new Staff {
      \global
      \new Voice = "voice" {
        \voicePartial \voice \voiceEnd
      }
    }
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