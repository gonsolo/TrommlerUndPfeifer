global = {
        \time 4/4
	\tempo 4 = 120
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

KleineTrommelNoten = {
        \KleinEins | \KleinEins | \KleinZwei | \KleinEins |
        \KleinEins | \KleinEins | \KleinZwei | \KleinEins |
        \KleinEins | \KleinEins | \KleinZwei | \KleinEins |
        \KleinEins | \KleinEins | \KleinZwei | \KleinDrei |
}

KleineTrommel = {
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "KleineTrommel" \KleineTrommelNoten
}

GrosseTrommelNoten = {
        \GrossEins | \GrossEins | \GrossZwei | \GrossEins |
        \GrossEins | \GrossEins | \GrossZwei | \GrossEins |
        \GrossEins | \GrossEins | \GrossZwei | \GrossEins |
        \GrossEins | \GrossEins | \GrossZwei | \GrossDrei |
}

GrosseTrommel = {
	\set Staff.instrumentName = "Große Trommel"
	\set Staff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \new DrumVoice = "GrosseTrommel " \GrosseTrommelNoten
}

\score {
        \header {
                piece = "II"
        }
	\new StaffGroup <<
                \new DrumStaff << \global \KleineTrommel >>
                \new DrumStaff << \global \GrosseTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

