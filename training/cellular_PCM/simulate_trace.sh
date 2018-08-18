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

echo "   Run bps with trace facility activated on"
echo "   $CONFIG, results: $RESULTS,"
echo "   simulation period ${SD}.${SM} to ${ED}.${EM}, startup $PRE days,"
echo "   with ${BTSTEP} ts/h for building."
bps -file ${CONFIG}.cfg -mode text > ${CONFIG}.scratch <<XXX

t  # Invoke trace facilities
a  # zone1
-  # exit this menu
Y  # Select trace topics? ((see end of this file for available!))
c  # view factors & long-wave
i  # zone misc data
t  # zone & surface flux balance
1  # No of Surfaces (add. data for t)
8  # Which surface for energy balance number? (add. data for t)
u  # surface adjacent conditions
3  # control functions
-  # exit
1  # Start trace after how many (zone-side) time increments?
25  # Finish trace after how many (zone-side) time increments?
b  # Write trace to a) terminal b) scratch file?
${RESULTS}.trace
c  # Initiate simulation
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

#### List of trace options:
#
# Selective trace:
#  a electrical calculations       t zone & surface flux balance
#  b temporal file items & assoc   u surface adjacent conditions
#  c view factors & long-wave      v plant matrix template
#  d zone shading:insolation       w plant component static
#  e heat transfer coef & calc     x plant component adj info
#  f zone rel hum & condensation   y plant coef generator
#  g infil & vent coefficients     z plant matrix solution
#  h zone casual gains             1 plant matrix setup
#  i zone miscellaneous data       2 all plant trace items
#  j zone matrix coef setup&mods   3 control functions
#  l solar radiation summary       4 time-step controller
#  n air flow calculations         5 network flow (asci results)
#  o zone matrix setup             6 Not applicable
#  p matrix forward red            7 CFD-MFS iteration
#  q matrix surface adjust           ___________________________
#  r matrix forward red compl      / clear trace selections
#  s zone equation solution        ? help
#  - exit
