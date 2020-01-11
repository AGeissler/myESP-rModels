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
$VERSION/prj -mode text -file test_box_a.cfg<<XXX
s # save as
test_box_m.cfg
test_box_m
m # browse edit
c # zone composition
a # attribution
a # choose box
f # attributes
h # front glaze
h # USE
0 # page
s # window
-
b # crack
y
-
-
!

y
-
-
-
e # air flow
c
c # scan attributes
*
-


minimal network with door crack frame vent crack
a # accept
../nets/test_box_m.3dafn
n # summary
- # exit menu
y # save
u # QA report
n
a
c
>
../doc/test_box_m.contents
!
-
-
-
XXX
cd ../..
