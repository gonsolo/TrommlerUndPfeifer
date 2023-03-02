KleineTrommelNoten = {
        \drummode {
		\mark  \markup { \box "A" }
		r4 r4 r8 \ka \ks \ks r8
		r4 r4 r8 \ka \ks \ks r8
		r4 r4 r8 \ka \ks \ks r16 \ks
		\kap \ks \kap \ks \ka \ka \ks \ks r8

		\repeat volta 8 {
			\ksx
			\mark  \markup { \box "B" }
			\ks \ksx \ksx \ks \ksx \ksx \ks \ks \ks \ksx \ks \ksx \ksx \ks \ks^"To A"
		}

		\repeat volta 8 {
			\ksx
			\mark  \markup { \box "C" }
			\ks \ksx \ksx \ks \ksx \ksx \ks \ks \ks \ksx \ks \ksx \ksx \ks \ks^"To A"
		}

		\repeat volta 4 {
			ss4 ss4 ss4 ss4
		}
		\repeat volta 4 {
			\ksx \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks
		}
		\repeat volta 4 {
			\ksx \ks \ks \ks \ks \ks \ks \ks \ksx \ks \ks \ks \ks \ks \ks \ks
		}
		\repeat volta 4 {
			\ksx \ks \ks \ks \ksx \ks \ks \ks \ksx \ks \ks \ks \ksx \ks \ks \ks
		}
		\kg
        }
}

GrosseTrommelNoten = {
        \drummode {
		\ga \gs \gs r16 \gs \gs r16 r4 r4
		\ga \gs \gs r16 \gs \gs r16 r4 r4
		\ga \gs \gs r16 \gs \gs r16 r4 r8 r16 \gs
		\gap \gs \gap \gs \ga \ga \gs \gs r8

		\repeat volta 8 {
			\gg
		}

		\repeat volta 8 {
			\ga ss8 r8 ss8 r8 ss8 r8 ss8
		}

		\repeat volta 4 {
			ss4 ss4 ss4 ss4
		}
		\repeat volta 4 {
			\gsx \gs \gs \gs \gs \gs \gs \gs \gs \gs \gs \gs \gs \gs \gs \gs
		}
		\repeat volta 4 {
			\gsx \gs \gs \gs \gs \gs \gs \gs \gsx \gs \gs \gs \gs \gs \gs \gs
		}
		\repeat volta 4 {
			\gsx \gs \gs \gs \gsx \gs \gs \gs \gsx \gs \gs \gs \gsx \gs \gs \gs
		}
		\gg
	}
}


KleineTrommel = {
        %\tempo 4 = 120
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "KleineTrommel" \KleineTrommelNoten
}

GrosseTrommel = {
	\set DrumStaff.instrumentName = "Grosse Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "GrosseTrommel" \GrosseTrommelNoten
}

\score {
        \header {
                piece = "XVII (Hu Ha)"
        }
	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
                \new DrumStaff << \GrosseTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	\midi {}
}
