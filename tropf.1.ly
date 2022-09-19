\version "2.22.1"

\header {
	title = "Trommler & Pfeifer 1"
        tagline = ""
}

global = {
        \time 4/4
	\tempo 4 = 120
}

GrossEins = \drummode {
	tomfh16 tomfh16 tomfh16 tomfh16 
        tomfh8 tomfh16 tomfh16 
        tomfh8 tomfh16 tomfh16 
        tomfh8 tomfh16 tomfh16 
}

GrossZwei = \drummode {
	tomfh16 tomfh16 tomfh16 tomfh16 
        tomfh8 tomfh8
	tomfh16 tomfh16 tomfh16 tomfh16 
        tomfh8 tomfh8
}

GrossDrei = \drummode {
	tomfh16 tomfh16 tomfh16 tomfh16 
        tomfh2.
}

KleinEins = \drummode {
	tommh16 tommh16 tommh16 tommh16 
        tommh4
        tommh4
        tommh4
}

KleinZwei = \drummode {
	tommh16 tommh16 tommh16 tommh16 
        tommh8 tommh8
	tommh16 tommh16 tommh16 tommh16 
        tommh8 tommh8
}

KleinDrei = \drummode {
	tommh16 tommh16 tommh16 tommh16 
        tommh2.
}

KleineTrommelNoten = \drummode {
        \KleinEins | \KleinEins | \KleinZwei | \KleinEins |
        \KleinEins | \KleinEins | \KleinZwei | \KleinEins |
        \KleinEins | \KleinEins | \KleinZwei | \KleinEins |
        \KleinEins | \KleinEins | \KleinZwei | \KleinDrei |
}

KleineTrommel = \new DrumVoice <<
        \new DrumVoice = "KleineTrommel" \KleineTrommelNoten
	\set Staff.instrumentName = #"Kleine"
	\set Staff.midiInstrument = #"melodic tom"

>>

GrosseTrommelNoten = {
        \GrossEins | \GrossEins | \GrossZwei | \GrossEins |
        \GrossEins | \GrossEins | \GrossZwei | \GrossEins |
        \GrossEins | \GrossEins | \GrossZwei | \GrossEins |
        \GrossEins | \GrossEins | \GrossZwei | \GrossDrei |
}

GrosseTrommel = \new DrumVoice <<
        \new DrumVoice = "GrosseTrommel " \GrosseTrommelNoten
	\set Staff.instrumentName = #"Grosse"
	\set Staff.midiInstrument = #"melodic tom"

>>

\score {
	\new StaffGroup <<
                \new DrumStaff << \global \KleineTrommel >>
                \new DrumStaff << \global \GrosseTrommel >>
	>>
	\layout {}
	\midi {}
}

