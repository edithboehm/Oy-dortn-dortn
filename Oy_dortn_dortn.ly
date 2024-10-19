\version "2.20.0"
\include "header.ly"

verseI = \lyricmode {
  \set stanza = #"1."
  Ach was |
  wird denn meine Mut -- ter |
  sa -- gen wenn |
  ich einst kehr komm nach  | Haus?
}

verseII = \lyricmode {
  \set stanza = #"2."
  This _ | is _ the se -- cond | verse. _
  One | two _ _ three | four.
}

theChords = \chordmode {
   r4
   a1:m | a:m      |  a:m | a:m
   c    | f2 g2    |  c1  | c
   e1:m | c        |  e:m | f
   a:m  | d2:m e:7 | a1:m | a1:m
}

voiceMelody = \relative c' {
   \global
   \partial 4 a'4
   e' d e c a2. a8 a8 e'4 d e c
   a2. e'8 f g4 g g g a2 g8 f e d
   e1 (e2.) e8 f
   g4 g g4. e8
   c2. e8 f
   g8 f e d e4 a a2.
   a,4
   c e g e f2 c4 h
   a1

}

violinMelody = \relative c' {
   \global
   \partial 4 r4
   r4 a'8 h c4. h8 \tuplet 3/2 { a4 h c } c2
   r4 a8 h c4. h8 \tuplet 3/2 { a4 h c } c4 c8 d
   e4 e e e g2 f8 e d c
   e1 (e2.) e8 f
   g4 g g4. e8
   c4. c4. e8 f
   g8 f e d e4 a
   a2. g8 f
   e4 d c4. d16 c
   h4 h a as
   a1
}

\score {
  <<
   \context ChordNames { \set chordChanges = ##t \theChords }
    \new Staff {
      \context Voice = "voiceMelody" { \voiceMelody }
    }
    \new Staff \with {
      midiInstrument = "cello"
      midiMaximumVolume = #0.6
    } {
      \violinMelody
    }
    \new Lyrics = "lyricsI" {
    \scoreTempo
    \lyricsto "voiceMelody" \verseI
    }
    \new Lyrics = "lyricsII" {
    \lyricsto "voiceMelody" \verseII
  }
 >>
 \layout { }
 \midi {
  \scoreTempo
 }
}