TeilEins = {
        \drummode {
                \repeat volta 8 {
                        \ksx \ks  \ks  \ksx
                        \ks  \ks  \ksx \ks
                        \ks  \ksx \ks  \ks
                        \ksx \ks  \ks  \ksx

                        \ksx \ks \ks  \ksx
                        \ksx \ks \ks  \ksx
                        \ksx \ks \ksx \ks
                        \ksx \ks \ksx \ks
                }
                \repeat volta 4 {
                        ss8.
                        ss8.
                        ss8.
                        ss8.
                        ss8. ss16

                        ss8. ss16
                        ss8. ss16
                        ss8 ss8 ss8 ss8
                }
                \repeat volta 8 {
                        \ks  \ks \ksx \ks
                        \ks  \ksx \ks  \ks
                        \ksx \ks \ks  \ksx
                        \ks  \ks \ksx \ks

                        \ks  \ksx \ksx \ks
                        \ks  \ksx \ksx \ks
                        \ks  \ksx \ks \ksx
                        \ks  \ksx \ks \ksx
                }
                \kg
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
                piece = "XXI"
        }
	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

