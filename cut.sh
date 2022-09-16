#!/bin/bash
# enter 2 parameters in the form MM:SS example 00:15 1:20 will delete video from 15 sec to 1 min 20 sec
echo $1
echo $2

ffmpeg -i input.mp4 -t "$1" -c copy part1.mp4&
ffmpeg -i input.mp4 -ss "$2" -c copy part2.mp4&
echo "file 'part1.mp4'" > filelist;
echo "file 'part2.mp4'" >> filelist;
wait;

ffmpeg -f concat -i filelist -c copy output.mp4;
rm filelist
rm part1.mp4
rm part2.mp4
