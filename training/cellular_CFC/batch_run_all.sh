#!/bin/sh
#
# Run a series of simulations in "batch" mode

# Following shell scripts need to be copied to the cfg-folder:
TOOLLIST="QA_report.sh simulate.sh \
res_temp_hours_below.sh res_temp_hours_above.sh"

# Blank-separated list of model variants to be evaluated. Call this script from the model
# main folder (e.g. /Leadenhall/). Each variant is completely described in a subfolder
# "var" (e.g. "Base") and the configuration file has the same name (e.g. "base.cfg").
VARLIST="cellular_CFC_adv"

# Construction list
#TMCLIST="mit ohne"
TMCLIST="mit"

#sZONE="Room_G10"

# Plaster absorption values
#ABSLIST="05 40 60 95"
#ABSLIST="05 95"
#ABSLIST="05"

# Simulation periods ...
#PERLIST="per1 per2"
PERLIST="per2"

# Set building simulation time steps and pre-simulation period for all cases
TSTEP=10
PP=3

# Run simulation cases
for VAR in $VARLIST
do

  for TOOL in $TOOLLIST
  do
    cp $TOOL ./cfg/$TOOL
  done

  cd ./cfg

  for TMC in $TMCLIST
  do

#    cp ../zones/${sZONE}_${TMC}.tmc ../zones/${sZONE}.tmc

        for PER in $PERLIST
        do

          case $PER in
            per1) FD=2
                  FM=7
                  TD=9
                  TM=7;;
            per2) FD=6
                  FM=2
                  TD=12
                  TM=2;;
          esac

          # Give message about current simulation set prior to simulation
          echo " "
#          echo "== Simulating case $VAR with $ROT rotation from original orientation"
          echo "== Simulating case $VAR "
          echo "   for period $PER"

          # Build file name for simulation case
          theFile="${VAR}_${TMC}_${PER}"

          # remove old results and contents files
          # ... avoid error messages for non-existent files ...
          [ -f ./${VAR}.scratch ] && rm ./${VAR}.scratch
          [ -f ./${theFile}.res ] && rm ./${theFile}.res
          [ -f ./${theFile}.contents ] && rm ./${theFile}.contents

          . ./QA_report.sh $VAR ${theFile}.contents
          . ./simulate.sh $VAR ${theFile} $FD $FM $TD $TM $PP $TSTEP
#          . ./res_ach.sh ${theFile} ${theFile}_ach.dat

          [ -f ${VAR}.csv ] && mv ${VAR}.csv ${theFile}.csv

          # Extract hours below (winter case)
          . ./res_temp_hours_below.sh ${theFile}

          # Extract hours above (summer case)
#          . ./res_temp_hours_above.sh ${theFile}


        done # current PER / complete list

        echo "  "

   done # current TMC / complete list

  # Clean up
  for TOOL in $TOOLLIST
  do
    rm $TOOL
  done

#  cp ../zones/${sZONE}_mit.tmc ../zones/${sZONE}.tmc

  cd ..

done # current VAR / complete list

echo "... done simulating =="
echo " "

# clean up
unset TOOLLIST
unset VARLIST
unset CONLIST
unset INSLIST
unset ABSLIST
unset MAT
unset ZON
unset SUR
unset NCON
unset FD
unset FM
unset TD
unset TM
unset PP
unset TSTEP
