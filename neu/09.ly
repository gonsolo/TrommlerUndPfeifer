KleineTrommelNoten = {
        \drummode {
		\repeat volta 2 {
			\kax \ka \ka \kax \ka \ka \kax \ka \ka \kax \ka \kax |
			\kax \ka \ka \kax \ka \ka \kax \ka \ka \kax \ka \kax |
			\kax \ka \ka \kax \ka \ka \kax \ka \ka \kax \ka \kax |
			\kax \ka \kax \ka \ka \kax \kax \ka \kax \ka \ka \kax |
			\kax \ka \kax \kax \kax \kax \kax \ka \ka \ka \ka \ka |
		}
		\repeat volta 2 {
			\kax \ka \ka \kax \ka \kax \kax \ka \kax \ka \ka \ka |
			\kax \ka \ka \kax \ka \kax \kax \ka \kax \ka \ka \ka |
			\kax \ka \ka \kax \ka \ka \kax \ka \ka \kax \ka \ka |
			\kax \ka \ka \kax \ka \kax \kax \ka \kax \ka \ka \kax |
		}
		\repeat volta 2 {
			\kax \ka \kax \ka \ka \kax \kax \ka \kax \ka \ka \kax |
			\kax \ka \kax \ka \kax \ka \kax \ka \kax \ka \ka \kax |
			\kax \ka \kax \ka \ka \kax \kax \ka \kax \ka \ka \kax |
		}
		\alternative {
			{ \kax \ka \kax \ka \kax \ka \kax ss4 ss8 ss8 \kax | }
			{ \kax \ka \kax \ka \kax \ka \khpx | }
		}
        }
}

KleineTrommel = {
        \time 12/8
	\tempo 4 = 180
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "KleineTrommel" \KleineTrommelNoten
}

\score {
        \header {
                piece = "IX (EinsZweiDreiVierDie)"
        }

	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

