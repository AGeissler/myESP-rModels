#!/bin/sh
#  Last changed: 19/12/2017
#  Status: Should work ...
#  Script starts simulation run for models with plant networks.
#
#  IMPORTANT NOTE: If a control file is present (i.e. a control file is 
#  linked in in the .cfg), change line 52 to "y"!
#
#  The script <simulate> expects nine arguments:
#    1. configuration file name (with relative path)
#    2. results file name (w/o extension)
#    3. - 6. start and end days for simulation period
#    7. number of days for pre-simulation period
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

PTSPH=`echo "scale = 0 ; $BTSTEP*$PTSTEP" | bc`

echo "   Run bps with $CONFIG, results: ${RESULTS}.res,"
echo "   plant results: ${RESULTS}.plr. "
echo "   Simulation period ${SD}.${SM} to ${ED}.${EM}, startup $PRE days,"
echo "   with ${BTSTEP} ts/h for building and ${PTSPH} ts/h for plant ... "

bps -file ${CONFIG}.cfg -mode text > ${RESULTS}_bps.scratch <<XXX

c  # initiate simulation
${RESULTS}.res 
${RESULTS}.plr
$SD $SM
$ED $EM
$PRE
$BTSTEP
$PTSTEP
n  # hourly results integration?
s  # invoke simulation
   # accept control file
Run: $RESULTS
y
y
-
-
XXX

# Postprocessing
CPUTIME=`grep -a "Simulation cpu runtime" ${RESULTS}_bps.scratch`
XMLTIME=`grep -a "XML postprocessor cpu runtime" ${RESULTS}_bps.scratch`
#FAILED=`grep -c "Month  7" ${CONFIG}.scratch`
#FRACTION=`echo "scale = 2 ; 100* $FAILED / (24*7*$TSTEP)" | bc`

echo "   CPU time: $CPUTIME"
echo "   XML time: $XMLTIME"
#echo "Timesteps failed: $FAILED, fraction of simulation time steps: $FRACTION %" > convergence-failed.lst
#echo "===== convergence failure timestep list =======" >> convergence-failed.lst
#grep "Month  7" ${CONFIG}.scratch >> convergence-failed.lst
#rm ${CONFIG}.scratch

unset CONFIG
unset RESULTS
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
