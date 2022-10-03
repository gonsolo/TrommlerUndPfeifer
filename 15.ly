KleineTrommelNoten = {
        \drummode {
                tommh8 tommh8 tommh8 tommh8 tommh8. tommh8. r8 |
                tommh8 tommh8 tommh8 tommh8 tommh8. tommh8. r8 |
                tommh8 tommh8 tommh8 tommh8 tommh8. tommh8. r8 |
                tommh8. tommh8. r8 tommh8. tommh8. r8 |
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
}

GrosseTrommel = {
	\set Staff.instrumentName = "Große Trommel"
	\set Staff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \new DrumVoice = "GrosseTrommel " \GrosseTrommelNoten
}

\score {
        \header {
                piece = "XV (TODO)"
        }
	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
                %\new DrumStaff << \GrosseTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	\midi {}
}

