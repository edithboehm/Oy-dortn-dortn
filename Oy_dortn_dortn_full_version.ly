\version "2.20.0"
\include "include.ly"

\score {
    <<
        \new ChordNames r4 \repeat unfold 5 \chordNames
        \new Staff {
            \voicePartial \voice
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