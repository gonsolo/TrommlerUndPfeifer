\score {
        \header {
                piece = "Ringeltanz"
        }
	\new StaffGroup <<
		\new Voice = "Gesang" {
			\tempo 4 = 100
			\relative a {
				\repeat volta 2 {
					d4 a' a4. g8 |
					f8( e) f( g) a4 d, |
					d4 a' a4. g8 |
				}
				\alternative {
					{ f8( e) d4 f2 }
					{ f8( e) d( e) d2 }
				}
			}
		}
		\new Lyrics \lyricsto "Gesang" {
			\lyricmode {
				Quen a o -- ma -- gen da Vir -- gen e de seu Fil -- lo on -- rrar
				% Gwen a o - madschen da Wirgen e de säu Fillo onrar
				% Deles será muit\' onrrado no seu ben, que non á par
				%De -- jesch se -- ra muit on -- ra -- do no säu ben ke non a -- par
			}
		}
		\new Lyrics \lyricsto "Gesang" {
			\lyricmode {
				De -- jesch se -- ra muit on -- ra -- do no säu ben ke \skip 1 \skip 1 \skip 1 non a -- par
			}
		}
		\new DrumStaff <<
			\drummode {
				\repeat volta 2 {
					\kvp \ka \kvp \ka |
					\kvp \ka \kvp \ka |
					\kvp \ka \kvp \ka |
				}
				\alternative {
					{ \kvp \ka \ks \ka \ks \ka \ka | }
					{ \kvp \ka \ks \ka \ks \ka_"rit." \ka | }
				}
			}
		>>

	>>
	\layout {
                indent = 4.0\cm
        }
	%\midi {}
}

