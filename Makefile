all: view
view: tropf.pdf
#	evince $<
	open $<
l: listen
listen: tropf.midi
	timidity $<
tropf.pdf tropf.midi: tropf.ly 01.ly 02.ly 03.ly 04.ly 05.ly 06.ly 07.ly 08.ly 09.ly 10.ly 15.ly klatschlied.ly ungaresca.ly
	lilypond $<
.PHONY: c clean e edit l listen
c: clean
clean:
	rm -f tropf.pdf tropf.midi
e: edit
edit:
	vi 05.ly
