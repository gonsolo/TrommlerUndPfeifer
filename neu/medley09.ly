FloetenNoten = \relative {
	\repeat volta 2 {
		a''4 a8 g4 f8 e4 d8 c4.		|
		r1.				|
	}
	\repeat volta 2 {
		d4 d8 d4 d8 c4 c8 f4.		|
		r1.				|
	}
	\repeat volta 2 {
		a4. d,4. r2.			|
	}
	\repeat volta 2 {
		a'4 a8 g4 b8 a4. r4.		|
	}

	\repeat volta 2 {
		a4 a8 g4 f8 e4 d8 c4.		|
	}
	\alternative {
		{ d4 e8 f4 a8 g4 f8 e4 d8	| }
		{ d4 e8 f4 g8 f d e d4.		| }
	}
	\repeat volta 2 {
		d4 d8 d4 d8 c4 c8 f4.		|
		g4 g8 a4 g8 f4 e8 d4.		|
	}
	\repeat volta 2 {
		a'4. d, a' d,			|
	}
	\repeat volta 2 {
		a'4 a8 g4 b8 a4. r4.		|
	}

%	a''4 a8 g4 f8 e4 d8 c4. |
%	r1
%	a''4 a8 g4 f8 e4 d8 c4. |
%	r1
%
%	d4 d8 d4 d8 c4 c8 f4. |
%	r1
%	d4 d8 d4 d8 c4 c8 f4. |
%	r1
%
%	a'8 a a d,4. a' r |
%	a'8 a a d,4. a' r |
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

TrommelNoten = \drummode {
	\repeat volta 2 {
		r1.					|
		\kv \ka \kv \ka \kv \ka \kvp		|
	}
	\repeat volta 2 {
		r1.					|
		\kv \ka \kv \ka \ka \ka \ka \kvp	|
	}
	\repeat volta 2 {
		r2. \ka \ka \ka \kvp			|
	}
	\repeat volta 2 {
		r2. r4. \kvp				|
	}
		
	\repeat volta 2 {
		ss4 ss8 ss4 ss8 ss4 ss8 ss4 ss8		|
	}
	\alternative {
		{ ss4 ss8 ss4 ss8 ss4 ss8 ss4 ss8	| }
		{ ss4 ss8 ss4 ss8 ss4 ss8 ss4 ss8	| }
	}
	\repeat volta 2 {
		ss4 ss8 ss4 ss8 ss4 ss8 ss4 ss8	|
		ss4 ss8 ss4 ss8 ss4 ss8 ss4 ss8	|
	}
	\repeat volta 2 {
		ss4. ss4. ss8 ss8 ss8 ss4.		|
	}
	\repeat volta 2 {
		ss4 ss8 ss4 ss8 ss4. \kvp |
	}

%	\repeat volta 2 {
%		\TrommelFigur
%	}
%	\alternative {
%		{ \TrommelFigur }
%		{ \TrommelFigur }
%	}
%	\repeat volta 2 {
%		{ \TrommelFigur }
%		{ \TrommelFigur }
%	}
%	\repeat volta 2 {
%		\TrommelFigur
%	}
%	\repeat volta 2 {
%		\TrommelFigur
%	}
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
	\midi {}
}

