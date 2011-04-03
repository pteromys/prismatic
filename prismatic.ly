\version "2.12.3"

#(set-default-paper-size "letter")
#(set-global-staff-size 20)
#(ly:set-option 'point-and-click #f)

SR = { \change Staff = "R" \stemDown }
SL = { \change Staff = "L" \stemUp }

righthand = \relative c' {
  \clef G
  \key g \major
  \time 6/8
  \tempo 4.=60

  \stemUp
  \slurUp
  \tieUp
  % Intro
  R2. \bar "|:" |
  r4. r4 b'8 |
  % Theme
  b4. b4 b8 |  % 3
  b4. ~ b4 a8 |
  g2. |
  r4. r4 e'8 |
  e4. e4 e8 |  % 7
  fis4. ~ fis4 e8 |
  d2. |
  r4. r4 d8 |
  d4. c4 c8 |  % 11
  c4. a4 b8 |
  a4. g4. |
  e4. ~ e4 g8 |
  b4. a4 g8 |  % 15
  a4. ~ a4 g8 |
  g2. |
  fis4. ~ fis4 fis8 |
  g2. \bar ":|" |  % 19
  % Bridge
  r4. b4 cis8 |
  d4. a4. |  % 21
  r4. a4 b8 |
  c2. |
  r4. c4 d8 |
  es4. bes4. |  % 25
  r4. g4 bes8 |
  b4. g4 b8 |
  bis4. gis4 bis8 |
  cis4. gis4 cis8 |  % 29
  cis4. a4 cis8 |
  dis4. cis4 dis8 |
  e4. b4 e8 |
  gis4. e4 gis8 |  % 33
  b4. gis4 b8 |
  ais4. cisis,4 dis8 |
  eis4. cisis,4 cisis8 |
  % Intermediate theme
  dis4. fis4 eis8 |  % 37
  fis4. cis4 fis8 |
  gis4. fis4 gis8 |
  ais4. fis4 gis8 |
  ais4. ais4 gisis8 |  % 41
  ais4. cis4 ais8 |
  fis'4. eis4 dis8 |
  dis4. cis4 bis8 |
  ais4. cis4 bis8 |  % 45
  cis4. gis4 cis8 |
  dis4. gis4 fis8 |
  fis4. eis4 disis8 |
  eis4. fis4 eis8 |  % 49
  dis4. bis4 cis8 |
  cis4. cis4. |
  cis4. ~ cis4 ais16 bis |
  cis4. bis4 ~ bis16 ais16 |  % 53
  gis4 ~ gis16 fis16 eis4 fis8 |
  gis4 fis16 eis dis4 cis16 bis |
  cis2. |
  % Transition back to main theme
  r4. r4 eis8 |
  eis4. dis4 ais8 |  % 58
  dis4. gis4 fisis8 |
  eis4. dis4. |
  bis4. r4 dis8 |
  eis4. dis4. |  % 62
  dis4. gis4 gis8 |
  gis4. fisis4 gis8 |
  gis4. fisis4 fisis8 |
  gis4. gis4 gis8 |  % 66
  gis4. ais4 b8 |
  b4. fis4. |
  r4. gis4 a8 |
  gis4. cis4 e8 |  % 70
  fis4. e4 fis8 |
  gis4. a4 gis8 |
  fis4. gis4 fis8 |
  e4. d4 c8 |  % 74
  d4. b4 d8 |
  e4. fis4 e8 |
  d4. ~ d4 d8 |
  e4. d4 c8 |  % 78
  d4. c4 b8 |
  a4. a4 a8 |
  a4 r8 fis8 g a |
  % Main theme returns
  b4. b4 b8 |  % 82
  b4. ~ b4 a8 |
  g2. |
  r4. r4 e'8 |
  e4. e4 e8 |  % 86
  fis4. ~ fis4 e8 |
  d2. |
  r4. r4 d8 |
  d4. e4 e8 |  % 90
  e4. fis4 fis8 |
  a4. g4 fis8 |
  fis4 e16 g b4 a8 |
  g4. d4 g8 |  % 94
  a4. g4 fis8 |
  g2. |  % 96
  % Coda
  r4. b,4 a8 |
  g4 fis16 g a4 g8 |  % 98
  fis4 ~ fis16 e16 d8. a16 g' fis |
  g2. |
  r4. b4 a8 |
  g4 fis16 g a4 g8 |  % 102
  a4 ~ a16 g16 fis8. g16 a d |
  b2. |
  r4. b4 a8 |
  a8. g16 fis g g'4 g8 |  % 106
  fis4 e8 fis4 e8 |
  d4. a4 b8 |
  c4. b4 a8 |
  g4 fis16 g a4 g8 |  % 110
  fis4 ~ fis16 e d8. a16 g' fis |
  g4. fis |  % 112
  g fis |
  g2. |  % 114
  g''2. \bar "|." |
}

