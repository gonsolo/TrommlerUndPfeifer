KleineTrommelNoten = {
        \drummode {
                \repeat volta 4 {
                        \ka \ka \ka \ka \kap \kap r8 |
                        \ka \ka \ka \ka \kap \kap r8 |
                        \ka \ka \ka \ka \kap \kap r8 |
                        \kap \kap r8 \kap \kap r8 |
                }
                \repeat volta 8 {
                        ss8 \ks \ka \ks \ka ss8 \ks \ka \ks \ka
                }
                \repeat volta 8 {
                        \kax \ks \ka \ks \ka ss8 \ks \ka \ks \ka
                }
                \alternative {
                        {
                                ss8 \ks \ka \ks \ka ss8 \ks \ka \ks \ka
                        }
                        {
                                \time 2/4
                                ss8 \ks \ka \ks \ka
                                ss16 \ka \ks
                                \ks \ka \ks
                                \ks \ka \ks
                                \ks \ka \ks
                                \ks \ka \ks
                                \ks \ka \ks
                                \time 4/4
                        }
                }
                \repeat volta 4 {
                        \ka \ka \ka \ka \kap \kap r8 |
                        \ka \ka \ka \ka \kap \kap r8 |
                        \ka \ka \ka \ka \kap \kap r8 |
                        \ks \ka \ks \ks \ka \ks \ks \ka \ks \ks \ka \ks |
                }
                \kg
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
}

GrosseTrommel = {
	\set Staff.instrumentName = "Große Trommel"
	\set Staff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \new DrumVoice = "GrosseTrommel " \GrosseTrommelNoten
}

\score {
        \header {
                piece = "XV"
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

