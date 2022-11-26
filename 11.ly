TeilEins = {
        \drummode {
		\repeat volta 2 {
			\kv \ka \kv \ka \kv |
			\ka \kv \ka \kv \kv |
			\kv \ka \kv \ka \kv |
			\ka \kv \ka tommh2 |
		}
        }
}

Steigerung = {
        \drummode {
        	\ks\< \ks \ks \ks
        	\ks \ks \ks \ks
        	\ks \ks \ks \ks
        	\ks \ks \ks \ks |

        	\ks \ks \ks \ks
        	\ks \ks \ks \ks
        	\ks \ks \ks \ks
        	\ks \ks \ks \ks |

        	\ks \ks \ks \ks
        	\ks \ks \ks \ks
        	\ks \ks \ks \ks
        	\ks \ks \ks \ks |

		tommh1\!
        }
}

TeilZwei = {
        \drummode {
		\repeat volta 4 {
        		\ks \accent \ks \ks 	\ks
        		\ks 	\ks \ks \accent \ks
        		\ks 	\ks \ks 	\ks
        		\ks \accent	\ks \ks 	\ks |

        		\ks 	\ks \ks \accent \ks
        		\ks \ks \ks \ks
        		\ks \accent	\ks \ks 	\ks
        		\ks 	\ks \ks 	\ks |
        	}
        }
}

TeilDrei = {
        \drummode {
		\repeat volta 2 {
			\tuplet 3/2 { \ka \ka \ka }
			\kv
			\kv
			\tuplet 3/2 { \ka \ka \ka } |
			\kv
			\kv
			\tuplet 3/2 { \ka \ka \ka }
			\kv
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

