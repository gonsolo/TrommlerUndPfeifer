\score {
        \header {
                piece = "Ungaresca (TODO: Alles)"
        }
	\new StaffGroup <<
                \new DrumStaff << 
			\drummode {
				tommh4 tommh4 tommh4 \ka \tuplet 3/2 { \ks \ks \ks }
				tommh4 tommh4 tommh4 \ka \ka
			}
		 >>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

