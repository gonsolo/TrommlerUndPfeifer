\score {
        \header {
                piece = "Ungaresca (TODO: Alles)"
        }
	\new StaffGroup <<
                \new DrumStaff << 
			\drummode {
				\kv \kv \kv \ka \tuplet 3/2 { \ks \ks \ks }
				\kv \kv \kv \ka \ka
			}
		 >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

