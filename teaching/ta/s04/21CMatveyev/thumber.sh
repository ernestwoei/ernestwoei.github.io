#!/bin/bash
rm -Rf Thumbnails
mkdir Thumbnails
for i in `ls *.jpg `; do djpeg $i | pnmscale .5 | cjpeg > Thumbnails/$i && echo "<a href=../$i><img src=$i></a>" >> Thumbnails/index.html; done

