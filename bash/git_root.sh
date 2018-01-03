#!/bin/bash

a=$(git rev-parse --show-toplevel 2>/dev/null)

if [ ! -z $a ]
then 
  echo "$a" 
else  
  echo "." 
fi
