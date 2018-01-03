#!/bin/bash

b=$(git remote -v 2>/dev/null | head -n1 | awk '{print $2}' | sed -e 's,.*:\(.*/\)\?,,' -e 's/\.git$//')

if [ ! -z $b ]
then
  a=`git_branch.sh`
  echo " ($b-$a)"
else 
  echo ""
fi
