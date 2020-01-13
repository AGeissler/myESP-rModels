#!/bin/bash
# version only using bash for runs
echo "Using default version of CFD module"
echo "Using:"
which dfs
echo "Which tests?"
echo " (1) Fast (23 simulations; run time: ~15 minutes & <1hr on a slow computer)"
echo " (2) Slow (3 simulations; run time: 12x time for fast tests)"
echo " (3) All (26 simulations)"
echo " (4) Representative subset (3 simulations)"
A=none;
while [ "$A" != "1" ] && [ "$A" != "2" ] && [ "$A" != "3" ]  && [ "$A" != "4" ]
do
  if [ "$A" != "none" ]; then
     echo " ";
     echo "Please answer 1 2 3 or 4 [4].";
  fi
  read A
done
echo "Using "$DFS  >timeout
echo "For the following:" >>timeout
(( test = 0 ))
#
# Fast converging tests
#
if [ "$A" = "1" ] || [ "$A" = "3" ] ; then
  for i in basic.dfd block.dfd block2.dfd block3.dfd blockc.dfd blockh.dfd \
             blocklma.dfd basiclma.dfd co2_so.dfd hum_so.dfd lma.dfd sso.dfd \
             tm1.dfd porous.dfd tst33vol.dfd
  do
     (( test++ ));
    echo "Test "$test": "$i" with the default solver.";
    echo "Test "$test": "$i" with the default solver." >>timeout;
    cd Models; ./dfs_basic_quiet.bash $i; echo $i; cd ..;
  done
fi
#
# Fast bi-cg solver tests
#
if [ "$A" = "1" ] || [ "$A" = "3" ] ; then
  for i in basicsol.dfd
  do
    (( test++ ));
    echo "Test "$test": "$i" with the bi-cg solver.";
    echo "Test "$test": "$i" with the bi-cg solver." >> timeout;
    cd Models; ./dfs_bi-cg_quiet.bash $i; echo $i; cd ..;
  done
fi
#
# Fast ggdh solver tests
#
if [ "$A" = "1" ] || [ "$A" = "3" ] ; then
  for i in displ.dfd
  do
    (( test++ ));
    echo "Test "$test": "$i" with the ggdh solver.";
    echo "Test "$test": "$i" with the ggdh solver." >>timeout;
    cd Models; ./dfs_ggdh_not_conv_quiet.bash $i; echo $i; cd ..;
  done
fi
#
# Fast not converging tests
#
if [ "$A" = 1 ] || [ "$A" = "3" ] ; then
  for i in displ.dfd displ_si.dfd tm1_so.dfd tm2_so.dfd
  do
    (( test++ ));
    echo "Test "$test": "$i" with the default solver.";
    echo "Test "$test": "$i" with the default solver." >>timeout;
    cd Models; ./dfs_not_conv_quiet.bash $i; echo $i; cd ..;
  done
fi
#
# Slow not converging tests
#
if [ "$A" = "2" ] || [ "$A" = "3" ] ; then
  for i in blockt.dfd
  do
    (( test++ ));
    echo "Test "$test": "$i" with the default solver.";
    echo "Test "$test": "$i" with the default solver." >>timeout;
    cd Models; ./dfs_not_conv_quiet.bash $i; echo $i; cd ..;
  done
fi
#
# Slow converging tests
#
if [ "$A" = "2" ] || [ "$A" = "3" ] ; then
  for i in bi-cg.dfd tm1b.dfd tm1a.dfd
  do
    (( test++ ));
    echo "Test "$test": "$i" with the default solver.";
    echo "Test "$test": "$i" with the default solver." >>timeout;
    cd Models; ./dfs_basic_quiet.bash $i; echo $i; cd ..;
  done
fi
#
# Slow ggdh solver tests
#
if [ "$A" = "2" ] || [ "$A" = "3" ] ; then
  for i in bi-cg.dfd
  do
    (( test++ ));
    echo "Test "$test": "$i" with the bi-cg solver.";
    echo "Test "$test": "$i" with the bi-cg solver." >>timeout;
    cd Models; ./dfs_bi-cg_quiet.bash $i; echo $i; cd ..;
  done
fi
#
# Subset of porous.dfd tst33vol.dfd and tm1b.dfd
#
if [ "$A" = "4" ] ; then
  for i in porous.dfd tst33vol.dfd tm1b.dfd
  do
    (( test++ ));
    echo "Test "$test": "$i" with the default solver.";
    echo "Test "$test": "$i" with the default solver." >>timeout;
    cd Models; ./dfs_basic_quiet.bash $i; echo $i; cd ..;
  done
fi
