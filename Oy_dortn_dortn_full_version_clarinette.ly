\version "2.24.4"
\include "include.ly"
\include "chords.ly"
\include "violin.ly"
\include "accordion.ly"

\score {
    <<
        \new ChordNames \transpose es f {
            \chordNames
        }
        \new Staff \with {
            instrumentName = \markup { "Melody 1" \concat{ B \teeny \raise #0.4 \flat } }
            shortInstrumentName = "Mel."
        }
        {
          \transpose es f {
              \voicePartial \voice
              \voiceBeginning \voice
              \voiceBeginning \voice r4
              \repeat unfold 15 r1 r2.
              \voiceBeginning \voice
              \voiceBeginning \voice
              \voiceEnd }
        }

        \addlyrics {
            \verseOne
            \verseTwo
            \verseThree
            \verseFour
            \verseOne
        }

        \new Staff \with {
            instrumentName = \markup { "Violin" \concat{ B \teeny \raise #0.4 \flat } }
            shortInstrumentName = "Vln."
        } \transpose es f { \violin }

        \new Staff \with {
            instrumentName = \markup { "Accordion" \concat{ B \teeny \raise #0.4 \flat } }
            shortInstrumentName = "Acc."
        } \transpose es f { \accordion }
    >>
    \layout { #(layout-set-staff-size 16) }
}