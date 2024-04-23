#!/bin/bash

message="aazzbhewjnfxe (#1234) (#12345)
        vvvvvvvvvvvvvvvvvvvvvvvvv(#1111)"
IFS=$'\n'
for item in $message; do
    grep -oP '\(#\K\d+(?=\))' <<< "$item" | awk '{print $NF}'
done


