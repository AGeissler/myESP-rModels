#!/bin/sh 
#
# Run dfs in default mode.
#
#  USAGE: dfs_basic.csh dfs_executable model
#    assumes model file is local and called model.dfd
#
DFS=$1
model=$2
#
rm -f CFD.mon_01 TECp_1.dat
# 
time $DFS -mode text -file $model".dfd" 1> $model".out" 2> $model".time" << XYZ 
d
e
e
-
-
n
y
XYZ
mv CFD.mon_01 $model".mon"
mv TECp_1.dat $model".TEC"
rm -f CFD_new_phi
