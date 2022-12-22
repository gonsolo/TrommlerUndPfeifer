KleineTrommelNoten = {
        \drummode {
        \time 7/4
                \ks \ks \ks \ks
                r4
                \ks \ks \ks \ks
                r4
                \ks \ks \ks \ks
                r4
                \ka r8
                |

        \time 4/4
                \kvp \kvp \ks \ks \ks \ks
                \kvp \kvp \ks \ks \ks \ks
                \kvp \kvp \ks \ks \ks \ks
                \tuplet 3/2 { r4 \kv r4 }
                \tuplet 3/2 { \kv r4 \kv }
        }
}

GrosseTrommelNoten = {
        \drummode {
        \time 7/4
                r4
                \ks \ks \ks \ks
                r4
                \ks \ks \ks \ks
                r4
                \ks \ks \ks \ks
                r8 \ka
                |
        }
}

KleineTrommel = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
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
                piece = "VIII (TODO: Alles)"
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

