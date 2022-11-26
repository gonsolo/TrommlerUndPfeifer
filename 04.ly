KleinEins = \drummode {
        \khp \kv
        \kg
        \kvp \kv \kv \ka
        \kg
}

Pferd = \drummode {
        \ka_"Pferd" \ks \ks
        \ka \ks \ks
        \ka \ks \ks
        \ka \ks \ks
}

Schluss = \drummode {
        \khp_"Schluss" \kv
        \kg
        \kvp \kv \kvp
        \kvp \kv \kvp
        \kvp \kv \kv \ka
        \kg
}

KleineTrommelNoten = {
        \repeat volta 4 {
                \KleinEins
        }
        \repeat volta 4 {
                \Pferd
        }
        \Schluss
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
        \ga \gs \gs
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
                piece = "IV"
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

