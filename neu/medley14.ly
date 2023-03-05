Estampie = \relative {
	%\unfoldRepeats {
	\repeat volta 2 {
		c''4^"Estampie" b8 c4 d8 e4. e4 f8 |
		g4. g4 f8 e2.
	}
	\repeat volta 2 {
		e4 g8 e4 g8 f4. d4 e8 |
		f4 d8 e4 c8 d4. b4 c8 |
	}
	\alternative {
		{ d4 d8 b4 c8 d2. }
		{ d4 e8 c4 b8 c2. }
	}
	%}
}

FloetenNoten = {
	\Estampie
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

TrommelFigurEins = {
	\drummode {
		\kax \ka \ka \kax \ka \ka \kax \ka \ka \kax \ka \ka |
	}
}

TrommelFigurZwei = {
	\drummode {
		\kax \ka \ka \kax \ka \ka \kax \ka \ka \kax \ka \kax |
	}
}

TrommelNoten = {
	\repeat volta 2 {
		\TrommelFigurEins
		\TrommelFigurZwei
	}
	\repeat volta 2 {
		\TrommelFigurEins
		\TrommelFigurEins
	}
	\alternative {
		{ \TrommelFigurZwei }
		{ \TrommelFigurZwei }
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
                piece = "XIV Medley \"Estampie\" (TODO: Anfang Viertel, Schluss)"
        }
	\new StaffGroup <<
		\new Staff << \Floeten >>
                \new DrumStaff << \Trommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	\midi {}
}

