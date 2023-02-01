TeilEins = {
        \drummode {
		\ka \ks \ks \ka \ka r2 |
		\repeat volta 2 {
			ss8 ss16 ss16 ss8 ss8 ss8 ss8 r8 ss8 |
			r1
		}
		\repeat volta 4 {}
		\alternative {
			{ ss8 ss16 ss16 ss8 ss8 ss8 ss8 r8 ss8 | }
			{ ss8 ss16 ss16 ss8 ss8 ss8 ss8 r8 \ka | }
		}
		\repeat volta 4 {
			\ka_"4x"\f \ks \ks \ka \ka \ka \ka r8 \ka |
		}
		\repeat volta 14 {}
		\alternative {
			{ \ka_"14x"\p \ks \ks \ka \ka \ka \ka r8 \ka | }
			{ \ka_"14x"\p \ks \ks \ka \ka \ka \ka r8 ss8 | }
		}
		\kv ss8 \kv ss8 \kv |
		ss8 \kv r8 r2 |

		r1_"Solo" |

		\repeat volta 4 {
			\ka_"4x"\f \ks \ks \ka \ka \ka \ka r8 \ka |
		}
		\repeat volta 11 {
			{ \ka_"11x"\p \ks \ks \ka \ka \ka \ka r8 \ka | }
		}
		\repeat volta 4 {
			\ka_"4x"\f \ks \ks \ka \ka \ka \ka r8 \ka |
		}
	}
}

KleineTrommelNoten = {
	\TeilEins
}

KleineTrommel = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "KleineTrommel" \KleineTrommelNoten
}

\score {
        \header {
                piece = "XIII (Pausenfüller)"
        }
	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

