KleineTrommelNoten = {
        \drummode {
		\repeat volta 4 {
			\ka \ka ss4 \ka \ka ss4
		}
		\repeat volta 4 {
			\ks \ks \ks \ks \ksx \ks \ks \ksx
			\ks \ks \ks \ks \ksx \ks \ks \ksx
			\ks \ks \ks \ks \ksx \ks \ks \ksx
			\ks \ks \ks \ksx \ks \ksx \ks \ksx
		}
		\repeat volta 4 {
			r1
		}
		\repeat volta 4 {
			r8 \ka r8 \ka r8 \ka r8 \ka
		}
		\ka \ka ss4 r2
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
		\repeat volta 4 {
			\ga \ga ss4 \ga \ga ss4
		}
		\repeat volta 4 {
			\ga \ga ss16 \ga ss16 \ga \ga ss16 \ga ss16
			\ga \ga ss16 \ga ss16 \gv ss4
		}
		\repeat volta 4 {
			\gv \gv \gv \gs \ga \gs
		}
		\repeat volta 4 {
			\gv \gv \gv \gs \ga \gs
		}
		\ga \ga ss4 r2
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

