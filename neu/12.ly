ErsteStimmeNoten = {
        \drummode {
                \partial 8 \ka
                \repeat volta 16 {
                        \kap \kap \ka \kap \kap \ka
		}
                \repeat volta 4 {}
                \alternative {
                        { ss8. ss8. ss8 ss8. ss8. ss8 }
                        { ss8. ss8. ss8 ss8. ss8. \ka }
                }
		\repeat volta 4 {
			\kv ss4 ss4 ss8 \tuplet 3/2 { \ks \ks \ks }
		}
		\repeat volta 4 {
			\kv ss8 \tuplet 3/2 { \ks \ks \ks } \kv ss8 \tuplet 3/2 { \ks \ks \ks }
		}
		\kg
        }
}

ZweiteStimmeNoten = {
        \drummode {
                \partial 8 \ga
                \repeat volta 16 {
                        \gap \gap \ga \ga \gs \gs \ga \ga
		}
                \repeat volta 4 {}
                \alternative {
                        { ss8. ss8. ss8 ss8 ss16 ss16 ss8 ss8 }
                        { ss8. ss8. ss8 ss8 ss16 ss16 ss8 \ga }
                }
		\repeat volta 4 {
			\kv ss4 ss4 ss4
		}
		\repeat volta 4 {
			ss8 \tuplet 3/2 { \ks \ks \ks } \kv ss8 \tuplet 3/2 { \ks \ks \ks } \kv
		}
		\kg
	}
}

DritteStimmeNoten = {
        \drummode {
                \partial 8 \ga
                \repeat volta 16 {
                        \gsx \gs \gs \gsx \gs \gs \gsx \gs \gs \gs \gsx \gs \gsx \gs \gs \gs
		}
                \repeat volta 4 {}
                \alternative {
                        { ss8. ss8. ss8 ss8 ss16 ss16 ss8 ss8 }
                        { ss8. ss8. ss8 ss8 ss16 ss16 ss8 \ga }
                }
		\repeat volta 4 {
			\kv ss4 ss4 ss8 \tuplet 3/2 { \ks \ks \ks }
		}
		\repeat volta 4 {
			\kv ss8 \tuplet 3/2 { \ks \ks \ks } \kv ss8 \tuplet 3/2 { \ks \ks \ks }
		}
		\kg
 }
}

ErsteStimme = {
        \tempo 4 = 100
	\set DrumStaff.instrumentName = "Erste Stimme"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \new DrumVoice = "ErsteStimme" \ErsteStimmeNoten
}

ZweiteStimme = {
        \tempo 4 = 100
	\set DrumStaff.instrumentName = "Zweite Stimme"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \new DrumVoice = "GrosseTrommel" \ZweiteStimmeNoten
}

DritteStimme = {
        \tempo 4 = 100
	\set DrumStaff.instrumentName = "Dritte Stimme"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \new DrumVoice = "DritteStimme" \DritteStimmeNoten
}

\score {
        \header {
                piece = "XII"
        }
	\new StaffGroup <<
                \new DrumStaff << \ErsteStimme >>
                \new DrumStaff << \ZweiteStimme >>
                \new DrumStaff << \DritteStimme>>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