% Manual beaming modifications are inserted to accommodate dynamics.
lefthand = \relative c {
  \clef F
  \key g \major
  \time 6/8
  \tempo 4.=60

  \stemDown
  % Intro
  g16 d' g \SR b d g b g d b \SL g d \bar "|:" |
  g, d' g \SR b d g b g d b \SL g d |
  % Theme
  g,16 d' g \SR b d g b g d b \SL g d |
  fis, fis' a \SR b dis fis b fis dis b \SL fis fis, |
  e g' \SR b e g b e b g e b \SL e, |
  e, e' \SR b' e g b e b g e \SL b e, |
  c c' e \SR g c d e d c g \SL e c |
  d, a' d \SR fis a d fis d a fis \SL a, d, |
  g, g' b \SR d g b d b g d \SL b g |
  f g b \SR d g b d b g d \SL f, g, |
  c, e' g \SR c e g c g e c \SL g e |
  d, d' fis a \SR d fis a fis d \SL a fis d |
  e, b' e \SR g b e g e b g \SL e b |
  c, c' e \SR g c d e d c g \SL e c |
  c, c' g' \SR c e g a g e c \SL e, c |
  a e' a \SR c e g a g e c \SL e, a, |
  d, d' \SR g a c e g e c a g \SL d |
  d, d' fis \SR a c d fis d c a \SL d, a |
  g d' g \SR b d g b g d b \SL g d |
  % Bridge
  g,16 cis g' \SR cis e g b g e cis \SL g cis, |
  fis, d' fis \SR a d fis a fis d a \SL fis d |
  a c e a \SR c e a e c \SL a e c |
  aes es' aes \SR bes c es aes es c bes \SL aes es |
  aes, es' aes \SR c es ges c ges es c \SL aes es |
  es, es' g bes \SR es g bes g es \SL bes g es |
  bes es g \SR bes es f g f es bes \SL g es |
  g, es' g \SR b es f g f es b \SL g es |
  gis, bis e gis \SR bis e gis e bis \SL gis e gis, |
  cis, cis' eis gis \SR cis eis gis eis cis \SL gis eis cis |
  a e' a \SR b cis e a e cis b \SL a e |
  a, e' a \SR cis e a cis a e cis \SL a e |
  e, e' gis b \SR e gis b gis e \SL b gis e |
  e, e' b' \SR gis' b d e d b gis \SL b, e, |
  e, e' d' \SR gis b e gis e b gis \SL d e, |
  ais,, cisis' ais' \SR eis' ais dis cisis ais eis \SL ais, eis ais, |
  ais, ais' dis \SR eis ais dis cisis ais eis \SL ais, eis ais, |
  % Intermediate theme
  <<
    { dis16 ais' dis \SR fis ais dis fis dis b fis \SL b, fis }
    \\
    { r4. b,4. }
  >> |
  ais16 fis' cis' \SR dis fis ais cis ais fis dis \SL cis fis, |
  cis cis' fis \SR gis b cis fis cis b gis \SL fis cis |
  fis, cis' fis \SR gis ais cis fis cis ais gis \SL fis cis |
  fis,16 cis' e \SR ais cis e ais e cis ais \SL e cis |
  eis, cis' ais' \SR cis eis ais cis ais eis cis \SL eis, cis |
  eis, eis' bis' \SR eis gisis bis eis bis gisis eis \SL bis eis, |
  ais, eis' ais \SR cis eis ais cis ais eis cis \SL ais eis |
  <<
    { ais,16 eis' ais \SR cis eis ais cis ais fis cis \SL fis, cis }
    \\
    { r4. fis,4. }
  >> |
  cis16 cis' eis gis \SR cis eis gis eis cis \SL gis eis cis |
  gis fis' dis' \SR gis bis dis gis dis bis gis \SL dis gis, |
  cis, gis' cis \SR eis gis cis eis cis gis eis \SL cis gis |
  eis,16 eis' bis' \SR eis gisis bis fis' bis, gisis eis \SL bis eis, |
  ais, eis' ais \SR cis eis ais bis ais eis cis \SL ais eis |
  dis fis ais \SR dis fis ais \SL gis,, gis' cis \SR dis gis bis \SL |
  ais,, eis' ais \SR bis cis eis ais eis cis bis \SL ais eis |
  fis,16 fis' ais \SR cis fis ais \SL fis,, dis' gis \SR bis dis ais' \SL |
  eis,, cis' eis \SR gis cis fis eis cis bis \SL ais cis, ais |
  fis cis' gis' \SR ais fis' eis \SL gis,,, gis' \SR fis' gis cis bis \SL |
  cis,, gis' cis \SR eis gis cis eis cis gis eis \SL cis gis |
  % Transition back to main theme
  cis,16 gis' cis \SR eis gis cis eis cis gis eis \SL cis gis |
  cis,16 fisis cis' \SR fisis ais cis dis cis ais fisis \SL cis fisis, |
  bis, gis' dis' \SR gis bis dis gis dis bis gis \SL dis gis, |
  cis, gis' cis \SR eis gis eis' \SL dis,, dis' fis \SR gis ais cis \SL |
  gis, dis' gis \SR ais bis dis gis dis bis ais \SL dis, gis, |
  fisis ais cis \SR fis ais cis \SL cis,, fisis cis' \SR fis ais cis \SL |
  bis,, gis' dis' \SR gis bis dis gis eis bis gis \SL eis bis |
  eis, cis' eis \SR gis cis eis fisis eis cis gis \SL eis cis |
  dis, dis' gis \SR ais dis gis fisis dis ais \SL fisis dis cis |
  e, b' e \SR gis b e gis e b gis \SL e b |
  e, b' d \SR gis b d ais' d, b gis \SL d b |
  b, b' dis fis \SR b dis fis dis b \SL fis dis b |
  a fis' a \SR bis dis fis gis fis dis bis \SL fis dis |
  cis, e' gis \SR cis e gis cis gis e cis \SL gis cis, |
  fis, cis' ais' \SR fis' ais cis e cis ais fis \SL ais, cis, |
  b b' e \SR gis b e a e b gis \SL e b |
  b, a' dis \SR fis b dis gis dis b fis \SL dis a |
  c,16 g' c \SR e g c d c g e \SL g, c, |
  g g' b \SR d g a b a g d \SL b g |
  c, g' c \SR e g c fis c g e \SL g, c, |
  g g' b \SR d g a b a g d \SL b g |
  c, g' c \SR e g c d c g e \SL g, c, |
  g g' b \SR d g b c b g e \SL g, e |
  a, e' a \SR c e b' a g e c \SL e, a, |
  d, d' g \SR a d g fis d a \SL d, a d, |
  % Main theme returns
  g16 d' g \SR b d g b g d b \SL g d |
  fis, fis' a \SR b dis fis b fis dis b \SL fis fis, |
  e g' \SR b e g b e b g e b \SL e, |
  e, e' \SR b' e g b e b g e \SL b e, |
  c c' e \SR g c d e d c g \SL e c |
  d, a' d \SR fis a d fis d a fis \SL a, d, |
  g, g' b \SR d g b d b g d \SL b g |
  f g b \SR d g b d b g d \SL f, g, |
  c, e' d' \SR e g c e c g e \SL c e, |
  d, d' c' \SR fis a d fis d a fis \SL c d, |
  <<
    { dis,16 fis' dis' \SR a' b dis g dis b a fis' a, \SL }
    \\
    { r4. b,,,8 cis dis }
  >> |
  <<
    { e16 e' b' \SR g' e' g b g e c \SL c, e, }
    \\
    { r4. c,4. }
  >> |
  d16 d' b' \SR d g b d b g d \SL b d, |
  d, d' c' \SR a' c d g d c a \SL c, d, |
  g, d' g \SR b d g b g d b \SL g d |
  % Coda
  g,16 dis' g \SR b dis g b g dis b \SL g dis |
  e, e' g \SR b fis' g a g e b \SL e, b |
  c, c' e \SR g c e \SL d,, a' d \SR a' g' fis \SL |
  g,, g' a \SR b d a' b g d b \SL g d |
  g, dis' g \SR b dis g b g dis b \SL g dis |
  e, e' g \SR b fis' g a g e b \SL e, b |
  c, e' a \SR c e g \SL d,, d' a' \SR g' a d \SL |
  g,,, d' g \SR b d g b g d b \SL g d |
  g, dis' g \SR b dis g b g dis b \SL g dis |
  <<
    { e,16 e' g \SR b fis' g g' d b g \SL b, d, }
    \\
    { r4. b,4. }
  >> |
  c16 e' c' \SR g' e' c fis e c g \SL c, g |
  d, d' a' \SR c d fis a fis d c \SL a d, |
  dis, b' a' \SR b dis fis b fis dis b \SL fis b, |
  e, e' g \SR b fis' g a g e b \SL e, b |
  c, c' e \SR g c e \SL d,, a' d \SR a' g' fis \SL |
  g,, g' a \SR b d g \SL d,, a' d \SR a' d fis \SL |
  g,, g' a \SR b d g \SL d,, a' d \SR a' g' fis \SL |
  \stemDown
  g,,,16[ g']
  \stemUp
  d'[ g b d]
  \SR \stemDown
  g[ b d g]
  \stemUp
  b[ d] \SL |
  r2. \bar "|." |
}

dynamics = {
  % Formatting
  %\override DynamicTextSpanner #'dash-period = #-1.0
  \crescTextCresc
  \dimTextDim
  \dynamicUp
  % Intro
  s2.\p
  s2.^\markup{2nd time \dynamic{mp}}
  % Theme
  s2.*17
  % Bridge
  \crescTextCresc
  s2.\<
  s2.*12
  s2.\f
  s2.
  s2.\>
  s2.
  s2.\p
}

\book {
  \header {
    title = "Prismatic"
    composer = "Andrew Geng"
    copyright = \markup { \center-column { \line { Copyright © 2011 by Andrew Geng } } }
  }
  \paper {
    print-page-number = ##t
    %between-system-padding = 1\cm
  }
  \score {
    \new PianoStaff <<
      #(set-accidental-style 'piano)
      \new Staff = "R" <<
        % Add extra space for the cross-staff beams
        \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-5 . 4)
        % Fake centered dynamics
        \override Staff.DynamicLineSpanner #'staff-padding = #3
        % Keep dynamic marks from colliding with barlines
        \override Staff.DynamicText #'extra-spacing-width = #'(-0.5 . 0.5)

        \righthand %\dynamics
      >>
      \new Staff = "L" <<
        % Add extra space for the cross-staff beams
        \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 5)

        \lefthand
      >>
    >>
    \layout {}
  }
}
