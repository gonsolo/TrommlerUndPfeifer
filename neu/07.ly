AlleNoten = {
        \drummode {
                \kax\< \ka \ka \ka \ka  \ka \ka  \kax\!
                \kax  \ka \ka \ka \ka  \ka \ka  \kax
                \kax  \ka \ka \ka \ka  \ka \ka  \kax
                \kax  \ka \ka \ka \kax \ka \kax \ka

                \kax \ka \ka \ka \ka \ka \ka \ks \ks
                \kax \kax \kax \kax \kax \kax \kax \ks \ks
                \kax \kax \kax \kax \kvx \kax \ks \ks
                \kax \kax \kax \ks \ks \kax \kax \kax \ks \ks

                \kax \kax \kax \kax \kax \kax \kax \kax

                \kax \ks \ks \kvx

                r8 \ks \ks \ks \ks \ks \ks
                \ks \ks \ks \ks \ka \ks \ks
                \ka \ks \ks \ka \ks \ks
                \ks \ks \ks \ks \ks \ks \ks \ks
                \ka \ks \ks \ks \ks \ks \ks
                \ks \ks \ks \ks \ka \ks \ks
                \ka \ks \ks \ka \ks \ks

                \time 2/4
                \ks \ks \ks \ks \ks \ks \ks \ks

                \time 4/4
                \kax \ka \ka \ka \ka \ka \ka  \kax
                \kax \ks \ks \ka \ka \ka \ka \ka  \kax
                \kax \ks \ks \ka \ka \kvx \kvx
                \time 3/4
                \kvx r4-"Ho" r4-"Hei"

                \time 4/4
                \repeat volta 3 {
                        \kvx-"3x" \kvx \kvx \kvx
                }

                \repeat volta 2 {
                        \ks \ks \ks \ks \ks \ks \ks \ks \ka \ka \ka \ka
                        \ks \ks \ks \ks \ks \ks \ks \ks \ka \ka \ka \ka
                        \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks 
                        \ks \ks \ks \ks \ks \ks \ks \ks \ka \ka \ka \ka
                }

                \ka \ks \ks \ka \ka \ka \ks \ks \ka \ka
                \kv \kv \kh-"Fine"

                \kh-"Solo sostenuto" \kv \kv
                \kh \kh
                \kv \kv \kh
        }
}

Alle = {
        \tempo 4 = 140
	\set DrumStaff.instrumentName = "Alle"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "Alle" \AlleNoten
}

\score {
        \header {
                piece = "VII"
        }
	\new StaffGroup <<
                \new DrumStaff << \Alle >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

