#!/bin/bash
for i in {1..12}
do
   rsync -avhz --progress *.mp4 *.wav  user@172.16.1.$i:~/dev/pd/tv/
done
