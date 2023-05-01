
FloetenEins = \relative {
	a'4 g8 a8 f4 f4	|
	g4 g4 f8 e8 d4		|
	a'4 g8 a8 f4 f4		|
	g4 e4 d2		|
}

AlterWichser = \relative {

	\FloetenEins

	d'4 d8 e8 f4 f4		|
	g4 e4 e8 f8 d4		|
	f4 e8 f8 d4. d8		|
	d4 cis4 d2		|

	a'4 g8 a8 b4 b4		|
	g4 a4 a2		|
	f4 e8 f8 g4 d4		|
	d4 cis4 d2		|

	\FloetenEins
}

FloetenNoten = {
	\AlterWichser
}

Floeten = {
        \tempo 4 = 120
	\set Staff.instrumentName = "Flöten"
	\set Staff.midiInstrument = "flute"
        \set Staff.midiPanPosition = 0.0
        \set Staff.midiExpression = 0.7
        \new Voice = "Floeten" \FloetenNoten
}

TrommelEins = {
        \drummode {
		\ka \ks \ks \kv \ka \ks \ks \kv
		\ka \ks \ks \ka \ka \ka \ks \ks \kv
		\ka \ks \ks \kv \ka \ks \ks \kv
		\ka \ks \ks \ka \ka \kvp \ks \ks
	}
}

TrommelZwei = {
        \drummode {
		\ka \ka \ka \ks \ks \ka \ka \ka \ks \ks 
		\ka \ka \ks \ks \ks \ks \ka \ka \ka \ks \ks 
		\ka \ka \ka \ks \ks \ka \ka \ka \ks \ks 
		\ka \ka \ks \ks \ks \ks \kh
	}
}

TrommelNoten = {
	\TrommelEins
	\TrommelZwei
	\TrommelEins
	\TrommelZwei
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
                piece = "II Medley \"Alter Wichser\" (TODO: Stöcke, halbiert)"
        }
	\new StaffGroup <<
		\new Staff << \Floeten >>
                \new DrumStaff << \Trommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
}

