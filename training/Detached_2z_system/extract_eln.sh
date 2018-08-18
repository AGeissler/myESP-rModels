#!/bin/sh
# take current model and extract electricity net data (time-step,
# statistics not available)
#
RESFILE=$1
OUTFILE=$2

echo "   Extracting electricity net data from ${RESFILE}.elr to ${OUTFILE} ..."

res -file ${RESFILE}.res -mode text > ${RESFILE}_eln.scratch <<XXX

g # electricity results

b # tabular report




a # Total loading
b # Total generation
c # Total grid import
d # Total losses
#
b # Turn off VAR
d
f
-
>
$OUTFILE
* # toggle time format
a # not delimiters between days
^ # toggle delimiter
e # comma (c tab)
! # list data
> # switch back to screen
-
-
-
XXX

unset RESFILE
unset OUTFILE
