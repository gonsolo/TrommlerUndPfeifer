KleineTrommelNoten = {
        \drummode {
		\repeat volta 2 {
			\kvp \kvp \kvp \kv \ka |
			\kvp \kvp \kvp \kv \ka |
			\kvp \kvp \kvp \kv \ka |
			\kv \ka ~ \kv \ka \kv \ka ~ \kv \ka |
			\kv \ka \ka \ka \ka \khp
		}
		\repeat volta 2 {
			\kvp \kv \ka \kv \ka r4. |
			\kvp \kv \ka \kv \ka r4. |
			\kvp \kvp \kvp \kvp |
			\kvp \kv \ka \kv \ka r4 \ka |
		}
		\repeat volta 2 {
			\kv \ka r4 \ka \kv \ka r4 \ka |
			\kv \kv \kv \kv \kvp \ka |
			\kv \ka r4 \ka \kv \ka r4 \ka |
		}
		\alternative {
			{ \kv \kv \kv \ka ss4 ss8 ss8 \ka | }
			{ \kv \kv \kv \khp | }
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
                piece = "IX"
        }

	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

