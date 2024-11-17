\header {
  title = "Oy dortn dortn"
  subtitle = "From \"Ot Azoy: Chansons et Berceuses Yiddisch\""
  composer = "Zsuzsanna Varkonyi"
}

global = {
  \key a \minor
  \time 2/2
}

scoreTempo = \tempo 2 = 90 % BPM

\include "deutsch.ly"

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
  c e g e       | f d c4. h8  |
  a1            | r2.
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