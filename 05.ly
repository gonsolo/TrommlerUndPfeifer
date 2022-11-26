Viertel = {
	\drummode {
		tommh4 tommh4 tommh4 tommh4
	}
}

Halbe = {
	\drummode {
                tommh2 tommh2
	}
}

Dumdumadum = {
	\drummode {
                \ka \ks \ks tommh4 tommh2
	}
}

Dumdumdumdumadum = {
	\drummode {
                tommh4 tommh4 \ka \ks \ks tommh4
	}
}

Dumdumdumadumadum = {
	\drummode {
                tommh4 tommh4 \ks \ks \ks \ks tommh4
	}
}


KleineTrommelNoten = {
        \drummode {
		\repeat volta 2 {
			\repeat volta 2 {
				\Viertel
				\Halbe
			}

			\repeat volta 2 {
				\Dumdumadum
				\Halbe
				\Viertel
				\Halbe
			}

			\repeat volta 2 {
				\Dumdumdumdumadum
				\Dumdumdumdumadum
				\Viertel
				\Dumdumdumadumadum
			}
		}	
        }
}

KleineTrommel = {
        \tempo 4 = 140
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "KleineTrommel" \KleineTrommelNoten
}

\score {
        \header {
                piece = "V"
        }
	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

