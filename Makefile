all: view
view: tropf.pdf
	evince $<
l: listen
listen: tropf.1.midi
	timidity $<
tropf.pdf: tropf.ly 01.ly 02.ly
	lilypond $<
.PHONY: c clean e edit l listen
c: clean
clean:
	rm -f tropf.pdf tropf.midi
e: edit
edit:
	vi tropf.2.ly
