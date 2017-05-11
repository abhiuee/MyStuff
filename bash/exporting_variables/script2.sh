#!/bin/bash

echo "Passed Value"
echo $0 :: var1,  $var1 :: var2, $var2

var2=blah
echo "Changed Value"
echo $0 :: var1,  $var1 :: var2, $var2



