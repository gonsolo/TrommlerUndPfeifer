FloetenNoten = \relative {
	r1
}

Floeten = {
        \time 12/8
	\tempo 4 = 180
	\set Staff.instrumentName = "Flöten"
	\set Staff.midiInstrument = "flute"
        \set Staff.midiPanPosition = 0.0
        \set Staff.midiExpression = 0.7
        \new Voice = "Floeten" \FloetenNoten
}

TrommelNoten = {
	r1
}

Trommel = {
        \time 12/8
	\tempo 4 = 180
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

