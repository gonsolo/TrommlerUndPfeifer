KleineTrommelNoten = {
        \drummode {
                \partial 8 \ka
                \repeat volta 16 {}
                \alternative {
                        { \kap \kap \ka \kap \kap \ka }
                        { \kap \kap \ka \kap \kap ss8 }
                }
                \repeat volta 4 {}
                \alternative {
                        { ss8. ss8. ss8 ss8. ss8. ss8 }
                        { ss8. ss8. ss8 ss8. ss8. \ka }
                }
                \repeat volta 16 {}
                \alternative {
                        { \kap \kap \ka \kap \kap \ka }
                        { \kap \kap \ka \kap \kap ss8 }
                }
                ss8. ss8. ss8 ss8 ss16 ss16 ss4
        }
}

Gro├čeTrommelNoten = {
        \drummode {
                \partial 8 \ga
                \repeat volta 16 {}
                \alternative {
                        { \gap \gap \ga \ga \gs \gs \ga \ga }
                        { \gap \gap \ga \ga \gs \gs \ga ss8 }
                }
                \repeat volta 4 {}
                \alternative {
                        { ss8. ss8. ss8 ss8 ss16 ss16 ss8 ss8 }
                        { ss8. ss8. ss8 ss8 ss16 ss16 ss8 \ga }
                }
                \repeat volta 16 {}
                \alternative {
                        { \gap \gap \ga \ga \gs \gs \ga \ga }
                        { \gap \gap \ga \ga \gs \gs \ga ss8 }
                }
                ss8. ss8. ss8 ss8 ss16 ss16 ss4
        }
}

Gro├čeTrommelNotenSechzehntel = {
        \drummode {
                \partial 8 \ga
                \repeat volta 16 {}
                \alternative {
                        { \gsx \gs \gs \gsx \gs \gs \gsx \gs \gs \gs \gsx \gs \gsx \gs \gs \gs }
                        { \gsx \gs \gs \gsx \gs \gs \gsx \gs \gs \gs \gsx \gs \gsx \gs ss8 }
                }
                \repeat volta 4 {}
                \alternative {
                        { ss8. ss8. ss8 ss8 ss16 ss16 ss8 ss8 }
                        { ss8. ss8. ss8 ss8 ss16 ss16 ss8 \ga }
                }
                \repeat volta 16 {}
                \alternative {
                        { \gsx \gs \gs \gsx \gs \gs \gsx \gs \gs \gs \gsx \gs \gsx \gs \gs \gs }
                        { \gsx \gs \gs \gsx \gs \gs \gsx \gs \gs \gs \gsx \gs \gsx \gs ss8 }
                }
                ss8. ss8. ss8 ss8 ss16 ss16 ss4
        }
}

KleineTrommel = {
        \tempo 4 = 100
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \new DrumVoice = "KleineTrommel" \KleineTrommelNoten
}

Gro├čeTrommel = {
        \tempo 4 = 100
	\set DrumStaff.instrumentName = "Grosse Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \new DrumVoice = "GrosseTrommel" \Gro├čeTrommelNoten
}

Gro├čeTrommelSechzehntel = {
        \tempo 4 = 100
	\set DrumStaff.instrumentName = "Sechzehntel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \new DrumVoice = "GrosseTrommelSechzehntel" \Gro├čeTrommelNotenSechzehntel
}

\score {
        \header {
                piece = "XII"
        }
	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
                \new DrumStaff << \Gro├čeTrommel >>
                \new DrumStaff << \Gro├čeTrommelSechzehntel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

