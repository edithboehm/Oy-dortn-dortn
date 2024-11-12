\version "2.24.4"
\include "include.ly"
\include "violin.ly"
\include "accordion.ly"

\score {
    <<
        \new ChordNames \with {
           midiMaximumVolume = #0.8
       } \repeat unfold 6 \chordNames
        \new Staff \with {
            midiMaximumVolume = #1
        }{
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
            midiInstrument = #"viola"
            midiMaximumVolume = #1.1
        } \violin
        \new Staff \with {
            midiInstrument = #"drawbar organ"
            midiMaximumVolume = #0.9
        } \accordion
    >>
    \layout { #(layout-set-staff-size 16) }
    \midi { }
}