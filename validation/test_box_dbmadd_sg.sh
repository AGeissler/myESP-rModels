#!/bin/sh
# This takes model in the folder test_box after the scripts
# test_box_register.sh and test_box_dbmanage.sh have been run
# and adds MLC:
#  single_glazing (for use between buffer & room)
#  conc_pla_ptn (concrete plaster partion)
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
$VERSION/prj -mode text -file test_box_a.cfg<<XXX
b # database management
e # MLC
a # browse
d # glazing category
1 # add
a # at end of list
single_glazing
l # select the layer
y # confirm
m # glass cat
c # clear float
y # use it
6 # thickness
e # type
b # tmc
f # optics
c # pick SCF8783_06nb
-
-
> # save
y
-
b # internal partitions
1 # add
a # at end of list
conc_pla_ptn
l # change to plaster
y
f # plaster
a # dense plaster
y
20
!
b # append
y
0 # page
r # gaps
a # air gap
y
a # accept
0.17
0.17
0.17
10 # thickness
!
b # append
y
b # concrete
l # heavy mix
y
150
!
b # append
y
0 # page
r # gaps
a # air gap
y
a # accept
0.17
0.17
0.17
10 # thickness
!
b # append
y
f # plaster
a # dense plaster
y
20
-
>
y
-
-
-
-
y
-
XXX
pwd
cd ../..
pwd