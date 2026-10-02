#!/bin/bash

for c in {1..5}; do
        echo "Count: $c"

        if [ $c -eq 3 ]; then
                echo "found the third item"
        fi
done

if [ -z "$1" ] || [ -z "$2" ]; then
        echo "Usage: $0 <number> <screen|file>"
else
        ct=$(ps -ef | wc -l)

        if [ $ct -gt $1 ]; then
                MSG="Maximum number of processes exceeded"
        else
                MSG="The maximum number of processes NOT exceeded"
        fi

        if [ "$2" = "file" ]; then
                echo "$(date) - $MSG" >> log.txt
        else
                echo "$MSG"
        fi
fi
