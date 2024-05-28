#!/bin/bash

DIRECTORY=$1
shift
FILES=$@

echo "Changes detected at $(date)"

for FILE in $FILES; do
    FULL_PATH="$DIRECTORY/$FILE"
    echo "File: $FULL_PATH"
    echo "Changes:"
    cat $FULL_PATH
    echo "-----------------------------"
done