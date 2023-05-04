\score {
        \header {
                piece = "Heiduckentanz"
        }
	\new StaffGroup <<
                \new DrumStaff <<
			\drummode {
				\repeat volta 4 {
					r1
				}
				\repeat volta 4 {
					\kv_"Dan Solo" ss8 \ka \kv ss4
				}
				\repeat volta 4 {
					\kv_"Alle" ss8 \ka \kv ss4
				}
				\tuplet 3/2 { \ks \ks \ks \ks \ks \ks } \kv \tuplet 3/2 { \ks \ks \ks \ks \ks \ks } \kv
		}
		>>
	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

