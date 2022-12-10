KleineTrommelNoten = {
        \drummode {
                \repeat volta 4 {
                        \kg
                }
                \repeat volta 4 {
                        \kv r4 r4 \kv
                }
                \repeat volta 4 {
                        \kv \kv r4 \kv
                }
                \repeat volta 4 {
                        \kv \ka \ka r4 \kv
                }
                \ka \ka r4 \ka \ka r4
                \ka \ka r4 \ka \ka r4
                \kv \kv \kv \kv
                \kv \kv \kv \kv
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

GrosseTrommelNoten = {
        \drummode {
                \repeat volta 4 {
                        r4 \gv \gv \gv
                }
                \repeat volta 4 {
                        r4 \gv \gv r4
                }
                \repeat volta 4 {
                        r2 \ga \ga r4
                }
                \repeat volta 4 {
                        \gh \ga \ga r4
                }
                r4\> \ga \ga r4 \ga \ga
                r4   \ga \ga r4 \ga \ga\!
                \ga\< \ga \ga \ga \ga \ga \ga \ga
                \ga   \ga \ga \ga \ga \ga \ga \ga\!
        }
}

GrosseTrommel = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "Grosse Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "GrosseTrommel" \GrosseTrommelNoten
}

\score {
        \header {
                piece = "XX (TODO)"
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

