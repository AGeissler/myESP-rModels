#!/bin/bash 
#
# Run (updated) dfs in default mode quietly for models that do not converge
#
#  USAGE: dfs_not_conv_quiet.bash model.dfs
#
MODEL=$1
#
rm -f CFD.mon_01 TECp_1.dat
date
&>/dev/null time dfs -mode text -file $MODEL > $MODEL.txt << XYZ 
d
y
e
e
-
-
n
y
XYZ
date
mv CFD.mon_01 $MODEL".mon"
mv TECp_1.dat $MODEL".TEC"
rm -f CFD_new_phi
