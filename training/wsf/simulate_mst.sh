#!/bin/sh
#  Last changed: 10/06/2014
#  Status: Should work ...
#  Script starts simulation run.
#
#  IMPORTANT NOTE: If a control file is present (i.e. a control file is 
#  linked in in the .cfg), change line 41 to "y"!
#
#  The script <simulate> expects nine arguments:
#    1. configuration file name (with relative path)
#    2. results file name
#    3. - 6. start and end days for simulation period
#    7. number of days for pre-simulatino period
#    8. simulation time steps per hour
#
CONFIG=$1
RESULTS=$2
SD=$3
SM=$4
ED=$5
EM=$6
PRE=$7
BTSTEP=$8

echo "   Run bps with"
echo "   $CONFIG, results: $RESULTS,"
echo "   simulation period ${SD}.${SM} to ${ED}.${EM}, startup $PRE days,"
echo "   with ${BTSTEP} ts/h for building."
bps -file ${CONFIG}.cfg -mode text > ${RESULTS}_bps.scratch <<XXX

c  # initiate simulation
${RESULTS}.res
${RESULTS}.msr
$SD $SM
$ED $EM
$PRE
$BTSTEP
n  # hourly results integration?
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
CPUTIME=`grep -a "Simulation cpu runtime" ${RESULTS}_bps.scratch`
XMLTIME=`grep -a "XML postprocessor cpu runtime" ${RESULTS}_bps.scratch`
#FAILED=`grep -c "did NOT" ${RESULTS}_bps.scratch`
#FRACTION=`echo "scale = 2 ; 100* $FAILED / (24*7*$TSTEP)" | bc`

echo "   CPU time: $CPUTIME"
echo "   XML time: $XMLTIME"
#echo "   Failed: $FAILED timesteps, equivalent to $FRACTION %"
#echo "Timesteps failed: $FAILED, fraction of simulation time steps: $FRACTION %" > ${RESULTS}_convergence-failed.lst
#echo "===== convergence failure timestep list =======" >> ${RESULTS}_convergence-failed.lst
#grep -a "did NOT" ${RESULTS}_bps.scratch >> ${RESULTS}_convergence-failed.lst
#rm ${RESULTS}_bps.scratch

unset CONFIG
unset RESULTS
unset SD
unset SM
unset ED
unset EM
unset PRE
unset BTSTEP
