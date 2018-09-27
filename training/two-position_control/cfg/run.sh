#!/bin/bash

model=two-position_control
ctrl=bld_twopos_all

# Sim parameters
dd_sim_s=09
mm_sim_s=01
dd_sim_e=09
mm_sim_e=01

start_up=2
tsph=60

# Advanced toggles
tsa_off=1
solar_off=1

#--------------------------------------
# Call ESP-r modules
#--------------------------------------

# remove existing results library if it exists
rm -rf ${model}.res

# change control file
prj -file ${model}.cfg -mode text << PRJ
m
j
../ctl/${ctrl}.ctl
>

Y
-
Y
Y
Y
-
-
PRJ

#: << @
# run simulation
bps -file ${model}.cfg -mode text << BPS

c            # Initiate simulation
${model}.res
${dd_sim_s} ${mm_sim_s}        # start day & month
${dd_sim_e} ${mm_sim_e}        # end day & month
${start_up}           # start-up period duration
${tsph}           # time-steps per hour
N	     # hourly results integration
g            # simulation toggles
101          # password
a            # timestep averaging
${tsa_off}   # 
d            # solar processes
${solar_off} # 
-
s            # Invoke simulation
y            # confirm control
$model       # results description
y            # continue with simulation
y            # save simulation results
-
-
BPS

# parse results to csv
res -file ${model}.res -mode text << RES

c # timestep reports
g # performance metrics
b # temperatures
a # Zone db T
b # temperatures
f # MRT (area)
h # heat/cool/humidify
e # sensible H+C loads
a # climate
a # Ambient air temperature
>
${model}.csv
${model}
^
e
*
a
*
a
!
>
-
-
-
RES

./plot.sh
#@