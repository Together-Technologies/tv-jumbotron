#!/bin/bash
if [ $# -gt 1 ]; then
    echo "Error: compound cmd must be in single quotes e.g. 'shutdown -h \"now\"'"
    exit 0
fi
x="$1"
# x=`printf "%q\n" "$1"`
for i in {1..12}
do
    echo "ssh user@172.16.1.$i \"$x\""
    ssh user@172.16.1.$i "$x"
done
