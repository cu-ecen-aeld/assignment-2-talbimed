#!/bin/bash
if [ $# -ne 2 ]; then
    echo 'parameters are not specified'
    exit 1
fi

if [ ! -e $1 ]; then
    echo "$1 path does not exist"
    exit 1
fi
if [ ! -d $1 ]; then
    echo "$1 is not a directory"
    exit 1
fi

# Count the number of files
file_count=$(find "$1" -type f 2>/dev/null | wc -l)

# Count the number of matching lines
matching_lines=$(grep -r "$2" "$1" 2>/dev/null | wc -l)


echo "The number of files are $file_count and the number of matching lines are $matching_lines"