% ta: Achtel
ta = { \drummode { tommh8 } }

% ts: Sechzehntel
ts = { \drummode { tommh16 } }

% tax: Akzentuierte Achtel
tax = { \drummode { \ta \accent } }

KleineTrommelNoten = {
        \drummode {
                \tax \ta \ta  \ta
                \ta  \ta \ta  \tax
                \tax \ta \ta  \ta
                \ta  \ta \ta  \tax
                \tax \ta \ta  \ta
                \ta  \ta \ta  \tax
                \tax \ta \ta  \ta
                \tax \ta \tax \ta

                \tax \ta \ta \ta
                \ta \ta \ta \ts \ts
                \ta \tax \ta \tax
                \ta \tax \ta \ts \ts

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

GrossEins = \drummode {
        tomfh8 tomfh16 tomfh16
        tomfh4
}

GrosseTrommelNoten = {
}

GrosseTrommel = {
        \tempo 4 = 120
	\set Staff.instrumentName = "Große Trommel"
	\set Staff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = -1.0
        \new DrumVoice = "GrosseTrommel " \GrosseTrommelNoten
}

\score {
        \header {
                piece = "VII (TODO: Alles)"
        }
	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
                %\new DrumStaff << \GrosseTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

