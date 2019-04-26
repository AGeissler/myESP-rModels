#!/bin/bash
# version only using bash for runs (to work on MSYS)
echo "Using default version of CFD module"
echo "Using:"
which dfs
echo " Doing all (26 simulations)"
(( test = 0 ))
#
# Fast converging tests
#
  for i in basic.dfd block.dfd block2.dfd block3.dfd blockc.dfd blockh.dfd \
             blocklma.dfd basiclma.dfd co2_so.dfd hum_so.dfd lma.dfd sso.dfd \
             tm1.dfd porous.dfd tst33vol.dfd
    do
     (( test++ ));
     echo "Test "$test": "$i" with the default solver.";
     cd Models; ./dfs_basic.bash $i; cd ..;
    done
#
# Fast bi-cg solver tests
#
  for i in basicsol.dfd
  do
    (( test++ ));
    echo "Test "$test": "$i" with the bi-cg solver.";
    cd Models; ./dfs_bi-cg.bash $i; cd ..;
  done
#
# Fast ggdh solver tests
#
  for i in displ.dfd
  do
    (( test++ ));
    echo "Test "$test": "$i" with the ggdh solver.";
    cd Models; ./dfs_ggdh_not_conv.bash $i; cd ..;
  done
#
# Fast not converging tests
#
  for i in displ.dfd displ_si.dfd tm1_so.dfd tm2_so.dfd
  do
    (( test++ ));
    echo "Test "$test": "$i" with the default solver.";
    cd Models; ./dfs_not_conv.bash $i; cd ..;
  done
#
# Slow not converging tests
#
  for i in blockt.dfd
  do
    (( test++ ));
    echo "Test "$test": "$i" with the default solver.";
    cd Models; ./dfs_not_conv.bash $i; cd ..;
  done
#
# Slow converging tests
#
  for i in bi-cg.dfd tm1b.dfd tm1a.dfd
  do
    (( test++ ));
    echo "Test "$test": "$i" with the default solver.";
    cd Models; ./dfs_basic.bash $i; cd ..;
  done
#
# Slow ggdh solver tests
#
  for i in bi-cg.dfd
  do
    (( test++ ));
    echo "Test "$test": "$i" with the bi-cg solver.";
    cd Models; ./dfs_bi-cg.bash $i; cd ..;
  done

