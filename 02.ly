KleinEins = \drummode {
}

KleineTrommelNoten = {
}

KleineTrommel = {
        \tempo 4 = 120
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "KleineTrommel" \KleineTrommelNoten
}

GrossEins = \drummode {
        tomfh8 tomfh16 tomfh16
        tomfh4
}

GrossZwei = \drummode {
        tomfh8 tomfh16 tomfh16
        tomfh8 tomfh8
}

GrossDrei = \drummode {
        tomfh4.
        tomfh16 tomfh16
}

GrossDreiPiano = \drummode {
        tomfh4.
        tomfh16\p tomfh16
}

GrossVier = \drummode {
        tomfh8 tomfh8
        tomfh8 tomfh16 tomfh16
}

GrossFuenf = \drummode {
        tomfh8 tomfh8
        tomfh16 tomfh16 tomfh16 tomfh16
}

GrossSechs = \drummode {
        tomfh2
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

GrosseTrommelNoten = {
        \repeat volta 4 {
          \TeilEins
          \TeilZwei
      }
}

GrosseTrommel = {
        \tempo 4 = 120
	\set Staff.instrumentName = "Große Trommel"
	\set Staff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \new DrumVoice = "GrosseTrommel "
                %\GrosseTrommelNoten
                {
                        \TeilEins
                        \TeilZwei
                        %\addlyrics { \forte }
                }
                %{
                %\TeilZwei
                %\addlyrics { \piano }
                %}
}

% L L | L _ | _ L | _ _ | L L

\score {
        \header {
                piece = "II (TODO) (XX | Xx | xX | xx | XX)"
        }
	\new StaffGroup <<
                %\new DrumStaff << \global \KleineTrommel >>
                \new DrumStaff << \GrosseTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

