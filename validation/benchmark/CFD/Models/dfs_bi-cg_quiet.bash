#!/bin/bash 
#
# Run (updated) dfs in default mode.quietly
#
#  USAGE: dfs_bi-cg_quiet.bash model.dfs
#
MODEL=$1
#
rm -f CFD.mon_01 TECp_1.dat
date
&>/dev/null time dfs -mode text -file $MODEL > $MODEL.txt << XYZ 
c
a
-
d
e
e
-
-
n
y
XYZ
date
mv CFD.mon_01 $MODEL"_bi-cg.mon"
mv TECp_1.dat $MODEL"_bi-cg.TEC"
rm -f CFD_new_phi
