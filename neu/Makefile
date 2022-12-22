PIECES = 01.ly 02.ly 03.ly 04.ly 05.ly 06.ly 07.ly 08.ly 09.ly 10.ly 11.ly 12.ly 13.ly 14.ly 15.ly \
	 16.ly 17.ly 18.ly 19.ly 20.ly 21.ly 22.ly

all: view
view: tropf.pdf
	open $<
l: listen
listen: tropf.midi
	timidity $<
tropf.pdf tropf.midi: tropf.ly definitionen.lyh $(PIECES) klatschlied.ly ungaresca.ly heiduttentanz.ly
	lilypond $<
.PHONY: c clean e edit l listen
c: clean
clean:
	rm -f tropf.pdf *.midi
e: edit
edit:
	vi 12.ly
