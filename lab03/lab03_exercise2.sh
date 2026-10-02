#!/bin/bash

# this is a comment

# for loop to count to 10
for c in {1..5}; do
        echo "Count: $c"

        # if does not use == it uses -eq
        # note the spaces around if [ ]
        if [ $c -eq 3 ]; then
                echo "found the third item"
        fi
done

# how do we pass parameters from the command line
# into this bash script. 
# we use the notation $1, $2 etc to represent
# the first, second etc parameter into this script
if [ -z $1 ]; then
        echo "$(date) - You didn't pass any paraemters to $0" >> process.log
else
        ct=$(ps -ef | wc -l)
        if [ $ct -gt $1 ]; then
                echo "$(date) - Maximum number of processes exceeded" >> process.log
        else
                echo "$(date) - The maximum number of processes NOT exceeded" >> process.log
        fi
fi
