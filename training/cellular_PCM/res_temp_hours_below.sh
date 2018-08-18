#!/bin/sh
#  Last changed: 11/08/2017
#  Status: development
#  Script extracts hours under certain temperature levels..
#  Call: ./xxx.sh xxx
#  One argument expected:
#    1. results file name (with relative path w/o extension)
#
RESFILE=$1

echo "   Extracting hours below for zone temperatures "
echo "     from ${RESFILE}.res "
echo "     to   ${RESFILE}_t-below.dat "
echo "   for periods 0:00 to 6:00, 7:00 to 17:00 and 18:00 to 24:00 h "
echo "   to avoid evaluation of natural ventilation periods during "
echo "   winter period ... "

res -file ${RESFILE}.res -mode text > ${RESFILE}_t-below_res.scratch  <<ZZZ

d # Enquire about
4 # Select zones
a # manager_a
b # manager_b
c # corridor
-
> # switch output to file
${RESFILE}_t-below.dat
File: ${RESFILE}_t-below.dat # title for 3rd party graphic
^ # change delimiter
e # comma
d # hours below a value
+ # Filter
f # time
0 6
0 6
0 6 
b # Temperature
a # Zone db T
20
b # temperatures
a # Zone db T
19
b # temperatures
a # Zone db T
18
b # temperatures
a # Zone db T
17
b # temperatures
a # Zone db T
16
b # temperatures
a # Zone db T
15
b # temperatures
a # Zone db T
14
b # temperatures
a # Zone db T
13
b # temperatures
a # Zone db T
12
b # temperatures
a # Zone db T
11
b # temperatures
a # Zone db T
10
+
+
f
7 17
7 17
7 17
b # Temperature
a # Zone db T
20
b # temperatures
a # Zone db T
19
b # temperatures
a # Zone db T
18
b # temperatures
a # Zone db T
17
b # temperatures
a # Zone db T
16
b # temperatures
a # Zone db T
15
b # temperatures
a # Zone db T
14
b # temperatures
a # Zone db T
13
b # temperatures
a # Zone db T
12
b # temperatures
a # Zone db T
11
b # temperatures
a # Zone db T
10
+
+
f
18 24
18 24
18 24
b # Temperature
a # Zone db T
20
b # temperatures
a # Zone db T
19
b # temperatures
a # Zone db T
18
b # temperatures
a # Zone db T
17
b # temperatures
a # Zone db T
16
b # temperatures
a # Zone db T
15
b # temperatures
a # Zone db T
14
b # temperatures
a # Zone db T
13
b # temperatures
a # Zone db T
12
b # temperatures
a # Zone db T
11
b # temperatures
a # Zone db T
10
-
> # toggle output to file
- # exit 
- # exit
- # exit 
ZZZ

unset RESFILE
