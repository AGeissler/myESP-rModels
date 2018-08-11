#!/bin/bash 
#
# Run (updated) dfs in default mode.
#
#  USAGE: dfs_basic.bash model
#    assumes model file is local and called model.dfd
#
MODEL=$1
#
rm -f CFD.mon_01 TECp_1.dat
# 
time dfs -mode text -file $MODEL > out.txt << XYZ
d
e
e
-
-
n
y
XYZ
echo "run times for "$MODEL
sleep 10
mv CFD.mon_01 $model".mon"
mv TECp_1.dat $model".TEC"
rm -f CFD_new_phi
