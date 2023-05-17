KingNoten = {
	\clef "G_8"

	\partial 2 r2

	<e b>1 ~				|
	<e b>2. <f c'>8 <e b>8			|
	<bes f'>1 ~				|
	<bes f'>2. <e b>4			|
	<f c'>1 ~				|
	<f c'>2. <f c'>8 <e b>8			|
	<bes f'>1 ~				|
	<bes f'>2. <e' b'>4			|
	<f' c''>1 ~				|
	<f' c''>2. <bes f'>8 <e b>8		|
	<f c'>1 ~				|
	<f c'>1					|
	<bes f'>2 e4 \glissando e' \glissando	|
}

King = {
	\set Staff.instrumentName = "King"
	\set Staff.midiInstrument = "overdriven guitar"
        \set Staff.midiPanPosition = -0.5
        \set Staff.midiExpression = 0.7
        \new Voice = "King" \KingNoten
}

HannemanNoten = \relative {
	\clef "G_8"

	\partial 2 r2

	e16 e e e e e e e e e e e e e e e |		
	e e e e e e e e e e e e e e e e |		
	e e e e e e e e e e e e e e e e |		
	e e e e e e e e e e e e e e e e |		
	e e e e e e e e e e e e e e e e |		
	e e e e e e e e e e e e e e e e |		
	e e e e e e e e e e e e e e e e |		
	e e e e e e e e e e e e e e e e |		
	e e e e e e e e e e e e e e e e |		
	e e e e e e e e e e e e e e e e |		
	e e e e e e e e e e e e e e e e |		
	e e e e e e e e e e e e e e e e |		
	e e e e e e e e e e e e e e e e |		
}

Hanneman = {
	\set Staff.instrumentName = "Hanneman"
	\set Staff.midiInstrument = "overdriven guitar"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new Voice = "Hanneman" \HannemanNoten
}

KleineTrommelNoten = {
        \drummode {
		\partial 2 r2

		\kv \kv r4 \kv
		r4 \kv r4 \kv
		r4 \kv r4 \kv
		r4 \kv r4 \kv
		r4 \kv r4 \kv
		r4 \kv r4 \kv
		r4 \kv r4 \kv
		r4 \kv r4 \kv
		r4 \kv r4 \kv
		r4 \kv r4 \kv
		r4 \kv r4 \kv
		r4 \kv r4 \kv
		r4 \kv r4 \kv
        }
}

KleineTrommel = {
	\set DrumStaff.instrumentName = "Kleine Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "Kleine Trommel" \KleineTrommelNoten
}

GrosseTrommelNoten = {
        \drummode {
		\partial 2 r8 r16 \gz \gz \gv

		\gv \gv r4 \gv
		r4 \gv r4 \gv
		r4 \gv r4 \gv
		r4 \gv r4 \gv
		r4 \gv r4 \gv
		r4 \gv r4 \gv
		r4 \gv r4 \gv
		r4 \gv r4 \gv
		r4 \gv r4 \gv
		r4 \gv r4 \gv
		r4 \gv r4 \gv
		r4 \gv r4 \gv
		r4 \gv r4 \gv
        }
}

GrosseTrommel = {
	\set DrumStaff.instrumentName = "Grosse Trommel"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "Grosse Trommel" \GrosseTrommelNoten
}

\score {
        \header {
                piece = "Hell Awaits"
        }
	\new StaffGroup <<
		\new Staff << \King >>
		\new Staff << \Hanneman >>
                \new DrumStaff << \KleineTrommel >>
                \new DrumStaff << \GrosseTrommel >>
	>>
	\layout {
                indent = 4.0\cm
        }
	\midi {}
}

