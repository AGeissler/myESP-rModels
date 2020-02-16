#!/bin/bash
#
# Run a series of simulations in "batch" mode

Arg1=$1

if [[ -n "$Arg1" ]]; then
  SIMU="FALSE"
else
  SIMU="TRUE"
fi

# Following shell scripts need to be copied to the cfg-folder:
TOOLLIST="QA_report.sh simulate_plt.sh \
          res_temp_hours_below.sh res_temp_hours_above.sh \
          res_hp_on-off.sh plot_hp_on-off.r"

# Blank-separated list of model variants to be evaluated. Call this script from the model
# main folder (e.g. /Leadenhall/). Each variant is completely described in a subfolder
# "var" (e.g. "Base") and the configuration file has the same name (e.g. "base.cfg").
#VARLIST="cellular_GSHP cellular_GSHP2n"
VARLIST="cellular_icGSHP"

# Construction list
#TMCLIST="mit ohne"
TMCLIST="mit"

# Simulation periods ...
#PERLIST="per1 per2"
PERLIST="per2"

# Set building simulation time steps and pre-simulation period for all cases
TSTEP=10
PSTEP=6
PP=8

# Run simulation cases
for VAR in $VARLIST
do

  for TOOL in $TOOLLIST
  do
    cp $TOOL ./cfg/$TOOL
  done

  cd ./cfg

  [ ! -d ./${VAR}_scratchfiles ] && mkdir ${VAR}_scratchfiles

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

          # Build file name for simulation case
          theFile="${VAR}_${TMC}_${PER}"

          # Give message about current simulation set prior to simulation
          RightNow=`date`
          echo " "
          echo "=========================================== "
          if [ $SIMU == "TRUE" ]; then
            echo "== Simulating case $theFile, $RightNow "
          else
            echo "== Evaluating case $theFile via R "
          fi
          echo "=========================================== "
          echo "   for period $PER"

#=== start simulate block
          if [ $SIMU == "TRUE" ]; then

            # remove old results and contents files
            # ... avoid error messages for non-existent files ...
            [ -f ./${VAR}.scratch ] && rm ./${VAR}.scratch
            [ -f ./${theFile}.res ] && rm ./${theFile}.res
            [ -f ./${theFile}.plr ] && rm ./${theFile}.plr
            [ -f ./${theFile}.contents ] && rm ./${theFile}.contents

            . ./QA_report.sh $VAR ${theFile}.contents
            . ./simulate_plt.sh $VAR ${theFile} $FD $FM $TD $TM $PP $TSTEP $PSTEP

            [ -f ${VAR}.csv ] && mv ${VAR}.csv ${theFile}.csv

            # Create subdirectory for current run and move all corresponding
            # files there.
            echo "   Now moving all created files to subdirectory ${theFile} ..."
            if [ -d ${theFile} ]; then
              rm -fr ${theFile}
            fi
            mkdir ${theFile}
            mv ${theFile}*.* ${theFile}
#            mv *.scratch ${VAR}_scratchfiles
            mv out.xml ${theFile}
            echo "   ... done"
            echo " "

          fi # closes simulation block starting line 163
#=== end simulate block

          . ./res_hp_on-off.sh ${theFile}/${theFile}

#          . ./res_ach.sh ${theFile} ${theFile}_ach.dat

          # Extract hours below (winter case)
#          . ./res_temp_hours_below.sh ${theFile}

          # Extract hours above (summer case)
#          . ./res_temp_hours_above.sh ${theFile}

          echo " "
          ./plot_hp_on-off.r ${theFile}/${theFile}_hp_on-off.dat

        done # current PER / complete list

        echo "  "

    done # current TMC / complete list

  # Clean up
  for TOOL in $TOOLLIST
  do
    rm $TOOL
  done

#  cp ../zones/${sZONE}_mit.tmc ../zones/${sZONE}.tmc
  [ -f fort.* ] && rm fort.*

  cd ..

done # current VAR / complete list

echo "... done simulating =="
echo " "

# clean up
unset TOOLLIST
unset VARLIST
unset TMCLIST
unset PERLIST
unset TOOL
unset VAR
unset TMC
unset PER
unset FD
unset FM
unset TD
unset TM
unset PP
unset TSTEP
