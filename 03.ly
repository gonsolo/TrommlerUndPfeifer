KleinEins = \drummode {
}

KleineTrommelNoten = {
}

KleineTrommel = {
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "KleineTrommel" \KleineTrommelNoten
}

GrossEins = \drummode {
	tomfh4 \ga ~
	\gvp
	tomfh2.
}

GrossZwei = \drummode {
}

GrosseTrommelNoten = {
        \GrossEins | \GrossEins | \GrossEins | \GrossEins 
}

GrosseTrommel = {
	\tempo 4 = 180
        \time 12/8
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
                %\new DrumStaff << \KleineTrommel >>
                \new DrumStaff << \GrosseTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

