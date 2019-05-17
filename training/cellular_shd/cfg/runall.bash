#!/bin/bash
# run a sequence of simulations 1 week 1 month 3 months and annuall
# and use extract.
echo $1
echo "spring week s4 simulation with cellular_shd.cfg"
date
time bps -mode text -file cellular_shd.cfg -p spr_s4 silent > /dev/null
echo "starting extact..."
date
./extract.bash cellular_shd_spr_s4.res
echo "finished spring week"
echo "jan-feb s4 simulation with cellular_shd.cfg"
date
time bps -mode text -file cellular_shd.cfg -p win1_s4 silent > /dev/null
echo "starting extact..."
date
./extract.bash cellular_shd_jan-feb_s4.res
date
echo "finished jan-feb months"
echo "summer s4 simulation with cellular_shd.cfg"
time bps -mode text -file cellular_shd.cfg -p sum_s4 silent > /dev/null
date
echo "starting extact..."
./extract.bash cellular_shd_sum_s4.res
echo "finished summer"
echo "annual s4 simulation with cellular_shd.cfg"
date
time bps -mode text -file cellular_shd.cfg -p annual_s4 silent > /dev/null
date
echo "starting extact..."
./extract.bash cellular_shd_annual_s4.res
date
echo "finished annual"
echo "jan-feb 20 tsph simulation with cellular.cfg"
time bps -mode text -file cellular_shd.cfg -p janfeb20 silent > /dev/null
echo "starting extact..."
date
./extract.bash cellular_shd_janfeb20.res
date
echo "finished jan-feb months"
date
echo "summer 20 tsph simulation with cellular_shd.cfg"
time bps -mode text -file cellular_shd.cfg -p summer20 silent > /dev/null
date
echo "starting extact..."
./extract.bash cellular_shd_summer20.res
date
echo "finished summer"
echo "annual 20 tsph simulation with cellular_shd.cfg"
date
time bps -mode text -file cellular_shd.cfg -p annual20 silent > /dev/null
date
echo "starting extact..."
./extract.bash cellular_shd_annual20.res
date
echo "finished annual"


