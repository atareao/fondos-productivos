#!/bin/bash

# Checks if the inkscape exists
command -v inkscape >/dev/null 2>&1
if [[ $? -ne 0 ]]
then
	echo >&2 "'inkscape' is required to export svg to png but it's not installed.  Aborting."
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
			inkscape $src --export-png=$dest --export-width=$width --export-height=$height
		fi
	done
done
