#!/bin/sh
# This takes model in the folder test_box after the scripts
# test_tox_register.sh test_box_dbmanage.sh test_box_dbmadd_sg.sh
# test_box_dbmadd_ptn.sh and test_box_create_zone.sh
# and creates and associates a control file with the model.
# 
# Control is a simple ideal control that is only active on weekdays
# between 9-17. There is a mixed mode sensor with a 80/20 split and
# a mixed mode actuator with a 70/30 split.
# The max heating and cooling is set to 2.5 kW with set-points of
# 21 C for heating and 26 C for cooling.
#
# the command line needs to include path to esp-r distribution
VERSION=$1
echo "  "
pwd
echo "  "
cd test_box/cfg
echo "  "
pwd
echo "  "
$VERSION/prj -mode text -file test_box_a.cfg<<XXX
m # browse edit
j # zone controls
../ctl/test_box_a.ctl
b # new file
a # follow calendar
c # mixed heating and cooling
3 # periods in weekdays
0 9.0 17.0 # start time of periods
1 # sat
1 # sun
1 # hol
e # edit weekdays
a # sensor details
b # senses mix of zone db temp and MRT
a # box
80 # convective
N # no nested
b # actuator
b # mix of convection and radiation
a # box
70 # convective
c # period data
b # 9-17 period
2 # change law
a # basic controller
-
b # max heat
2500.0
d # max cool
2500.0
f # heat set-point
21
g # cool set-point
26
-
Y
-
-
d # link
> # save

-
Y
Y
-
-
XXX
cd ../..
