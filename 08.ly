KleineTrommelNoten = {
        \drummode {
                tommh16 tommh16 tommh16 tommh16
                r4
                tommh16 tommh16 tommh16 tommh16
                r4
                |
                tommh16 tommh16 tommh16 tommh16
                r4
                tommh4
                tommh16 tommh16 tommh16 tommh16
                |
        
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

GrossEins = \drummode {
        tomfh8 tomfh16 tomfh16
        tomfh4
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
                piece = "VIII (TODO: Alles)"
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
