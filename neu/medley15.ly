SchiarazulaMarazula = \relative {
	%\unfoldRepeats {
        %\partial 8 a''8
	\repeat volta 2 {
		r1
		r1
		r1
		r1
	}
        \repeat volta 8 {
                r1
        }
	\alternative {
		{ r1 }
		{ r2 r4 r8 a''8 }
	}
	\repeat volta 2 {
		a8^"Schiarazula Marazula" g a g f f f e |
	}
	\alternative {
		{ d c d e d d d a' | }
		{ d, c d e d d d g16 f | }
	}
	\repeat volta 2 {
		e8 d e f e d e a16 g |
	}
	\alternative {
		{ f8 d d c d d d g16 f | }
		{ f8 d d c d2 | }
	}
	%}
}

FloetenNoten = {
	\SchiarazulaMarazula
}

Floeten = {
        \tempo 4 = 120
	\set Staff.instrumentName = "Flöten"
	\set Staff.midiInstrument = "flute"
        \set Staff.midiPanPosition = 0.0
        \set Staff.midiExpression = 0.7
        \new Voice = "Floeten" \FloetenNoten
}

TrommelNoten = {
        \drummode {
                \repeat volta 2 {
                        \ka \ka \ka \ka \kap \kap r8 |
                        \ka \ka \ka \ka \kap \kap r8 |
                        \ka \ka \ka \ka \kap \kap r8 |
                        \kap \kap r8 \kap \kap r8 |
                }
                \repeat volta 8 {
                        ss8 \ks \ka \ks \ka ss8 \ks \ka \ks \ka
                }
		\alternative {
			{ ss8 \ks \ka \ks \ka ss8 \ks \ka \ks \ka }
			{ ss8 \ks \ka \ks \ka ss8 \ks \ka \ks \ka }

		}
	\repeat volta 2 {
                        \kax \ks \ka \ks \ka ss8 \ks \ka \ks \ka |
	}
	\alternative {
		{ \kax \ks \ka \ks \ka ss8 \ks \ka \ks \ka | }
		{ \kax \ks \ka \ks \ka ss8 \ks \ka \ks \ka | }
	}
	\repeat volta 2 {
                        \kax \ks \ka \ks \ka ss8 \ks \ka \ks \ka |
	}
	\alternative {
		{ \kax \ks \ka \ks \ka ss8 \ks \ka \ks \ka | }
		{ \kax \ks \ka \ks \ka ss8 \ks \ka \ks \ka | }
	}
}
}

Trommel = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.2
        \new DrumVoice = "Trommel" \TrommelNoten
}


\score {
        \header {
                piece = "XV Medley \"Schiarazula Marazula\" (Zweiter Teil mit Pfeifen länger)"
        }
	\new StaffGroup <<
		\new Staff << \Floeten >>
                \new DrumStaff << \Trommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
}

