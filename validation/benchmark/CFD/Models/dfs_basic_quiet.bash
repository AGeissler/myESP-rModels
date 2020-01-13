#!/bin/bash 
#
# Run (updated) dfs in default mode. with output to null
#
#  USAGE: dfs_basic_quiet.bash  model.dfd
#    assumes model file is local and called model.dfd
#
MODEL=$1
#
rm -f CFD.mon_01 TECp_1.dat
date
&>/dev/null time dfs -mode text -file $MODEL > $MODEL.txt << XYZ 
d
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
