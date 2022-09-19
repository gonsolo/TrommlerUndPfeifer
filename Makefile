all: view
view: tropf.1.pdf
	evince $<
listen: tropf.1.midi
	timidity $<
tropf.1.pdf tropf.1.midi: tropf.1.ly
	lilypond $<
.PHONY: c clean e edit
c: clean
clean:
	rm -f tropf.1.pdf tropf.1.midi
e: edit
edit:
	vi tropf.1.ly
