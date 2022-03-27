#!/bin/bash

#Script to concatonate many mp4 files together into a single mp4 file.

# ./bashtest.sh | cat > moviestomerge.txt
for i in *.mp4
do
echo "file ./$i" >> moviestomerge.txt
done


ffmpeg -safe 0 -f concat -i moviestomerge.txt -vcodec copy -acodec aac -strict -2 -b:a 384k merged.mp4
