TROMMLER_STUECKE = 01.ly 02.ly 03.ly 04.ly 05.ly 06.ly 07.ly 08.ly 09.ly 10.ly 11.ly 12.ly 13.ly 14.ly 15.ly \
	 16.ly 17.ly 18.ly 19.ly 20.ly 21.ly hell_awaits.ly
MEDLEYS = medley02.ly medley04.ly medley09.ly medley12.ly medley14.ly medley15.ly
PFEIFER_TROMMLER_STUECKE = heiduckentanz.ly ringtanz.ly tourdion.ly to_heaven.ly traubenritt.ly ungaresca.ly
PFEIFER_STUECKE = pfeifer.ly

STUECKE = $(TROMMLER_STUECKE) $(MEDLEYS) $(PFEIFER_TROMMLER_STUECKE) $(PFEIFER_STUECKE) 

all: view
#all: listen
view: tropf.pdf
	open $<
l: listen
listen: listen_midi
listen_midi: tropf.midi
	timidity $<
listen_wav: tropf.wav
	pw-play $<
listen_mp3: tropf.mp3
	cvlc tropf.mp3
tropf.pdf tropf.midi: tropf.ly definitionen.lyh zusammenfassung.ly $(STUECKE)
	rm -f tropf.midi
	lilypond $<
book: tropf-book.pdf
tropf-book.pdf: tropf.pdf
	pdfbook2 $<
tropf.wav: tropf.midi
	timidity -Ow -o $@ $<
tropf.mp3: tropf.wav
	ffmpeg -i $< $@
.PHONY: book c clean e edit l listen
c: clean
clean:
	rm -f tropf.pdf tropf-book.pdf *.midi *.wav *.mp3
e: edit
edit:
	vi tourdion.ly
