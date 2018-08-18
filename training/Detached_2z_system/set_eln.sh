#!/bin/sh
#  Last changed: 11/07/2014
#  Status: development
#  Script changes electric network file in .cfg. <set_eln> expects two
#  arguments:
#    1. configuration file name (with relative path)
#    2. eln file name (with relative path)
#
CONFIG=$1
ELNFILE=$2

echo "$CONFIG, electric network file: $ELNFILE "
prj -file $CONFIG -mode text >> /dev/null <<XXX

m  # browse/edit/simulate
f  # electrical
y  # proceed with definition?
n  # display a synopsis?
$ELNFILE
-
y
$ELNFILE
y
!  # save model
y  # update configuration file
y  # save connection file name
-  # exit menu
-  # exit prj
XXX

unset CONFIG
unset ELNFILE
