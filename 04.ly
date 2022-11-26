KleinEins = \drummode {
        tommh2. tommh4
        tommh1
        tommh4. tommh4 tommh4 \ka
        tommh1
}

Pferd = \drummode {
        \ka_"Pferd" \ks \ks
        \ka \ks \ks
        \ka \ks \ks
        \ka \ks \ks
}

Schluss = \drummode {
        tommh2._"Schluss" tommh4
        tommh1
        tommh4. tommh4 tommh4.
        tommh4. tommh4 tommh4.
        tommh4. tommh4 tommh4 \ka
        tommh1
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

