#!/bin/bash

ID3V2="id3v2"

which $ID3V2 >/dev/null || {
	echo "$ID3V2 not found ... exiting."
	exit 1
}

# Find MP3 files without ID3 tags (looking for set artist at least)
SAVEIFS=$IFS

IFS=$(echo -en "\n\b")

for file in `find . -name \*[mM][pP]3 -type f`
do
	$ID3V2 -l "$file" | grep "Artist:[ ]*$" >/dev/null && {
		echo "$file"
	}
done

IFS=$SAVEIFS
