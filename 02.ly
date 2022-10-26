GrossEins = \drummode {
        tommh8 tommh16 tommh16
        tommh4
}

GrossZwei = \drummode {
        tommh8 tommh16 tommh16
        tommh8 tommh8
}

GrossDrei = \drummode {
	tommh2
        %tommh4.
        %tommh16 tommh16
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

TeilEins = {
        \tempo 4 = 120
	\set Staff.instrumentName = "Teil Eins"
	\set Staff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \new DrumVoice = "KleineTrommel "
                {
                        \TeilEins
                        %\TeilZwei
                        %\addlyrics { \forte }
                }
}

% L L | L _ | _ L | _ _ | L L

\score {
        \header {
                piece = "II (TODO) (XX | Xx | xX | xx | XX)"
        }
	\new StaffGroup <<
                \new DrumStaff << \TeilEins >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

