KleineTrommelNoten = {
        \drummode {
		\repeat volta 8 {
			\ka \ka ss4 \ka \ka ss4
		}
		\repeat volta 4 {
			r1
			r1
		}
        }
}

KleineTrommel = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "KleineTrommel" \KleineTrommelNoten
}

GrosseTrommelNoten = {
        \drummode {
		\repeat volta 8 {
			\ga \ga ss4 \ga \ga ss4
		}
		\repeat volta 4 {
			\ga \ga ss16 \ga ss16 \ga \ga ss16 \ga ss16
			\ga \ga ss16 \ga ss16 \gv ss4
		}
        }
}

GrosseTrommel = {
	\set DrumStaff.instrumentName = "Grosse Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "GrosseTrommel" \GrosseTrommelNoten
}

\score {
        \header {
                piece = "XIX (We will rock you)"
        }
	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
                \new DrumStaff << \GrosseTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

