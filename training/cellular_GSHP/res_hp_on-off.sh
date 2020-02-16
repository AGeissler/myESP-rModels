#!/bin/sh
#  Last changed: 20/11/2017
#  Status: development
#
#  Script extracts on-off status of heat pump.
#
#  One argument expected:
#    1. results file name (with relative path w/o extension)
#
RESFILE=$1

# Set output file name:
OUTFILE=${RESFILE}_hp_on-off

printf "\n   Extracting on-off state of *SHP from "
printf "\n     ${RESFILE}.res, "
printf "\n   writing to "
printf "\n     ${OUTFILE}"

res -file ${RESFILE}.res -mode text > ${OUTFILE}_res.scratch <<XXX

e  # Plant results

h  # additional output
a  # *SHP
-  # exit selection
a  # Heat output
-  # exit selection ((multiple selections: repeat from h ...))
h  # additional output
a  # *SHP
-  # exit selection
d  # Device on/off status
-  # exit selection ((multiple selections: repeat from h ...))
>  # toggle output to file
${OUTFILE}.dat
   # accept default for 3rd party file
^  # delim
e  # a) normal spaces; c) tab; e) comma
*  # toggle time format
!  # list data
>  # flush file
-  # exit menu
-  # Quit res
XXX

rm ${OUTFILE}_res.scratch

printf "  ... done.\n"

unset RESFILE
unset OUTFILE

# Heat pump "additional output" options (ASHP):
#
# a Heat output                        h Apparent power
# b Coefficient of performance         i Defrost status
# c Ambient temperature
# d Device on/off status                 ________________________________
# e Return water set point             < index select
# f Real power                         ? help
# g Reactive power                     - exit this menu
