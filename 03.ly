KleinEins = \drummode {
        \tuplet 3/2 { \ka[ r8 \ka] ~ } \kv \kh
}

KleineTrommelNoten = {
        \repeat volta 4 {
                \KleinEins
        }
        \alternative {
                \KleinEins

        }
}

KleineTrommel = {
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "KleineTrommel" \KleineTrommelNoten
}

GrossEins = \drummode {
        \repeat volta 4 {}
        \alternative {
                { r1 }
                { r2 r4 \gv }
        }
}

GrossZwei = \drummode {
}

GrosseTrommelNoten = {
        \GrossEins
}

GrosseTrommel = {
	\tempo 4 = 120
        \time 4/4
	\set Staff.instrumentName = "Große Trommel"
	\set Staff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \new DrumVoice = "GrosseTrommel " \GrosseTrommelNoten
}

\score {
        \header {
                piece = "III (TODO: Schluss!)"
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

