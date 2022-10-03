all: view
view: tropf.pdf
	evince $<
l: listen
listen: tropf.midi
	timidity $<
tropf.pdf tropf.midi: tropf.ly 01.ly 02.ly 03.ly 04.ly
	lilypond $<
.PHONY: c clean e edit l listen
c: clean
clean:
	rm -f tropf.pdf tropf.midi
e: edit
edit:
	vi 04.ly
