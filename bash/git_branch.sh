#!/bin/bash

a=$(git branch 2>/dev/null | grep '^*' | awk '{ print $2; }')

if [ ! -z $a ]
then 
  echo "[branch-$a]"
else  
  echo "" 
fi
