#!/bin/bash
for i in {1..12}
do
    echo "syncing 172.16.1.$i"
    rsync -avhz --progress *.mp4  user@172.16.1.$i:~/Desktop/tv-jumbotron/.
done
