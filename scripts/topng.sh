#!/bin/bash
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
			inkscape $src --export-png=$dest --export-width=$width --export-height=$height
		fi
	done
done
