KleineTrommelNoten = {
        \drummode {
                \kvp \kvp \kv
                \kvp \kvp \kv
                \kvp \kvp \kv
                \kv \kv \kv \kv
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
        \ga \gs \gs
        \gv
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
                piece = "VI (TODO: Wirbelschluss)"
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

