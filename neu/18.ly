boxA = \markup { \box "A" }
boxB = \markup { \box "B" }
boxC = \markup { \box "C" }
boxD = \markup { \box "D" }
boxE = \markup { \box "E" }
boxF = \markup { \box "F" }
boxG = \markup { \box "G" }
boxH = \markup { \box "H" }
boxI = \markup { \box "I" }
boxJ = \markup { \box "J" }
boxK = \markup { \box "K" }
boxL = \markup { \box "L" }

toBoxA = \markup { "Dann " \boxA }
toBoxABA = \markup { "Dann " \boxA \boxB \boxA }
toBoxAD = \markup { "Dann " \boxA \boxD }

StimmeEinsViertel = {
                \tuplet 3/2 { \ka[ r8 \ka] }
}

StimmeEinsViertelToA = {
                \tuplet 3/2 { \ka[^\toBoxABA r8 \ka] }
}

StimmeEinsTakt = {
        \drummode {
		\StimmeEinsViertel
		\StimmeEinsViertel
		\StimmeEinsViertel
		\StimmeEinsViertel |
        }
}

StimmeEinsTaktToA = {
        \drummode {
		\StimmeEinsViertel
		\StimmeEinsViertelToA
		\StimmeEinsViertel
		\StimmeEinsViertel
		|
        }
}

StimmeEinsA = {
	\repeat volta 4 {
		\StimmeEinsTakt
		\StimmeEinsTakt
	}
}

StimmeEinsB = {
	r1
	r1
	r1
	r1
	r1
	r1
	r1
	r1^\toBoxA
}

StimmeEinsC = {
	\repeat volta 4 {
		\StimmeEinsTaktToA
	}
}

StimmeD = {
	\StimmeEinsViertel r4 \kh
	\kh \StimmeEinsViertel \kv
}

StimmeDToA = {
	\StimmeEinsViertel r4 \kh
	\kh^\toBoxA \StimmeEinsViertel \kv
}

StimmeE = {
	\StimmeEinsViertel \kv \kv \kv
	\kv \StimmeEinsViertel r4 \kv
}

StimmeEToAD = {
	\StimmeEinsViertel \kv \kv \kv
	\kv^\toBoxAD \StimmeEinsViertel r4 \kv
}

StimmeF = {
	\repeat volta 4 {
		\StimmeEinsViertel\< r4 \kh
		\kh \StimmeEinsViertel \kv\!
	}
}

% Pause Pause Schlag
Pps = {
                \tuplet 3/2 { r8 r8 \ka }
}


StimmeG = {
	\repeat volta 4 {
		\kv \StimmeEinsViertel \StimmeEinsViertel  \Pps
		\kv \StimmeEinsViertel \StimmeEinsViertel  \Pps
		\StimmeEinsViertel \Pps \StimmeEinsViertel  \Pps
		\kv \StimmeEinsViertel \StimmeEinsViertel  \Pps
	}
}

StimmeHSolo = {
		r1^"Solo" r1 r1 r1
}

StimmeH = {
		r1 r1 r1 r1
}

StimmeI = {
	\drummode {
		\kh \kh								|
		\StimmeEinsViertel r4 \kv \tuplet 3/2 { r8 r8 \ka }		|
		\kv \kv \StimmeEinsViertel \StimmeEinsViertel			|
		r4 \kv \tuplet 3/2 { ss8 r8 ss8 } ss4				|
	}
}

StimmeEinsJ = {
	\repeat volta 8 {
		\StimmeEinsTaktToA
	}
}

StimmeJ = {
	\repeat volta 8 {
		r1
	}
}

StimmeK = {
	\repeat volta 4 {
		\StimmeD
	}
}

StimmeL = {
	\kv \kv \StimmeEinsViertel \kv	|
	\kg				|
	\StimmeEinsViertel \StimmeEinsViertel \Pps \kv	|

}

StimmeEinsNoten = {
        \tempo 4 = 100
	\mark \boxA
	\StimmeEinsA
	\mark \boxB
	\StimmeEinsB
        \tempo 4 = 200
	\mark \boxC
	\StimmeEinsC
	\mark \boxD
	\StimmeDToA
	\bar "."
	\mark \boxE
	\StimmeEToAD
	\mark \boxF
	\StimmeF
	\mark \boxG
	\StimmeG
	\mark \boxH
	\StimmeHSolo
	\bar "."
	\mark \boxI
	\StimmeI
        \tempo 4 = 260
	\mark \boxJ
	\StimmeEinsJ
	\mark \boxK
	\StimmeK
	\mark \boxL
	\StimmeL
}

StimmeEins = {
	\set DrumStaff.instrumentName = "Stimme Eins"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "StimmeEins" \StimmeEinsNoten
}

StimmeZweiA = {
        \drummode {
		\repeat volta 4 {
			r4 \kv \kv r4 |
			\kvp \kvp r4 |
		}
	}
}

StimmeZweiB = {
        \drummode {
		\StimmeEinsViertel \kv \kv \kv	|
		\kv \StimmeEinsViertel r4 r4	|
		\kv \kv \kv \kv			|
		\kv \StimmeEinsViertel r4 r4	|
		\kv \kv \kv \kv			|
		\kv \StimmeEinsViertel r4 r4	|
		\StimmeEinsViertel \kv \kv \kv	|
		\kv \StimmeEinsViertel r4 r4	|
        }
}

StimmeZweiC = {
	\repeat volta 4 {
		r1
	}
}

StimmeZweiNoten = {
	\StimmeZweiA
	\StimmeZweiB
	\StimmeZweiC
	\StimmeD
	\StimmeE
	\StimmeF
	\StimmeG
	\StimmeH
	\StimmeI
	\StimmeJ
	\StimmeK
	\StimmeL
}

StimmeZwei = {
	\set DrumStaff.instrumentName = "Stimme Zwei"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "StimmeZwei" \StimmeZweiNoten
}

StimmeDreiA = {
        \drummode {
		\repeat volta 4 {
			\gv r4 r4 r4 |
			r4 r4 r4 \gv |
		}
	}
}

StimmeDreiB = {
        \drummode {
		r1
		r2. \gv
		r1
		r2. \gv
		r1
		r2. \gv
		r1
		r2. \gv
        }
}

StimmeDreiC = {
	\repeat volta 4 {
		r1
	}
}


StimmeDreiNoten = {
	\StimmeDreiA
	\StimmeDreiB
	\StimmeDreiC
	\StimmeD
	\StimmeE
	\StimmeF
	\StimmeG
	\StimmeH
	\StimmeI
	\StimmeJ
	\StimmeK
	\StimmeL
}


StimmeDrei = {
	\set DrumStaff.instrumentName = "Stimme Drei"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "StimmeDrei" \StimmeDreiNoten
}

\score {
        \header {
                piece = "XVIII"
        }
	\new StaffGroup <<
                \new DrumStaff << \StimmeEins >>
                \new DrumStaff << \StimmeZwei>>
                \new DrumStaff << \StimmeDrei>>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

