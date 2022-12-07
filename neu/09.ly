KleineTrommelNoten = {
        \drummode {
                \kvp \kvp \kvp \kv \ka |
                \kvp \kvp \kvp \kv \ka |
                \kvp \kvp \kvp \kv \ka |
                \kv \ka ~ \kv \ka \kv \ka ~ \kv \ka |
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

GrossEins = \drummode {
}

GrossZwei = \drummode {
}

GrosseTrommelNoten = {
        \GrossEins | \GrossEins | \GrossEins | \GrossEins 
}

GrosseTrommel = {
	\set Staff.instrumentName = "Große Trommel"
	\set Staff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \new DrumVoice = "GrosseTrommel " \GrosseTrommelNoten
}

\score {
        \header {
                piece = "IX (TODO)"
        }

	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
                %\new DrumStaff << \GrosseTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

