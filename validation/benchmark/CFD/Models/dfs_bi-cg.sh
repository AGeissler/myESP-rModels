#!/bin/sh 
#
# Run dfs in default mode.
#
#  USAGE: dfs_bi-cg.csh dfs_executable model.dfs
#
DFS=$1
model=$2
#
rm -f CFD.mon_01 TECp_1.dat
# 
time $DFS -mode text -file $model".dfd" 1> $model"_bi-cg.out" 2> $model"_bi-cg.time" << XYZ 
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
mv CFD.mon_01 $model"_bi-cg.mon"
mv TECp_1.dat $model"_bi-cg.TEC"
rm -f CFD_new_phi
