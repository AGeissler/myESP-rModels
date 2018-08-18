#!/bin/sh
#
# Run a series of simulations in "batch" mode

# Following shell scripts need to be copied to the cfg-folder:
TOOLLIST="QA_report.sh simulate_plt_eln.sh extract_eln.sh evaluate_elec.awk ExtractColumnByName.awk"

# Blank-separated list of model variants to be evaluated. Call this script from the model
# main folder. Each variant is described via the configuration file name.
VARLIST="3br_tt_det_Bat"

# List of RES (elec) system control files to use
RESLIST="M2-0 M2-1 M2-2"
#RESLIST="M2-0"

# List of electrical network files to use
ELNLIST="10kWh 20kWh"
#ELNLIST="10kWh"

# Set building simulation time steps and simulation period for all cases
TSTEP=10
PSTEP=6
FD=1
FM=1
TD=31
TM=12
PP=20

ESTEP=`echo "scale = 0 ; $PSTEP*$TSTEP" | bc`

# Run simulation cases
for VAR in $VARLIST
do

#  Check for subdirectory "VAR" - if this does not exist, exit!
#  if [ ! -d $VAR ]; then
#    echo "**FATAL: Directory $VAR does not exist!"
#    echo "Exiting ..."
#    exit
#  fi

  for TOOL in $TOOLLIST
  do
    cp $TOOL cfg/$TOOL
  done

  cd cfg

  for RESL in $RESLIST
  do

      # Change RES (elec) control file to RESL
      new_resel="*resel ../ctl/RES_sys_${RESL}.ctl"
      cp ${VAR}.cfg temp.cfg
      sed 's%.*resel.*%'"${new_resel}"'%' temp.cfg > ${VAR}.cfg
      rm temp.cfg

      for ELN in $ELNLIST
      do

        # Change electrical network file to ELN ((old hack, should be replaced!))
        new_eln="*pnt  ../nets/${ELN}.eln"
        cp ${VAR}.cfg temp.cfg
        sed 's%.*pnt.*%'"${new_eln}"'%' temp.cfg > ${VAR}.cfg
        rm temp.cfg

        # Give message about current simulation set prior to simulation
        echo " "
        echo "== Simulating case $VAR with $RESL control settings"
        echo "   and $ELN battery capacity"

        # Build file name for simulation case
        theFile="${VAR}_${RESL}_${ELN}"

        # remove old results and contents files!
        # ... avoid error messages for non-existent files ...
        [ -f ./${theFile}.res ] && rm ./${theFile}.res
        [ -f ./${theFile}.plr ] && rm ./${theFile}.plr
        [ -f ./${theFile}.elr ] && rm ./${theFile}.elr
        [ -f ./${theFile}.contents ] && rm ./${theFile}.contents

        . ./QA_report.sh $VAR.cfg ${theFile}.contents
        . ./simulate_plt_eln.sh $VAR.cfg ${theFile} $FD $FM $TD $TM $PP $TSTEP $PSTEP
#        . ./extract_eln.sh ${theFile} ${theFile}_eln.dat

        # Do NOT use . ./<scriptname> for awk scripts !!
#        ./evaluate_elec.awk -v NTSTEP=$ESTEP ${theFile}_eln.dat

        [ -f ${VAR}.csv ] && mv ${VAR}.csv ${theFile}.csv

        echo " "

      done # current ELN / complete list
  done # current RESL / complete list

  # Clean up
  for TOOL in $TOOLLIST
  do
    rm $TOOL
  done

  cd ..

done # current VAR / complete list

# Extract specific columns
./ExtractColumnByName.awk -v COLUMN="Lion cycles used" -v EXT="Cycles" ./cfg/${VAR}_*.csv
./ExtractColumnByName.awk -v COLUMN="battery DOD" -v EXT="DOD" ./cfg/${VAR}_*.csv
./ExtractColumnByName.awk -v COLUMN="battery system discharge load" -v EXT="bLoad" ./cfg/${VAR}_*.csv
./ExtractColumnByName.awk -v COLUMN="battery system charge load" -v EXT="bCharge" ./cfg/${VAR}_*.csv

echo "... done simulating =="
echo " "

# clean up
unset TOOLLIST
unset VARLIST
unset ELNLIST
unset RESLIST
unset FD
unset FM
unset TD
unset TM
unset PP
unset TSTEP
unset PSTEP
unset ESTEP
