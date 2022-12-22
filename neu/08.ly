ErsteStimmeNoten = {
        \drummode {
                \time 7/4
                \repeat volta 2 {
                        \ks \ks \ks \ks
                        r4
                        \ks \ks \ks \ks
                        r4
                        \ks \ks \ks \ks
                        r4
                        \ka r8
                        |
                }

                \time 4/4
                \kvp \kvp \ks \ks \ks \ks
                \kvp \kvp \ks \ks \ks \ks
                \kvp \kvp \ks \ks \ks \ks
                \tuplet 3/2 { r4 \kv r4 } \tuplet 3/2 { \kv r4 \kv }

                r8 \ks \ks \ka r8 \ks \ks \ka r4
                r8 \ks \ks \ka r8 \ks \ks \ka r4
                r8 \ks \ks \ka r8 \ks \ks \ka r4
                \tuplet 3/2 { r4 \kv r4 } \tuplet 3/2 { \kv r4 \kv }
        }
}

ZweiteStimmeNoten = {
        \drummode {
                \time 7/4
                \repeat volta 2 {
                        r4
                        \gs \gs \gs \gs
                        r4
                        \gs \gs \gs \gs
                        r4
                        \gs \gs \gs \gs
                        r8 \ga
                        |
                }

                \time 4/4
                r8 \gs \gs \ga r8 \gs \gs \ga r4
                r8 \gs \gs \ga r8 \gs \gs \ga r4
                r8 \gs \gs \ga r8 \gs \gs \ga r4
                \tuplet 3/2 { \gv r4 \gv } \tuplet 3/2 { r4 \gv r4 }

                \gvp \gvp \gs \gs \gs \gs
                \gvp \gvp \gs \gs \gs \gs
                \gvp \gvp \gs \gs \gs \gs
                \tuplet 3/2 { \gv r4 \gv } \tuplet 3/2 { r4 \gv r4 }
        }
}

ErsteStimme = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "Erste Stimme"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \new DrumVoice = "ErsteStimme" \ErsteStimmeNoten
}

ZweiteStimme = {
	\set Staff.instrumentName = "Zweite Stimme"
	\set Staff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \new DrumVoice = "ZweiteStimme" \ZweiteStimmeNoten
}

\score {
        \header {
                piece = "VIII"
        }
        %\unfoldRepeats { % for midi
	\new StaffGroup <<
                \new DrumStaff << \ErsteStimme >>
                \new DrumStaff << \ZweiteStimme >>
	>>
        %}

	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

