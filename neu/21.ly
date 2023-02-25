TeilEins = {
        \drummode {
                \repeat volta 8 {
                        \ksx \ks  \ks  \ksx
                        \ks  \ks  \ksx \ks
                        \ks  \ksx \ks  \ks
                        \ksx \ks  \ks  \ksx

                        \ksx \ks \ks  \ksx
                        \ksx \ks \ks  \ksx
                        \ksx \ks \ksx \ks
                        \ksx \ks \ksx \ks
                }
	}
}

TeilZweiA = {
        \drummode {
                \repeat volta 4 {
			\kap
			\kap
			\kap
			\kap
			\kap \ks

			\kap \ks
			\kap \ks
			\ka \ka \ka \ka
                }
	}
}

TeilZweiB = {
        \drummode {
                \repeat volta 4 {
                        ss8.
                        ss8.
                        ss8.
                        ss8.
                        ss8. ss16

                        ss8. ss16
                        ss8. ss16
                        ss8 ss8 ss8 ss8
                }
	}
}

GegenStimme = {
        \drummode {
                \repeat volta 8 {
                        \ks  \ks  \ksx \ks
                        \ks  \ksx \ks  \ks
                        \ksx \ks  \ks  \ksx
                        \ks  \ks  \ks  \ks

                        \ks  \ksx \ksx \ks
                        \ks  \ksx \ksx \ks
                        \ks  \ksx \ks \ksx
                        \ks  \ksx \ks \ksx
                }
        }
}

SchlussA = {
	\drummode {
                \ksx \ks  \ks  \ksx
                \ks  \ks  \ksx \ks
                \ks  \ksx \ks  \ks
                \ksx \ks  \ks  \ksx

                \ksx \ks \ks  \ksx
                \ksx \ks \ks  \ksx
                \ksx \ks \ks  \ksx
                \ksx \ks \ks  \ksx

                \ksx\< \ks \ksx \ks
                \ksx \ks \ksx \ks
                \ksx \ks \ksx \ks
                \ksx \ks \ksx \ksx\!

                \kgx
	}
}

SchlussB = {
	\drummode {
                \ks  \ks  \ksx \ks
                \ks  \ksx \ks  \ks
                \ksx \ks  \ks  \ksx
                \ks  \ks  \ks  \ks

                \ks  \ksx \ksx \ks
                \ks  \ksx \ksx \ks
                \ks  \ksx \ksx \ks
                \ks  \ksx \ksx \ks

                \ks\<  \ksx \ks \ksx
                \ks  \ksx \ks \ksx
                \ks  \ksx \ks \ksx
                \ks  \ksx \ks \ksx\!

                \kgx
	}
}


ErsteStimmeNoten = {
	\TeilEins
	\TeilZweiA
	\TeilEins
	\SchlussA
}

ZweiteStimmeNoten = {
	\TeilEins
	\TeilZweiB
	\GegenStimme
	\SchlussB
}

ErsteStimme = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "Erste Stimme"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "ErsteStimme" \ErsteStimmeNoten
}

ZweiteStimme = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "Zweite Stimme"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "ZweiteStimme" \ZweiteStimmeNoten
}

\score {
        \header {
                piece = "XXI (Dreiergruppen Gegenstimmen)"
        }
	\new StaffGroup <<
                \new DrumStaff << \ErsteStimme >>
                \new DrumStaff << \ZweiteStimme >>
	>>
	\layout {
                indent = 4.0\cm
        }
}

