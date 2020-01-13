#!/bin/bash 
#
# Run (updated) dfs in default mode quietly.
#
#  USAGE: dfs_ggdh_not_conv_quiet.bash model.dfs
#
MODEL=$1
#
rm -f CFD.mon_01 TECp_1.dat
date
&>/dev/null time dfs -mode text -file $MODEL > $MODEL.txt << XYZ 
c
b
-
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
mv CFD.mon_01 $MODEL"_ggdh.mon"
mv TECp_1.dat $MODEL"_ggdh.TEC"
rm -f tmp_DFS_1 CFD_new_phi
