TeilEins = {
        \drummode {
		\repeat unfold 4 {
			\kv \ka \kv \ka \kv |
			\ka \kv \ka \kv \kv |
			\kv \ka \kv \ka \kv |
			\ka \kv \ka \kh |
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

		\kg\!
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

TeilZweiGross = {
        \drummode {
		\repeat volta 4 {
			\ks \ks \ks \ks
			\ks \accent \ks \ks 	\ks
			\ks 	\ks \ks \accent \ks
			\ks 	\ks \ks 	\ks |

			\ks \accent	\ks \ks 	\ks
			\ks 	\ks \ks \accent \ks
			\ks \ks \ks \ks
			\ks \accent	\ks \ks 	\ks |
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

Schluss = {
        \drummode {
		\kv \ka \kv \ka \kv |
		\ka \kv \ka \kv \kv |
		\kg |
        }
}

KleineTrommelNoten = {
	\repeat volta 2 {
	\TeilEins
	\Steigerung
	\TeilZwei
	\TeilDrei
	}
	\Schluss
}

GrosseTrommelNoten = {
	\repeat volta 2 {
		r1 r1 r1 r1
		r1 r1 r1 r1

		\ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks
		\ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks
		\ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks
		\ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks

		\ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks
		\ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks
		\ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks \ks
		\ks \ks \ks \ks \ks \ks \ks \ks \kh

		\Steigerung
		\TeilZweiGross
		\TeilDrei
	}
	\Schluss
}

KleineTrommel = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "KleineTrommel" \KleineTrommelNoten
}

GrosseTrommel = {
	\set DrumStaff.instrumentName = "Grosse Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "GrosseTrommel" \GrosseTrommelNoten
}

\score {
        \header {
                piece = "XI (EinsZweiUnd UndVier)"
        }
	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
                \new DrumStaff << \GrosseTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
}

