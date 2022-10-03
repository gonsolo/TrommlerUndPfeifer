KleinEins = \drummode {
}

KleineTrommelNoten = {
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

GrossZwei = \drummode {
        tomfh8 tomfh16 tomfh16
        tomfh8 tomfh8
}

GrossDrei = \drummode {
        tomfh4.
        tomfh16 tomfh16
}

GrossVier = \drummode {
        tomfh8 tomfh8
        tomfh8 tomfh16 tomfh16
}

GrossFuenf = \drummode {
        tomfh8 tomfh8
        tomfh16 tomfh16 tomfh16 tomfh16
}

GrossSechs = \drummode {
        tomfh2
}

GrosseTrommelNoten = {
        \GrossEins \GrossEins | \GrossZwei \GrossEins |
        \GrossEins \GrossEins | \GrossZwei \GrossDrei |
        \GrossVier \GrossVier | \GrossFuenf \GrossVier |
        \GrossVier \GrossVier | \GrossFuenf \GrossSechs |
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
                piece = "II (TODO)"
        }
	\new StaffGroup <<
                %\new DrumStaff << \global \KleineTrommel >>
                \new DrumStaff << \GrosseTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

