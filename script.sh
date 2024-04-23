#!/bin/bash

message="aazzbhewjnfxe(#1234)(#12345)"
IFS=$'\n'
for item in $message; do
    # Extract the numbers between (# and )
    number=$(echo "$item" | grep -oP '\(#\K\d+(?=\))')
    echo "$number"
done

