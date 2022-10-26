KleineTrommelNoten = {
        \drummode {
                tommh8 tommh8 tommh8 tommh8
                tommh8 tommh8 tommh8 tommh8 \accent
                tommh8 \accent tommh8 tommh8 tommh8
                tommh8 tommh8 tommh8 tommh8 \accent
                tommh8 \accent tommh8 tommh8 tommh8
                tommh8 tommh8 tommh8 tommh8 \accent
                tommh8 \accent tommh8 tommh8 tommh8
                tommh8 \accent tommh8 tommh8 \accent tommh8
        }
}

KleineTrommel = {
        \tempo 4 = 140
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
        \tempo 4 = 120
	\set Staff.instrumentName = "Große Trommel"
	\set Staff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \new DrumVoice = "GrosseTrommel " \GrosseTrommelNoten
}

\score {
        \header {
                piece = "VII (TODO: Alles)"
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

