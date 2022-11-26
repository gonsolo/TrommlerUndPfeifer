KleinAuftakt = \drummode {
        \partial 4 \ks \ks \ks \ks
}

KleinEins = \drummode {
        \kv
        \kv
        \kv
	\ks \ks \ks \ks
}

KleinZwei = \drummode {
        \ka \ka \accent
	\ks \ks \ks \ks
        \ka \ka \accent
	\ks \ks \ks \ks
}

KleinDrei = \drummode {
        \kg
}

GrossAuftakt = \drummode {
        \partial 4 \gs \gs \gs \gs
}

GrossEins = \drummode {
        tomfh8 \gs \gs
        tomfh8 \gs \gs
        tomfh8 \gs \gs
	\gs \gs \gs \gs
}

GrossZwei = \drummode {
        tomfh8 tomfh8
	\gs \gs \gs \gs
        tomfh8 tomfh8
	\gs \gs \gs \gs
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

