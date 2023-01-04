\version "2.22.1"

\paper {
        print-page-number = ##f
        score-markup-spacing = #'((basic-distance . 24))
}

\header {
	title = "Trommler & Pfeifer"
        subsubtitle = \markup {
                \column {
                        \line { Nur alt: 9, 10, 11 bissl, 17, 18 }
                        \line { Keine Ahnung: 19???, 22??? }
                        \line { Fehlt: 13, 14, 15, 21 }
        }
        }
        tagline = ##f
}

\markup {
        \vspace #5
}

\include "definitionen.lyh"

\include "01.ly"
\pageBreak
\include "02.ly"
\pageBreak
\include "03.ly"
\pageBreak
\include "04.ly"
\pageBreak
\include "05.ly"
\pageBreak
\include "06.ly"
\pageBreak
\include "07.ly"
\pageBreak
\include "08.ly"
\pageBreak
\include "09.ly"
\pageBreak
\include "10.ly"
\pageBreak
\include "11.ly"
\pageBreak
\include "12.ly"
\pageBreak
\include "13.ly"
\pageBreak
\include "14.ly"
\pageBreak
\include "15.ly"
\pageBreak
\include "16.ly"
\pageBreak
\include "17.ly"
\pageBreak
\include "18.ly"
\pageBreak
\include "19.ly"
\pageBreak
\include "20.ly"
\pageBreak
\include "21.ly"
\pageBreak
\include "22.ly"
\pageBreak

\include "klatschlied.ly"
\include "vierer_medley.ly"
\include "ungaresca.ly"
\include "heiduttentanz.ly"
