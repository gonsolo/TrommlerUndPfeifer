\score {
        \header {
                piece = "Ungaresca)"
        }
	\new StaffGroup <<
                \new DrumStaff << 
			\drummode {
				\kv-"Vorspiel und hohe Noten" \kv \kv \ka \tuplet 3/2 { \ks \ks \ks }
				\kv-"Tiefe Noten" \kv \kv \ka \ka
			}
		 >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

