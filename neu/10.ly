Pause = {
	r1 r1 r1 r1
}

ErsteStimmeNoten = {
        \drummode {
		\repeat unfold 6 {
			\kvp \ka \kh |
			\kvp \ka \kh |
			\kvp \ka \kh |
			\kvp \ka \kh |
		}
        }
}

ZweiteStimmeNoten = {
        \drummode {
		\Pause
		\repeat unfold 5 {
			\ka \ks \ks \ka \ka \kh |
			\ka \ks \ks \ka \ka \kh |
			\ka \ks \ks \ka \ka \kh |
			\ka \ks \ks \ka \ka \kh |
		}
        }
}

DritteStimmeNoten = {
        \drummode {
		\Pause
		\Pause
		\repeat unfold 4 {
			\ka \ks \ks \ka \ka  \ks \ka \ks \ka \ka |
			\ka \ks \ks \ka \ka  \ks \ks \ks \ks \ka \ka |
			\ka \ks \ks \ka \ka  \ks \ka \ks \ka \ka |
			\ks \ka \ks \ka \ka  \kh |
		}
        }
}

VierteStimmeNoten = {
        \drummode {
		\Pause
		\Pause
		\Pause
		\Pause
		\repeat unfold 2 {
			\ka \ks \ka \ks \ka \ks \ka \ks \ka \ka |
			\ka \ks \ka \ks \ka \ks \ks \ks \ks \ka \ka |
			\ka \ks \ka \ks \ka \ks \ka \ks \ka \ka |
		}
		\alternative {
			{ \ks \ka \ks \ka \ka \tuplet 3/2 { \ka \ka \ka } \tuplet 3/2 { \ka \ka \ka } }
			{ \ks \ka \ks \ka \ka \kh }
		}
        }
}

ErsteStimme = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "I"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "ErsteStimme" \ErsteStimmeNoten
}

ZweiteStimme = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "II"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "ZweiteStimme" \ZweiteStimmeNoten
}

DritteStimme = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "III"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "DritteStimme" \DritteStimmeNoten
}

VierteStimme = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "IV"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "VierteStimme" \VierteStimmeNoten
}

\score {
        \header {
                piece = "X"
        }
	\new StaffGroup <<
                \new DrumStaff << \ErsteStimme>>
                \new DrumStaff << \ZweiteStimme>>
                \new DrumStaff << \DritteStimme>>
                \new DrumStaff << \VierteStimme>>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

