\version "2.24.4"
\include "include.ly"

\score {
    <<
        \new ChordNames r4 \repeat unfold 6 \chordNames
        \new Staff {
            \voicePartial \voice
            \voiceBeginning \voice
            \voiceBeginning \voice r4
            \repeat unfold 15 r1 r2.
            \voiceBeginning \voice
            \voiceBeginning \voice
            \voiceEnd
        }
        \addlyrics {
            \verseOne
            \verseTwo
            \verseThree
            \verseFour
            \verseOne
        }
        \new Staff \with {
            midiInstrument = #"violin"
            midiMaximumVolume = #0.8
        } \violin
        %\new Staff \with {
        %    midiInstrument = #"accordion"
        %    midiMaximumVolume = #0.8
        %} \accordion
    >>
    \layout { #(layout-set-staff-size 16) }
    \midi { }
}