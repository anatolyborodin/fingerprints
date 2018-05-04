.PHONY: all

PNG := \
	github.png \
	gitlab.png \
	localhost.png \
	user-laptop.png \
	#

TXT2PNG := \
	convert -background black -fill white \
	-font DejaVu-Sans-Mono -pointsize 16 \
	-trim +repage \
	-posterize 2 \
	-strip

all: $(PNG)

clean:
	rm -f $(PNG)
	
%.png: %.txt
	$(TXT2PNG) text:$< $@
