KleinAuftakt = \drummode {
        \partial 4 tommh16 tommh16 tommh16 tommh16
}

KleinEins = \drummode {
        tommh4
        tommh4
        tommh4
	tommh16 tommh16 tommh16 tommh16
}

KleinZwei = \drummode {
        tommh8 tommh8 \accent
	tommh16 tommh16 tommh16 tommh16
        tommh8 tommh8 \accent
	tommh16 tommh16 tommh16 tommh16
}

KleinDrei = \drummode {
        tommh1
}

GrossAuftakt = \drummode {
        \partial 4 tomfh16 tomfh16 tomfh16 tomfh16
}

GrossEins = \drummode {
        tomfh8 tomfh16 tomfh16
        tomfh8 tomfh16 tomfh16
        tomfh8 tomfh16 tomfh16
	tomfh16 tomfh16 tomfh16 tomfh16
}

GrossZwei = \drummode {
        tomfh8 tomfh8
	tomfh16 tomfh16 tomfh16 tomfh16
        tomfh8 tomfh8
	tomfh16 tomfh16 tomfh16 tomfh16
}

GrossDrei = \drummode {
        tomfh1
}

KleineTrommelNoten = {
        \KleinAuftakt |
        \repeat volta 4 {
                \KleinEins | \KleinEins | \KleinZwei |
        }
        \alternative {
                { \KleinEins }
                { \KleinDrei }
        }
}

GrosseTrommelNoten = {
        \GrossAuftakt |
        \repeat volta 4 {
                \GrossEins | \GrossEins | \GrossZwei |
        }
        \alternative {
                { \GrossEins }
                { \GrossDrei }
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

