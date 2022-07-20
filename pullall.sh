#!/bin/bash
for i in {1..12}
do
    echo "rsyncing 172.16.1.$i"
    rsync -avh *.sh *.pd *.mp4 user@172.16.1.$i:~/Desktop/tv-jumbotron/.
done

