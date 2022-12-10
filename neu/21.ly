TeilEins = {
        \drummode {
                \repeat volta 8 {
                        \ksx \ks  \ks  \ks
                        \ks  \ks  \ksx \ks
                        \ks  \ks  \ks  \ks
                        \ksx \ks  \ks  \ks |
                }
        }
}

KleineTrommelNoten = {
	\TeilEins
}

KleineTrommel = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "KleineTrommel" \KleineTrommelNoten
}

\score {
        \header {
                piece = "XXI (TODO)"
        }
	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

