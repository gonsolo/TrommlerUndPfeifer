TeilEins = {
        \drummode {
		\repeat volta 2 {
        		tommh4 tommh8 tommh4 tommh8 tommh4 |
			tommh8 tommh4 tommh8 tommh4 tommh4 |
        		tommh4 tommh8 tommh4 tommh8 tommh4 |
			tommh8 tommh4 tommh8 tommh2 |
		}
        }
}

Steigerung = {
        \drummode {
        	tommh16\< tommh16 tommh16 tommh16
        	tommh16 tommh16 tommh16 tommh16
        	tommh16 tommh16 tommh16 tommh16
        	tommh16 tommh16 tommh16 tommh16 |

        	tommh16 tommh16 tommh16 tommh16
        	tommh16 tommh16 tommh16 tommh16
        	tommh16 tommh16 tommh16 tommh16
        	tommh16 tommh16 tommh16 tommh16 |

        	tommh16 tommh16 tommh16 tommh16
        	tommh16 tommh16 tommh16 tommh16
        	tommh16 tommh16 tommh16 tommh16
        	tommh16 tommh16 tommh16 tommh16 |

		tommh1\!
        }
}

TeilZwei = {
        \drummode {
		\repeat volta 4 {
        		tommh16 \accent tommh16 tommh16 	tommh16
        		tommh16 	tommh16 tommh16 \accent tommh16
        		tommh16 	tommh16 tommh16 	tommh16
        		tommh16 \accent	tommh16 tommh16 	tommh16 |

        		tommh16 	tommh16 tommh16 \accent tommh16
        		tommh16 tommh16 tommh16 tommh16
        		tommh16 \accent	tommh16 tommh16 	tommh16
        		tommh16 	tommh16 tommh16 	tommh16 |
        	}
        }
}

TeilDrei = {
        \drummode {
		\repeat volta 2 {
			\tuplet 3/2 { tommh8 tommh8 tommh8 }
			tommh4
			tommh4
			\tuplet 3/2 { tommh8 tommh8 tommh8 } |
			tommh4
			tommh4
			\tuplet 3/2 { tommh8 tommh8 tommh8 }
			tommh4
        	}
        }
}


KleineTrommelNoten = {
	\repeat volta 2 {
	\TeilEins
	\Steigerung
	\TeilZwei
	\TeilDrei
	}
	\TeilEins
}

KleineTrommel = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "KleineTrommel" \KleineTrommelNoten
}

\score {
        \header {
                piece = "XI (Schluss?)"
        }
	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

