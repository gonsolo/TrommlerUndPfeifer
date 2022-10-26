GrossEins = \drummode {
        tommh8 tommh16 tommh16
        tommh4
}

GrossZwei = \drummode {
        tommh8 tommh16 tommh16
        tommh8 tommh8
}

GrossDrei = \drummode {
        tommh4.
        tommh16 tommh16
}

GrossDreiPiano = \drummode {
        tommh4.
        tommh16\p tommh16
}

GrossVier = \drummode {
        tommh8 tommh8
        tommh8 tommh16 tommh16
}

GrossFuenf = \drummode {
        tommh8 tommh8
        tommh16 tommh16 tommh16 tommh16
}

GrossSechs = \drummode {
        tommh2
}

TeilEins = {
        \GrossEins \GrossEins | \GrossZwei \GrossEins |
        \GrossEins \GrossEins | \GrossZwei \GrossDrei |
}

TeilZwei = {
        \GrossVier \GrossVier | \GrossFuenf \GrossVier |
        \GrossVier \GrossVier | \GrossFuenf \GrossSechs |
}

forte = \markup { \dynamic f }
piano = \markup { \dynamic p }

TeilEinsStaff = {
        \tempo 4 = 120
	\set Staff.instrumentName = "Alle"
	\set Staff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \new DrumVoice = "KleineTrommel "
                {
                        \TeilEins
                        \TeilZwei
                }
}

\score {
        \header {
                piece = "II"
        }
	\new StaffGroup <<
                \new DrumStaff << \TeilEinsStaff >>
		\new Lyrics {
			\lyricmode {
				\set stanza  = "1. "
				\forte _ _ _ _ _ _ _ \forte
			}
		}
		\new Lyrics {
			\lyricmode {
				\set stanza  = "2. "
				\forte _ _ _ _ _ _ _ \piano
			}
		}
		\new Lyrics {
			\lyricmode {
				\set stanza  = "3. "
				\piano _ _ _ _ _ _ _ \forte
			}
		}
		\new Lyrics {
			\lyricmode {
				\set stanza  = "4. "
				\piano _ _ _ _ _ _ _ \piano
			}
		}
		\new Lyrics {
			\lyricmode {
				\set stanza  = "2. "
				\forte _ _ _ _ _ _ _ \forte
			}
		}
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

