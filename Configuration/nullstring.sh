#!/usr/bin/sh
A=
echo $A
echo "$A"X
echo "X$A"

[ "X$A" = "X" ] && echo "\$A is null or empty"
