ErsteStimmeNoten = \relative {
	\drummode {
		r1
	}
}

ErsteStimme = {
        %\tempo 4 = 120
	\time 4/4
	\set DrumStaff.instrumentName = "Erste Stimme"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "ErsteStimme" \ErsteStimmeNoten
}

ZweiteStimmeNoten = {
        \drummode {
		r1
        }
}

ZweiteStimme = {
	\time 6/8
	\set DrumStaff.instrumentName = "Zweite Stimme"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "Zweite Stimme" \ZweiteStimmeNoten
}

\score {
        \header {
                piece = "To Heaven"
        }
	\new StaffGroup <<
		\time 6/8
                \new DrumStaff << \ErsteStimme >>
                \new DrumStaff << \ZweiteStimme>>
	>>
	\layout {
                indent = 4.0\cm
        }
}

