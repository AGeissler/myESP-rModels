#!/bin/sh
# This takes model in the folder test_box after the scripts
# test_tox_register.sh and test_box_dbmanage.sh have been run
# and adds MLC:
#  acu_gyp_ptn (acoustic gypboard partition)
#  apt_conc_cl (ceiling with void & structure)
#  apt_conc_fl (matched floor with struc and void)
# note: if initial MLC file changes then the position
# of pt_conc_cl might change (in line 163)
# the command line needs to include path to esp-r distribution
VERSION=$1
echo "  "
pwd
echo "  "
cd test_box/dbs
cp test_box_a.constrdb test_box_a.constrdb-
cd ../cfg
echo "  "
pwd
echo "  "
$VERSION/prj -mode script -file test_box_a.cfg<<XXX
b # database management
e # MLC
a # browse
b # internal partitions
1 # add
a # at end of list
acu_gyp_ptn
l # change layer
y
f # plaster
q # white gyp
y
24
!
b # append
y
k # insul
u # glasswool
y
50
!
b # append
y
f # plaster
q # white gyp
y
24
-
> # save
y
-
g # internal ceilings floors
1 # add
a # end of list
apt_conc_cl
l # change layer
y
d # wood
n # parquet
y
20
!
b # append
y
g # screeds
b # cast screed
y
30
!
b # append
y
b # concrete
c # aerated
y
50
!
b # append
y
b # concrete
n # heavy
y
150
!
b # append
y
q # gaps
a
y
a
0.1
0.1
0.1
200
!
b # append
y
h # tiles
c # ceiling mine
y
12.5
-
> # save
y
1 # add
e # copy invert
0 # page
0 # page
f # last page
d # apt_conc_cl
-
apt_conc_fl
apartment concrete floor
for medium weight structure
-
> # save
y
y
-
-
-
-
y  # update file name
-
XXX
cd ../..
