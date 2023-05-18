FloetenNoten = \relative {
                \partial 8 r8
                \repeat volta 16 {
			a'4 g8 f8 e4 e8 f8
		}
}

Floeten = {
	\set Staff.instrumentName = "Flöten"
	\set Staff.midiInstrument = "flute"
        \set Staff.midiPanPosition = 0.0
        \set Staff.midiExpression = 0.7
        \new Voice = "Floeten" \FloetenNoten
}

TrommelNoten = {
                \partial 8 \ka
                \repeat volta 16 {
                        \kap \kap \ka \kap \kap \ka
		}
}

Trommel = {
	\tempo 4 = 120
	\set DrumStaff.instrumentName = "Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.1
        \new DrumVoice = "Trommel" \TrommelNoten
}

\score {
        \header {
                piece = "XII Medley \"Santa Maria\""
        }
	\new StaffGroup <<
		\new Staff << \Floeten >>
                \new DrumStaff << \Trommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
}

