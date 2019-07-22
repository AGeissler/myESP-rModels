#!/bin/sh
# This takes model in the folder test_box after the scripts
# test_box_create_zone.sh & test_box_define_control.sh have
# been run test_box_flow.sh copies test_box_a.cfg & test_box_a.cnn
# and changes the glazing from CLOSED to CRACK
# and creates a flow network based on surface attributes.
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
$VERSION/prj -mode text -file test_box_medsur.cfg<<XXX
m # browse edit
c # composition
a # geometry
a # box zone
e # surf list
* # delete
d # left
-
+ # add
a # existing verts
4 1 5 8
lefted
-
f # attributes
i # lefted
e # constructions
a # opaque
f # cavity brick
f # envir
a # outside
-
-
-
! # save

y
-
y # overwrite
-
b # constructions
#
y
-
-
u # Qa
y # markdown
a
c
d
>
../doc/test_box_medit.md
! # generate
-
-
-
XXX
cd ../..
echo "You can now work with revised test_box_medsur.cfg"
echo "without disturbing test_box_a.cfg or test_box_m.cfg"
echo "  "
