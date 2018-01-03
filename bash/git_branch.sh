#!/bin/bash

a=$(git branch 2>/dev/null | grep '^*' | awk '{ print $2; }')

if [ ! -z $a ]
then 
  echo "$a"
else  
  echo "" 
fi
