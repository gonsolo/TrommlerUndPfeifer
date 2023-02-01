KleineTrommelNoten = {
        \drummode {
                \kvp \kvp \kv
                \kvp \kvp \kv
                \kvp \kvp \kv
                \kv \kv \kv \kv

                \repeat volta 4 {
                        \kvp \kvp \kv
                        \kvp \kvp \kv
                        \kvp \kvp \kv
                        \kv \kv \kv \kv
                }

                \ks\< \ks \ks \ks \ks \ks \ks \ks
                \ks \ks \ks \ks \ks \ks \ks \ks
                \ks \ks \ks \ks \ks \ks \ks \ks
                \ks \ks \ks \ks \ks \ks \ks \ks\!
                \kg
        }
}

GrosseTrommelNoten = {
        \drummode {
                r1
                r1
                r1
                r1
        }

        \repeat volta 4 {
                \gax \ga \ga \gax \ga \ga \gax \ga
                \gax \ga \ga \gax \ga \ga \gax \ga
                \gax \ga \ga \gax \ga \ga \gax \ga
        }
        \alternative {
                {
                        \gax \gs \gs \gs \gs \gs \gs
                        \gax \gs \gs \gs \gs \gs \gs
                }
                {
                        \gs\< \gs \gs \gs \gs \gs \gs \gs
                        \gs \gs \gs \gs \gs \gs \gs \gs
                        \gs \gs \gs \gs \gs \gs \gs \gs
                        \gs \gs \gs \gs \gs \gs \gs \gs\!
                        \gg
                }
        }

}

KleineTrommel = {
        \tempo 4 = 140
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "KleineTrommel" \KleineTrommelNoten
}

GrosseTrommel = {
	\set Staff.instrumentName = "Große Trommel"
	\set Staff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \new DrumVoice = "GrosseTrommel " \GrosseTrommelNoten
}

\score {
        \header {
                piece = "VI (EinsUndVier)"
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

