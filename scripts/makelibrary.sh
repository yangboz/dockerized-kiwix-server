#!/bin/bash
FILES=../zims/*.zim
LIBRARY_PATH=/library.xml

for f in $FILES
do
  echo $f
  kiwix-manage $LIBRARY_PATH add $f
done