#!/bin/bash
for i in {1..12}
do
   ssh user@172.16.1.$i "cd ~/Desktop/tv-jumbotron/ && git reset --hard && git pull"
done

