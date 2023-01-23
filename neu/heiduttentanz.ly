\score {
        \header {
                piece = "Heiduttentanz (TODO: Alles)"
        }
	\new StaffGroup <<
                \new DrumStaff <<
			\drummode {
				r1
				\kv ss8 \ka \kv ss4
				\tuplet 3/2 { \ks \ks \ks \ks \ks \ks } \kv \tuplet 3/2 { \ks \ks \ks \ks \ks \ks } \kv
		}
		>>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

