Klatschlied = \relative {
	%\unfoldRepeats {
	\repeat volta 2 {
		a''4^"Klatschlied" a8 g4 f8 e4 d8 c4. |
	}
	\alternative {
		{ d4 e8 f4 a8 g4 f8 e4 d8 | }
		{ d4 e8 f4 g8 f d e d4. | }
	}
	\repeat volta 2 {
		d4 d8 d4 d8 c4 c8 f4. |
		g4 g8 a4 g8 f4 e8 d4. |
	}
	\repeat volta 2 {
		a'8 a a d,4. a' d, |
	}
	\repeat volta 2 {
		a'4 a8 g4 b8 a2. |
	}
	%}
}

FloetenNoten = {
	\Klatschlied
}

Floeten = {
        \time 12/8
	\tempo 4 = 180
	\set Staff.instrumentName = "Flöten"
	\set Staff.midiInstrument = "flute"
        \set Staff.midiPanPosition = 0.0
        \set Staff.midiExpression = 0.7
        \new Voice = "Floeten" \FloetenNoten
}

TrommelFigur = {
	\drummode {
		\kax \ka \ka \kax \ka \ka \kax \ka \ka \kax \ka \ka |
	}
}

TrommelNoten = {
	\repeat volta 2 {
		\TrommelFigur
	}
	\alternative {
		{ \TrommelFigur }
		{ \TrommelFigur }
	}
	\repeat volta 2 {
		{ \TrommelFigur }
		{ \TrommelFigur }
	}
	\repeat volta 2 {
		\TrommelFigur
	}
	\repeat volta 2 {
		\TrommelFigur
	}
}

Trommel = {
        \time 12/8
	\tempo 4 = 180
	\set DrumStaff.instrumentName = "Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.1
        \new DrumVoice = "Trommel" \TrommelNoten
}


\score {
        \header {
                piece = "IX Medley - Klatschlied (Dela la rivière)"
        }
	\new StaffGroup <<
		\new Staff << \Floeten >>
                \new DrumStaff << \Trommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
}

