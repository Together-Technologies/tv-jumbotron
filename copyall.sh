#!/bin/bash
if [ "X$1" == "X" ]; then
    echo usage: $0 [FILENAME]
    exit 0
fi

for i in {1..12}
do
   scp $1  user@172.16.1.$i:~/dev/pd/tv/.
done

