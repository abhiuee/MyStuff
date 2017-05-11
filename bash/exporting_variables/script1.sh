#!/bin/bash
var1=blah
var2=foo

echo Current Value
echo $0 :: var1,  $var1 :: var2, $var2

export var1
./script2.sh

echo Returned Value
echo $0 :: var1,  $var1 :: var2, $var2
