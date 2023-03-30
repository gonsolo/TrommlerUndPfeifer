StimmeEinsTakt = {
        \drummode {
                \tuplet 3/2 { \ka[ r8 \ka] }
                \tuplet 3/2 { \ka[ r8 \ka] }
                \tuplet 3/2 { \ka[ r8 \ka] }
                \tuplet 3/2 { \ka[ r8 \ka] } |
        }
}

StimmeEinsA = {
	\repeat volta 4 {
		\StimmeEinsTakt
		\StimmeEinsTakt
	}
}

StimmeEinsNoten = {
	\mark  \markup { \box "A" }
	\StimmeEinsA
	\mark  \markup { \box "B" }
	r1
	r1
	r1
	r1
	r1
	r1
	r1
	r1^"To A"
}

StimmeEins = {
        %\tempo 4 = 120
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
                \tuplet 3/2 { \ka[ r8 \ka] } \kv \kv \kv |
		\kv \tuplet 3/2 { \ka[ r8 \ka] } r4 r4
		\kv \kv \kv \kv |
		\kv \tuplet 3/2 { \ka[ r8 \ka] } r4 r4
		\kv \kv \kv \kv |
		\kv \tuplet 3/2 { \ka[ r8 \ka] } r4 r4
                \tuplet 3/2 { \ka[ r8 \ka] } \kv \kv \kv |
		\kv \tuplet 3/2 { \ka[ r8 \ka] } r4 r4
        }
}

StimmeZweiNoten = {
	\StimmeZweiA
	\StimmeZweiB
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

StimmeDreiNoten = {
	\StimmeDreiA
	\StimmeDreiB
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
                piece = "XVIII (TODO)"
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

