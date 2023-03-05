Mohrentanz = \relative {
	%\unfoldRepeats {
	\repeat volta 2 {
		e''8^"Mohrentanz" f8 g4 g4 g4 |
		g2. f4 |
		e4 c c d |
	}
	\alternative {
		{ b2. g4 | }
		{ c1 | }
	}
	\repeat volta 2 {
		e4 e c c |
		d e c f |
		d e c c |
	}
	\alternative {
		{ d b2 g4 | }
		{ d' c2. | }
	}
	%}
}

Ronde = \relative {
	%\repeat volta 2 {
		c''4^"Ronde" c8 d e2 |
		e8 f g e f4 d |
		d d d d |
		d8 e f d e4 c |

		c4 c8 d e2 |
		e8 f g e f4 d |
		d8 e f d e4 d8 c |
		b8 a c b c2 |
	%}
	\repeat volta 2 {
		g'4 g e e |
		a a g2 |
		e8 f g e f e d c |
		b a c b c2 |
	}
}

FloetenNoten = {
	\Mohrentanz
	\Ronde
}

Floeten = {
        \tempo 4 = 120
	\set Staff.instrumentName = "Flöten"
	\set Staff.midiInstrument = "flute"
        \set Staff.midiPanPosition = 0.0
        \set Staff.midiExpression = 0.7
        \new Voice = "Floeten" \FloetenNoten
}

Pferd = \drummode {
        \ka \ks \ks
        \ka \ks \ks
        \ka \ks \ks
        \ka \ks \ks
}

TrommelNoten = {
	\repeat volta 2 {
		\Pferd
		\Pferd
		\Pferd
	}
	\alternative {
		{ \Pferd }
		{ \Pferd }

	}
	\repeat volta 2 {
		\Pferd
		\Pferd
		\Pferd
	}
	\alternative {
		{ \Pferd }
		{ \Pferd }

	}
	\Pferd
	\Pferd
	\Pferd
	\Pferd
	\Pferd
	\Pferd
	\Pferd
	\Pferd
	\repeat volta 2 {
		\Pferd
		\Pferd
		\Pferd
		\Pferd
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
                piece = "IV Medley - Mohrentanz/Ronde"
        }
	\new StaffGroup <<
		\new Staff << \Floeten >>
                \new DrumStaff << \Trommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
}

