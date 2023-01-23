\score {
        \header {
                piece = "Ringeltanz (TODO: Schluss Ritardando)"
        }
	\new StaffGroup <<
		\new DrumStaff <<
			\drummode {
				r4 r4 r4 r4
				r4 r4 r4 r4
				r4 r4 r4 r4
				r4 r4 r4 r4
				r4 r4 r4 r4

				\kvp \ka \kvp \ka
				\kvp \ka \kvp \ka
				\ka \ks \ks \ka \ka
				\ka \ks \ks \ka \ka
			}
		>>
		\new Lyrics {
			\lyricmode {
				Quen a omagen da Virgen e de seu Fillo onrrar
				% Gwen a o - madschen da Wirgen e de säu Fillo onrar
				% Deles será muit\' onrrado no seu ben, que non á par
				Dejesch sera muit onrado no säu ben ke non apar
			}
		}

	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

