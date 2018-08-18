#!/bin/sh
#  Last changed: 09/04/2013
#  Status: Should work ...
#  Script starts simulation run for models with plant and electric network. 
#
#  IMPORTANT NOTE: If a control file is present (i.e. a control file is 
#  linked in in the .cfg), change line 53 to "y"!
#
#  The script <simulate> expects nine arguments:
#    1. configuration file name (with relative path)
#    2. results file name
#    3. - 6. start and end days for simulation period
#    7. number of days for pre-simulatino period
#    8. simulation time steps per hour
#    9. plant time steps per building time step
#
CONFIG=$1
RESULTS=$2
SD=$3
SM=$4
ED=$5
EM=$6
PRE=$7
BTSTEP=$8
PTSTEP=$9

# strip results file name from extension ...
#set RESULTSROOT = ($RESULTS:as/./ /)  ??
#set RESULTSROOT=`echo $RESULTS | awk '{split($0,a,"."); print a[1]}'`

PTSPH=`echo "scale = 0 ; $BTSTEP*$PTSTEP" | bc`

echo "   Run bps with $CONFIG, results: ${RESULTS}.res,"
echo "   plant results: ${RESULTS}.plr and electrical results: ${RESULTS}.elr"
echo "   simulation period ${SD}.${SM} to ${ED}.${EM}, startup $PRE days,"
echo "   with ${BTSTEP} ts/h for building and ${PTSPH} ts/h for plant."

bps -file $CONFIG -mode text > ${RESULTS}.scratch <<XXX

c  # initiate simulation
${RESULTS}.res 
${RESULTS}.plr
${RESULTS}.elr
$SD $SM
$ED $EM
$PRE
$BTSTEP
$PTSTEP
y  # hourly results integration?
*  # set save level 3
*  # set save level 4
s  # invoke simulation
y  # does a control strategy (i.e. file) exist?
Run: $RESULTS
y
y
-
-
XXX

# Postprocessing
CPUTIME=$(grep -ai "Simulation cpu runtime" "${RESULTS}.scratch")
XMLTIME=$(grep -ai "XML postprocessor cpu runtime" "${RESULTS}.scratch")
#CPUTIME=`grep "Simulation cpu runtime" ${CONFIG}.scratch`
#XMLTIME=`grep "XML postprocessor cpu runtime" ${CONFIG}.scratch`
#FAILED=`grep -c "Month  7" ${CONFIG}.scratch`
#FRACTION=`echo "scale = 2 ; 100* $FAILED / (24*7*$TSTEP)" | bc`
echo "   $CPUTIME"
echo "   $XMLTIME"
echo " "
#echo "Timesteps failed: $FAILED, fraction of simulation time steps: $FRACTION %" > convergence-failed.lst
#echo "===== convergence failure timestep list =======" >> convergence-failed.lst
#grep "Month  7" ${CONFIG}.scratch >> convergence-failed.lst
#rm ${CONFIG}.scratch

unset CONFIG
unset RESULTS
#unset RESULTSROOT
unset SD
unset SM
unset ED
unset EM
unset PRE
unset BTSTEP
unset PTSTEP
unset PTSPH
unset CPUTIME
unset XMLTIME
#unset FAILED
#unset FRACTION
