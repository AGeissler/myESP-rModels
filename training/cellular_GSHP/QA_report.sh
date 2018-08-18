#!/bin/sh
#  Last changed: 09/04/2013
#  Status: Should work ...
#  Script writes QA report
#  arguments:
#    1. configuration file name (with relative path)
#    2. QA file name (with relative path)
#
CONFIG=$1
QAFILE=$2

echo "   Creating QA report $QAFILE ... "

prj -file ${CONFIG}.cfg -mode text >> /dev/null <<XXX
m  # browse/edit/simulate
u  # results & QA reporting
N
g  # zone selection
*  # all items
-  # exit menu
m  # file names (toggle)
>  # QA report to
$QAFILE
!  # generate report
-  # exit menu
-  # exit this menu
-  # exit prj
XXX

unset CONFIG
unset QAFILE
