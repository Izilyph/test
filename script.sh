#!/bin/bash

message="foo(#1234) bar foo"
for item in $message ; do
  grep -oP '\(#.*\)' <<< "$item" | awk '{print $NF}' | grep -oP '\d+'
done
echo $?
