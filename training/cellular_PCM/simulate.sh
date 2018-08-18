#!/bin/sh
#  Last changed: 12/10/2016
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
bps -file ${CONFIG}.cfg -mode text > ${CONFIG}.scratch <<XXX

c  # initiate simulation
${RESULTS}.res
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
CPUTIME=`grep -a "Simulation cpu runtime" ${CONFIG}.scratch`
XMLTIME=`grep -a "XML postprocessor cpu runtime" ${CONFIG}.scratch`

echo "   CPU time: $CPUTIME"
echo "   XML time: $XMLTIME"

#rm ${CONFIG}.scratch

unset CONFIG
unset RESULTS
unset SD
unset SM
unset ED
unset EM
unset PRE
unset BTSTEP
