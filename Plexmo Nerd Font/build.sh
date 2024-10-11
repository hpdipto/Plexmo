#!/bin/bash

# Directory to loop through
directory="../Plexmo/"

for item in "$directory"/*; do
    if [ -f "$item" ]; then
        echo "Processing file: $item"
        fontforge -script ./FontPatcher/font-patcher "$item" -c
    elif [ -d "$item" ]; then
        echo "Can't processing directory: $item"
    fi
done
