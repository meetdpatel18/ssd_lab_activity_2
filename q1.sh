#!/bin/bash

# Take file input
read pathToTxtFile

# Count the number of lines
line_count=$(awk 'END{print NR}' $pathToTxtFile)

# Find the middle of the file
midLine=$((line_count/2))

# adjust the middle according to odd/even lines
if [[ $((line_count%2)) -eq 1 ]]
then
    midLine=$((midLine+1))
fi

# use awk command to print the middle line of the text file
awk 'NR == mid' mid="${midLine}" $pathToTxtFile
