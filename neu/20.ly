ErsteStimmeNoten = {
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

ErsteStimme = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "Erste Stimme"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "ErsteStimme" \ErsteStimmeNoten
}

ZweiteStimmeNoten = {
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

ZweiteStimme = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "Zweite Stimme"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "Zweite Stimme" \ZweiteStimmeNoten
}

\score {
        \header {
                piece = "XX (Snareübung mit zwei Stimmen)"
        }
	\new StaffGroup <<
                \new DrumStaff << \ErsteStimme >>
                \new DrumStaff << \ZweiteStimme>>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

