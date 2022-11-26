KleinEins = \drummode {
        \tuplet 3/2 { \ka[ r8 \ka] ~ } \kv \kh
}

KleineTrommelNoten = {
        \repeat volta 4 {}
        \alternative {
                \KleinEins
                \KleinEins
        }
        \repeat volta 4 {}
        \alternative {
                \KleinEins
                \KleinEins
        }
        \KleinEins
        \KleinEins
        \KleinEins
        \tuplet 3/2 { \ka[ r8 \ka] ~ } \kv \kv
        \tuplet 3/2 { \ka[ \ka \ka] }
        \kg
}

KleineTrommel = {
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "KleineTrommel" \KleineTrommelNoten
}

TupletEins = {
        \tuplet 3/2 { \ga[ r8 \ga] }
}

TupletZwei = {
          \tuplet 3/2 { \ga[ \ga \ga] }
}

GrossEins = \drummode {
        \repeat volta 4 {}
        \alternative {
                { r1 }
                { r2 r4 \gv }
        }
}

GrossZwei = \drummode {
        \repeat volta 4 {}
        \alternative {
                { \TupletEins \gv \gv \gv }
                { \TupletEins \gv \gv \TupletZwei }
        }
}

GrossDrei = \drummode {
        \repeat volta 2 {
                \TupletEins \gv \gv \TupletZwei
                \TupletEins \gv \gv \TupletZwei
                \TupletEins \TupletZwei \TupletEins \TupletZwei
                \TupletEins \gv \gv \TupletZwei
      }
}

GrosseTrommelNoten = {
        \GrossEins
        \GrossZwei
        \GrossDrei
        \gg
}

GrosseTrommel = {
	\tempo 4 = 120
        \time 4/4
	\set Staff.instrumentName = "Große Trommel"
	\set Staff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \new DrumVoice = "GrosseTrommel " \GrosseTrommelNoten
}

\score {
        \header {
                piece = "III (TODO: Schluss!)"
        }

	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
                \new DrumStaff << \GrosseTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

