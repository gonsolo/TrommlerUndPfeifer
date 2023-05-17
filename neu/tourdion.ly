FloetenEins = \relative {
	d''4 e f g f e	|
	d2. e4 f g	|
	a g f f g e	|
	f2 e4 d c2	|
	d4 e f g f e	|
	d2 f e		|
	a2. g4 a b	|		
	a1 a2		|		
	c4 b a g f e	|		
	f2. e4 d2	|		
	a'2. g4 a b	|		
	a2 g4 f e2	|		
}

FloetenZwei = \relative {
	d''1 d2		|		
	d1 d2		|		
	f2 b a		|
	d,2 e1		|
	d1 d2		|		
	d1 c2		|		
	d1 d2		|		
	f1 f2		|		
	c1 c2		|		
	d1 d2		|		
	f1 f2		|		
	f1 c2		|	
}

ErsteStimme = {
        \drummode {
		\kv ss4 ss4 \kv ss4 \kv
		\kv ss4 ss4 \kv ss4 \kv
		\kv ss4 ss4 \kv ss4 \kv
		\kv ss4 ss4 \kv ss4 \kv
		\kv ss4 ss4 \kv ss4 \kv
		\kv ss4 ss4 \kv ss4 \kv
		\kv ss4 ss4 \kv ss4 \kv
		\kv ss4 ss4 \kv ss4 \kv
		\kv ss4 ss4 \kv ss4 \kv
		\kv ss4 ss4 \kv ss4 \kv
		\kv ss4 ss4 \kv ss4 \kv
		\kv ss4 ss4 \kv ss4 \kv
        }
}

ErsteStimmeNoten = {
	\ErsteStimme
}

ErsteStimme = {
        %\tempo 4 = 120
	\time 6/8
	\set DrumStaff.instrumentName = "Erste Stimme"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "ErsteStimme" \ErsteStimmeNoten
}

ZweiteStimmeNoten = {
        \drummode {
		\ggp
		\ggp
		\ggp
		\ggp
		\ggp
		\ggp
		\ggp
		\ggp
		\ggp
		\ggp
		\ggp
		\ggp
        }
}

ZweiteStimme = {
	\time 3/2
	\set DrumStaff.instrumentName = "Zweite Stimme"
	\set DrumStaff.midiInstrument = "melodic tom"
        \set Staff.midiPanPosition = 1.0
        \set Staff.midiExpression = 0.7
        \new DrumVoice = "Zweite Stimme" \ZweiteStimmeNoten
}

\score {
        \header {
                piece = "Tourdion"
        }
	\new StaffGroup <<
		\time 6/8
		\new Staff << \FloetenEins >>
		\new Staff << \FloetenZwei >>
                \new DrumStaff << \ErsteStimme >>
                \new DrumStaff << \ZweiteStimme>>
	>>
	\layout {
                indent = 4.0\cm
        }
}

