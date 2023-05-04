ErsteStimme = {
        \drummode {
		\ka ss8 ss8 \ka ss8 \ka
        }
}

ErsteStimmeNoten = {
	\ErsteStimme
	\ErsteStimme
}

ErsteStimme = {
        %\tempo 4 = 120
	\time 6/8
	\set DrumStaff.instrumentName = "Erste Stimme"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "ErsteStimme" \ErsteStimmeNoten
}

ZweiteStimmeNoten = {
        \drummode {
		r2.
		\ghp
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
                piece = "Tourdion"
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
