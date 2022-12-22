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

GroßeTrommelNoten = {
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

GroßeTrommelNotenSechzehntel = {
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

GroßeTrommel = {
        \tempo 4 = 100
	\set DrumStaff.instrumentName = "Grosse Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \new DrumVoice = "GrosseTrommel" \GroßeTrommelNoten
}

GroßeTrommelSechzehntel = {
        \tempo 4 = 100
	\set DrumStaff.instrumentName = "Sechzehntel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \new DrumVoice = "GrosseTrommelSechzehntel" \GroßeTrommelNotenSechzehntel
}

\score {
        \header {
                piece = "XII"
        }
	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
                \new DrumStaff << \GroßeTrommel >>
                \new DrumStaff << \GroßeTrommelSechzehntel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

