#!/bin/bash
for i in {1..12}
do
   ssh 172.16.1.$i "cd ~/dev/pd/tv && git reset --hard && git pull"
done

