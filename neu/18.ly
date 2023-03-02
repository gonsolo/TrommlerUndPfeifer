StimmeEinsTeilEins = {
        \drummode {
                \tuplet 3/2 { \ka[ r8 \ka] }
                \tuplet 3/2 { \ka[ r8 \ka] }
                \tuplet 3/2 { \ka[ r8 \ka] }
                \tuplet 3/2 { \ka[ r8 \ka] } |
        }
}

StimmeEinsNoten = {
	\mark  \markup { \box "A" }
	\StimmeEinsTeilEins
	\StimmeEinsTeilEins
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

StimmeZweiNoten = {
        \drummode {
                r4 \kv \kv r4 |
		\kvp \kvp r4 |

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

StimmeZwei = {
	\set DrumStaff.instrumentName = "Stimme Zwei"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "StimmeZwei" \StimmeZweiNoten
}

StimmeDreiNoten = {
        \drummode {
                \gv r4 r4 r4 |
                r4 r4 r4 \gv |

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

