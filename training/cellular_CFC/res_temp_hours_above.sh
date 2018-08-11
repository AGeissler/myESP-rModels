#!/bin/sh
#  Last changed: 08/11/2017
#  Status: development
#  Script extracts hours over certain temperature levels.
#  Call: ./xxx.sh xxx
#  One argument expected:
#    1. results file name (with relative path w/o extension)
#
RESFILE=$1

echo "   Extracting hours above for zone temperatures "
echo "     from ${RESFILE}.res "
echo "     to   ${RESFILE}_t-above.dat "
echo "   without any filtering ... "

res -file ${RESFILE}.res -mode text > ${RESFILE}_t-above.scratch  <<ZZZ

d # Enquire about
4 # Select zones
a # manager_a
b # manager_b
c # corridor
-
> # switch output to file
${RESFILE}_t-above.dat
File: ${RESFILE}_t-above.dat # title for 3rd party graphic
^ # change delimiter
e # comma
c # hours above a value
b # Temperature
a # Zone db T
26
b # temperatures
a # Zone db T
27
b # temperatures
a # Zone db T
28
b # temperatures
a # Zone db T
29
b # temperatures
a # Zone db T
30
b # temperatures
a # Zone db T
31
b # temperatures
a # Zone db T
32
b # temperatures
a # Zone db T
33
b # temperatures
a # Zone db T
34
b # temperatures
a # Zone db T
35
b # temperatures
a # Zone db T
36
b # temperatures
a # Zone db T
37
b # temperatures
a # Zone db T
38
b # temperatures
a # Zone db T
39
b # temperatures
a # Zone db T
40
-
> # toggle output to file
- # exit 
- # exit
- # exit 
ZZZ

unset RESFILE
