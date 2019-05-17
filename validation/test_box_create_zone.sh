#!/bin/sh
# This takes model in the folder test_box after the scripts
# test_tox_register.sh test_box_dbmanage.sh test_box_dbmadd_sg.sh
# and test_box_dbmadd_ptn.sh have been run and adds a zone with a
# frame and window:
#  the box zone is 4mx3mx2.7m with frame in front wall 2mx1.5m
#  with a vent in it. The glazing in the frame (100mm thick) is
#  dbl_glaze and a door (made of door) in the back wall with
#  an undercut.
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
c # composition
a # geometry
a # input dimensions
box
a simple room with frame window and door
a # rectangular plan
0.0 0.0 0.0
4.0 3.0 2.7
0.0
0.0


f # surface attrib
* # attribute many
a # name
* # all
-
front
right
back
left
ceiling
floor
* # attribute many
b # composition
a # walls
f # cavity_brick
a
b
c
d
-
e # ceiling
e # construction
f # roofs
f # flat roof
-
f # the floor
e # construction
h # ground floors
d # entry floor
-
* # attribute many
c # boundary
a # exterior
-
* # all
f # toggle off floor
-
f # focus floor
f # boundary
f # ground monthly
-
1
-
-
! # save

y
e # list of edges
+
c # inserted into
a # the front surface
a # within
1.0 0.9 2.0 1.5
frame
e # frames
i # wood sash
b # frame type
-
c # vent
y # save
+
c # inserted
g # into frame
e # within frame
0.1
front_glaze
d # glazing cat
a # double
e # window type
-
a # closed
y
+
c # inserted
c # into back
b # as door
0.2 0.8 2.1
back_door
c # door cat
a # door
a # door type
-
b # undercut
y
-
! # save

y
-
-
-
b # constructions
a
b # create using

> # save
-
-
c # operations
a # the box
../zones/box.opr
i # cellular office

-
-
u # QA
n # text output
a # toggle site
h # geometry verbose
>

! # generate
-
!


-
-
XXX
