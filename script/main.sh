#!/bin/bash

DIRECTORY=$1
shift
FILES=$@

LOGFILE="C:/Users/Administrator/Documents/Projects/ManedCode/script/log_watchman.txt"

echo "Changes detected at $(date)" >> $LOGFILE

for FILE in $FILES; do
    FULL_PATH="$DIRECTORY/$FILE"
    echo "File: $FULL_PATH" >> $LOGFILE
    echo "Changes:" >> $LOGFILE
    cat $FULL_PATH >> $LOGFILE
    echo "-----------------------------" >> $LOGFILE
done