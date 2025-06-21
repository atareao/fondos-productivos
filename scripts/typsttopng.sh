#!/bin/bash

# Checks if ImageMagick's convert exists
if convert --version >/dev/null 2>&1
then
    echo "Using 'convert' from ImageMagick to export svg to png"
else
	echo >&2 "'inkscape' or 'convert' are required to export svg to png but they are not found on your system.."
	exit 1
fi

parentdir=$(dirname $(dirname $(readlink -f $0)))
for i in $parentdir/src/*.typ; do
	src=$i
	dest=$(basename $i)
	pdffile=${src/.typ/.pdf}
	destfile=${dest/.typ/.png}
    typst compile "$src"
	for j in $(ls -d $parentdir/fondos/*); do
		if [ "$j" != '.' ] && [ "$j" != '..' ]; then
			res=$(basename $j)
			width=${res/x*/}
			height=${res/*x/}
			dest=$parentdir/fondos/$res/$destfile
			echo ""
			echo "Exporting $destfile (as ${width}x${height})"
			echo "---------------------------------------"
            magick -density 300 "$pdffile" -quality 100 -size "${width}x${height}" -alpha remove "$dest"
		fi
	done
    rm "$pdffile"
done
