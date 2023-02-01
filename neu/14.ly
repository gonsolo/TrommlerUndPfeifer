TeilEins = {
	\repeat volta 2 {
	        \kax_"I" \ka \ka   \kax \ka \kax   \ka  \ka  \kax  \kax \ka \ka  |
	        \kax \ka \ka   \kax \ka \kax   \kax \ka  \kax  \kax \ka \ka  |
	        \kax \ka \ka   \kax \ka \ka    \kax \ka  \ka   \kax \ka \kax |
	}
	\alternative {
		{ \kax \ka \kax  \kax \ka \ka    \kax \kax \kax  \kax \ka \ka  | }
		{ \kax \ka \kax  \kax \ka \ka    \kax \kax \kax  \kvpx | }
	}
}

Zwischenteil = {
        \kax \kax \kax  \kvpx \kvpx \kvpx |
}

TeilZwei = {
	\repeat volta 2 {
		\kax_"II" \ka \ka \kax \ka \ka \kax \ka \ka \kax \ka \ka
		\kax \ka \ka \kax \ka \ka \kax \ka \ka \kax \ka \ka
		\kax \ka \ka \kax \ka \ka \kax \ka \ka \kax \ka \ka
	}
	\alternative {
		{ \kax \ka \ka \kax \ka \ka \kax \kax \kax \kax \ka \ka }
		{ \kax \ka \ka \kax \ka \ka \kax \kax \kax \kvpx }
	}
}

Schluss = {
        \kax \kax \kax \kvpx	\kax \kax \kax  \kvpx |
        \kax \kax \kax \kvpx	r2. |

}

KleineTrommelNoten = {
        \drummode {
		\repeat volta 2 {
			\TeilEins
			\Zwischenteil
			\TeilZwei
			\Zwischenteil
		}
		\TeilEins
		\Schluss
        }
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
                piece = "XIV (Eins ZweiDie DieVier)"
        }
	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

