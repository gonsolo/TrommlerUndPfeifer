TeilEins = {
        \drummode {
	        \kax \ka \ka   \kax \ka \kax   \ka  \ka  \kax  \kax \ka \ka  |
	        \kax \ka \ka   \kax \ka \kax   \kax \ka  \kax  \kax \ka \ka  |
	        \kax \ka \ka   \kax \ka \ka    \kax \ka  \ka   \kax \ka \kax |
	        \kax \ka \kax  \kax \ka \ka    \kax \kax \kax  \kax \ka \ka |
        }
}

KleineTrommelNoten = {
	\TeilEins
}

KleineTrommel = {
        \time 12/8
        \tempo 4 = 140
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "KleineTrommel" \KleineTrommelNoten
}

\score {
        \header {
                piece = "XIV (TODO)"
        }
	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

