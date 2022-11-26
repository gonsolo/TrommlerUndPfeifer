\score {
        \header {
                piece = "Ungaresca (TODO: Alles)"
        }
	\new StaffGroup <<
                \new DrumStaff << 
			\drummode {
				tommh4 tommh4 tommh4 tommh8 \tuplet 3/2 { \ks \ks \ks }
				tommh4 tommh4 tommh4 tommh8 tommh8
			}
		 >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

