#!/bin/bash

message="(git log --pretty=%s)"
for item in $message ; do
  grep -oP '\(#.*\)' <<< "$item" | awk '{print $NF}' | grep -oP '\d+'
done
echo $?
