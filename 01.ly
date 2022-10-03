KleinEins = \drummode {
	tommh16 tommh16 tommh16 tommh16
        tommh4
        tommh4
        tommh4
}

KleinZwei = \drummode {
	tommh16 tommh16 tommh16 tommh16
        tommh8 tommh8
	tommh16 tommh16 tommh16 tommh16
        tommh8 tommh8
}

KleinDrei = \drummode {
	tommh16 tommh16 tommh16 tommh16
        tommh2.
}

GrossEins = \drummode {
	tomfh16 tomfh16 tomfh16 tomfh16
        tomfh8 tomfh16 tomfh16
        tomfh8 tomfh16 tomfh16
        tomfh8 tomfh16 tomfh16
}

GrossZwei = \drummode {
	tomfh16 tomfh16 tomfh16 tomfh16
        tomfh8 tomfh8
	tomfh16 tomfh16 tomfh16 tomfh16
        tomfh8 tomfh8
}

GrossDrei = \drummode {
	tomfh16 tomfh16 tomfh16 tomfh16
        tomfh2.
}

KleineTrommelNoten = {
        \KleinEins | \KleinEins | \KleinZwei | \KleinEins |
        \KleinEins | \KleinEins | \KleinZwei | \KleinEins |
        \KleinEins | \KleinEins | \KleinZwei | \KleinEins |
        \KleinEins | \KleinEins | \KleinZwei | \KleinDrei |
}

GrosseTrommelNoten = {
        \GrossEins | \GrossEins | \GrossZwei | \GrossEins |
        \GrossEins | \GrossEins | \GrossZwei | \GrossEins |
        \GrossEins | \GrossEins | \GrossZwei | \GrossEins |
        \GrossEins | \GrossEins | \GrossZwei | \GrossDrei |
}

KleineTrommel = {
	\tempo 4 = 120
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "KleineTrommel" \KleineTrommelNoten
}

GrosseTrommel = {
	\set Staff.instrumentName = "Große Trommel"
	\set Staff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \new DrumVoice = "GrosseTrommel " \GrosseTrommelNoten
}

\score {
        \header {
                piece = "I"
        }
	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
                \new DrumStaff << \GrosseTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

