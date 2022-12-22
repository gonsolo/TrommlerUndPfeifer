TeilEins = {
        \drummode {
                \repeat volta 2 {
                        \kvp \kvp r4
                        r1
                }
                \ks \ks r4 \ks \ks r4 r4
                r1
                \ks \ks r4 \ks \ks r4 ss4

                \repeat volta 8 {
                        \ksx \ks \ks \ks \ks \ks \ksx \ks \ks \ks \ks \ks \ksx \ks \ks \ks
                        \ksx \ks \ks \ks \ks \ks \ks \ks \ksx \ks \ks \ks \ks \ks \ks \ks
                }

                \kg
                \repeat volta 7 {
                        r1
                }

                \repeat volta 8 {
                        \ksx \ks \ks \ks \ks \ks \ksx \ks \ks \ks \ks \ks \ksx \ks \ks \ks
                        \ksx \ks \ks \ks \ks \ks \ks \ks \ksx \ks \ks \ks \ks \ks \ks \ks
                }

                \ksx \ks \ks 
                \ksx \ks \ks 
                \ksx \ks \ks 
                \ksx \ks \ks 
                \ksx \ks \ks 
                \ksx \ks \ks 
                \ksx \ks \ks 
                \ksx \ks \ks 
                \khx

        }
}

KleineTrommelNoten = {
	\TeilEins
}

KleineTrommel = {
        \tempo 4 = 100
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "KleineTrommel" \KleineTrommelNoten
}

\score {
        \header {
                piece = "XVI (TODO)"
        }
	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

