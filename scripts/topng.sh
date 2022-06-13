#!/bin/bash

# Checks if the inkscape exists
if command -v inkscape >/dev/null 2>&1
then
	execute=inkscape
# Checks if ImageMagick's convert exists
elif convert --version >/dev/null 2>&1
then
	echo >&2 "'inkscape' is preferred to export svg to png but it's not installed.. Trying with 'convert'"
	execute=convert
else
	echo >&2 "'inkscape' or 'convert' are required to export svg to png but they are not found on your system.."
	exit 1
fi

parentdir=$(dirname $(dirname $(readlink -f $0)))
for i in $parentdir/src/*.svg
do
	src=$i
	dest=$(basename $i)
	destfile=${dest/.svg/.png}
	for j in $(ls -d $parentdir/fondos/*)
	do
		if [ "$j" != '.' ] && [ "$j" != '..' ]
		then
			res=$(basename $j)
			width=${res/x*/}
			height=${res/*x/}
			dest=$parentdir/fondos/$res/$destfile
			echo ""
			echo "Exporting $destfile (as ${width}x${height})"
			echo "---------------------------------------"
			if [[ $execute == "inkscape" ]]
			then
				inkscape "$src" --export-type="png" --export-filename=$dest --export-width=$width --export-height=$height
			elif [[ $execute == "convert" ]]
			then
				convert -background none -size "${width}x${height}" "$src" "$dest"
			fi
		fi
	done
done
