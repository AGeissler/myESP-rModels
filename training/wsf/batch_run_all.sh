#!/bin/sh
#
# Run a series of simulations in "batch" mode

# Following shell scripts need to be copied to the cfg-folder:
#TOOLLIST="QA_report.sh change_a_construction.sh simulate_plt.sh res_slab-output_bs.sh res_slab-output_ff.sh res_slab-output_sf.sh slab_supplied_total.awk"
TOOLLIST="QA_report.sh simulate_mst.sh"

# Blank-separated list of model variants to be evaluated. Call this script from the model
# main folder (e.g. /Leadenhall/). Each variant is completely described in a subfolder
# "var" (e.g. "Base") and the configuration file has the same name (e.g. "base.cfg").
#VARLIST="wsf_legacy"
VARLIST="wsf_2024"

# Rotation list
#CONLIST="HW LW"
ROTLIST="0"

# Set building simulation time steps and simulation period for all cases
TSTEP=10
FD=1
FM=1
TD=30
TM=1
PP=0

ORIGROT=0

# Run simulation cases
for VAR in $VARLIST
do

  for TOOL in $TOOLLIST
  do
    cp $TOOL cfg/$TOOL
  done

  cd cfg

      for ROT in $ROTLIST
      do

        case $ROT in
           0) theROT="00";;
         -90) theROT="90";;
        esac

#        . ./rotate.sh ${VAR}.cfg $ROT

        # Give message about current simulation set prior to simulation
        echo " "
#        echo "== Simulating case $VAR with $ROT rotation from original orientation"
        echo "== Simulating case $VAR "

        # Build file name for simulation case
        theFile="${VAR}_${theROT}"

        # remove old results and contents files
        # ... avoid error messages for non-existent files ...
        [ -f ./${VAR}.cfg.scratch ] && rm ./${VAR}.cfg.scratch
        [ -f ./${theFile}.res ] && rm ./${theFile}.res
        [ -f ./${theFile}.msr ] && rm ./${theFile}.msr
        [ -f ./${theFile}.contents ] && rm ./${theFile}.contents

		# .  ./change_construction.sh ${VAR}.CFG $OLDC $NEWC
        . ./QA_report.sh $VAR ${theFile}.contents
        . ./simulate_mst.sh $VAR ${theFile} $FD $FM $TD $TM $PP $TSTEP
#        . ./res_PV_sw_inc.sh ./${theFile}.res ${theFile}_PV_sw_inc.dat

        [ -f ${VAR}.csv ] && mv ${VAR}.csv ${theFile}.csv

        echo " "

      done # current ROT / complete list

      # rotate building back to origin. This works only for a set
      # of two "ROT" values ... (if at all ...)
#      echo "   Rotate back to original orientation ..."
#      for ROT in $ROTLIST
#      do
#        ROTBACK=`expr -1 \\* $ROT`
#        . ./rotate.sh ${VAR}.cfg $ROTBACK
#      done
#      echo "   ... done"

  # Clean up
  for TOOL in $TOOLLIST
  do
    rm $TOOL
  done

  cd ..

done # current VAR / complete list

echo "... done simulating =="
echo " "

# clean up
unset TOOLLIST
unset VARLIST
unset ROTLIST
unset FD
unset FM
unset TD
unset TM
unset PP
unset TSTEP
