\version "2.20.0"
\include "include.ly"

\score {
    <<
        \new ChordNames r4 \repeat unfold 5 \chordNames
        \new Staff {
            \melodyPartial \melody
            \melodyBeginning \melody r4
            \repeat unfold 15 r1 r2.
            \melodyBeginning \melody
            \melodyBeginning \melody
            \melodyEnd
        }
        \addlyrics {
            \verseOne
            \verseTwo
            \verseThree
            \verseFour
        }
        \new Staff \with {
            midiInstrument = #"violin"
            midiMaximumVolume = #0.8
        }
        {
            r4
            \repeat unfold 32 r1
            \solo
            \repeat unfold 31 r1
            r2.
        }
    >>
    \layout { }
    \midi { }
}