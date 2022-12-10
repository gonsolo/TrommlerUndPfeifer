StimmeEinsTeilEins = {
        \drummode {
                \tuplet 3/2 { \ka[ r8 \ka] }
                \tuplet 3/2 { \ka[ r8 \ka] }
                \tuplet 3/2 { \ka[ r8 \ka] }
                \tuplet 3/2 { \ka[ r8 \ka] } |
        }
}

StimmeEinsNoten = {
	\StimmeEinsTeilEins
}

StimmeEins = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "Stimme Eins"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "StimmeEins" \StimmeEinsNoten
}

StimmeZweiTeilEins = {
        \drummode {
                r4 \kv \kv r4 |
        }
}

StimmeZweiNoten = {
	\StimmeZweiTeilEins
}

StimmeZwei = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "Stimme Zwei"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "StimmeZwei" \StimmeZweiNoten
}

StimmeDreiTeilEins = {
        \drummode {
                \kh r2 |
        }
}

StimmeDreiNoten = {
	\StimmeDreiTeilEins
}

StimmeDrei = {
        \tempo 4 = 120
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

