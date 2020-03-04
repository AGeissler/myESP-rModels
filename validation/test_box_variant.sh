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
echo "Opening test_box_m.cfg..."
pwd
echo "  "
$VERSION/prj -mode script -file test_box_m.cfg<<XXX
j # variant
edsur
editing of geometry
j # zone constructions
a
-
n
-
XXX
cd ../..
echo "  "
echo "You can now work with test_box_medsur.cfg"
echo "without disturbing test_box_a.cfg or test_box_m.cfg"
echo "  "
