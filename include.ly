\header {
  title = "Oy dortn dortn"
  subtitle = "From \"Ot Azoy: Chansons et Berceuses Yiddisch\""
  composer = "Zsuzsanna Varkonyi"
}

global = {
  \time 4/4
  \key a \minor
}

scoreTempo = \tempo 4 = 180 % BPM

\include "deutsch.ly"

chordNames = \chordmode {

    \set chordChanges = ##t

    % Akkorde folgen hier.

    \partial 4
    a4:m |
    a1:m | a:m      |  a:m | a:m   |
    c    | f2 g2    |  c1  | c     |
    e1:m | c        |  e:m | f     |
    a:m  | d2:m e:7 | a1:m | a2.:m
}

voicePartial = \relative c'' {
    \scoreTempo
    \partial 4 a4
}

voiceBeginning = \relative c'' {
    a4
}

voiceEnd = \relative c'' {
    \bar "|."
}

voice = \relative c' {

    % Die Melodie folgt hier.

    e'4 d e c     | a2. a8 a8   |
    e'4 d e c     | a2. e'8 f   |
    g4 g g g      | a2 g8 f e d |
    e1~           | e2. e8 f    |
    g4 g g4. e8   | c2. e8 f    |
    g8 f e d e4 a | a2. a,4     |
    c e g e       | f d e4. c8  |
    a1~           | a2.
}

violin = \relative c' {

    % Die Geige folgt hier.

    r4
    \repeat unfold 15 r1 r2. e'8 c                    |
    a1               | a2. d8 c                       |
    a1               | a2. r4                         |
    r1               | r1                             |
    r4 e'8 f g f e d | e2. r4                         |
    r1               | r1                             |
    r1               | r1                             |
    r1               | r1                             |
    r1               | r1                             |
    a,1              | r4 e'8 f e4 r4                 |
    r1               | r8 c h c c r8 r4               |
    \repeat unfold 12 r1
    r4 a8 h c4. h8   | \tuplet 3/2 { a4 h c } c2      |
    r4 a8 h c4. h8   | \tuplet 3/2 { a4 h c } c4 c8 d |
    e4 e e e         | g2 f8 e d c                    |
    e1~              | e2. e8 f                       |
    g4 g g4. e8      | c4. c4. e8 f                   |
    g8 f e d e4 a    | a2. g8 f                       |
    e4 d c4. d16 c   | h4 h a as                      |
    a1~              | a2.

    \repeat unfold 31 r1
    r2.
}

accordion = \relative c' {

    % Das Akkordeon folgt hier.

    r4
    \repeat unfold 63 r1
    r2.
}

verseOne = \lyricmode {

	% Liedtext folgt hier.

	Oy, dor- tn, do- r- tn, i- bern va- - - - serl
    O- y, dor- tn, dor- tn, i- be- - - rn brik
    Fa- r- tri- bn host- u mich in di va- y- te- ne le- n- der
    Un be- nken benk ikh oft nokh dir tsu- rik
}

verseTwo = \lyricmode {

    % Liedtext folgt hier.

    Oy, vi- fl o- vn- tn tsu- - za- men geze- s- n,
    O- y, vi- fl ov- ntn shpet-  i- n de- r nakht
    Un- - vi- fl tre- re- lekh mi- r ho- - bn- -  far- gos- n
    Oy, bis mir ho- bndi li- be tsusam- en- gebracht
}

verseThree = \lyricmode {

    % Liedtext folgt hier.

    Oy, helf mir, Got- en- ju, oj- - Got in hi- - ml
    O- y, helf mir, Got- en- ju,s'is mi- r ni- sht gut
    Sho- jn tsajt draj jo- re- lech wi mir shpi- - ln a li- - be
    Un ojs- shpi- ln di li- be konen mir nit
}

verseFour = \lyricmode {

    % Liedtext folgt hier.

    Oy, daj- ne oj- ge- lech, wi di shwa- rtse kar- sche- lech
    O- y, daj- ne li- pe- lech,wi ro- ze- ve pa- pir
    Un- - daj- ne fing- er- lech, w- i ro- - ze- ve fe- j- der
    Oy, schraj- bn sols- tu of- te briw tsu mir
}