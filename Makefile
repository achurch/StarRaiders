.PHONY: all
all: listing.txt source.txt

listing.txt: annotated.txt
	grep -v '^!' <'$<' >'$@'

source.txt: annotated.txt
	grep -v '^!' <'$<' | grep '	' | cut -d\	 -f2- >'$@'
