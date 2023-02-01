TeilEins = {
        \drummode {
                \repeat volta 2 {
			\parenthesize tommh4.-"Georg" \parenthesize tommh4. r4
                        \kvp-"Alle" \kvp r4
                }
		\repeat volta 2 {
			\parenthesize \ks-"Georg" \parenthesize \ks r8 r8 \parenthesize \ks \parenthesize \ks r2
		}
		\alternative {
			{ \ks-"Alle" \ks r8 r8 \ks \ks r2 }
			{ \ks \ks r8 r8 \ks \ks r4 ss4 }
		}
		\repeat volta 2 {
			\inStaffSegno
                \repeat volta 4 {
                        \ksx \ks \ks \ks \ks \ks \ksx \ks \ks \ks \ks \ks \ksx \ks \ks \ks
                        \ksx \ks \ks \ks \ks \ks \ks \ks \ksx \ks \ks \ks \ks \ks \ks \ks
                }
                \repeat volta 4 {
                        \ksx \ksx \ks \ks \ks \ks \ksx \ksx \ks \ks \ks \ksx \ksx \ks \ks \ksx
                        \ksx \ks \ks \ksx \ks \ksx \ks \ksx \ksx \ks \ks \ks \ks \ks \ks \ks
                }
		\repeat volta 2 {
			\kvp-"Reihum" \kvp \kv
			\kh \kh
			\kvp \kvp \kv
			\kg-"D.S."
		}
	}

                \tempo 4 = 160
                \time 12/8
                \kax \ka \ka
                \kax \ka \ka
                \kax \ka \ka
                \kax \ka \ka
                \kax \ka \ka
                \kax \ka \ka
                \kax \ka \ka
                \kax \ka \ka

                \kax \kax \kax
                \ka \ka
                \kax \kax \kax
                \ka \ka
                \kax \kax \kgx

        }
}

KleineTrommelNoten = {
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
                piece = "XVI (Georg)"
        }
	\new StaffGroup <<
                \new DrumStaff << \KleineTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

