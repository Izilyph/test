#!/bin/bash

message="$(git log --pretty=%s)"
IFS=$'\n'
for item in $message; do
    grep -oP '\(#\K\d+(?=\))' <<< "$item" | awk '{print $NF}'
done


