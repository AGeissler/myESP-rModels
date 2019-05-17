#!/bin/bash
# run a sequence of simulations 1 week 2 months 4 months and annual
# and use extract.bash. Note: annual save 4 commented out to save disk space
echo $1
echo "spring week save 2 simulation with stone_simi_1890.cfg"
date
time bps -mode text -file stone_simi_1890.cfg -p spr_s2 silent > /dev/null
echo "starting extact..."
date
./extract.bash stone_simi_1890_spr_s2.res
echo "finished spring week"
echo "jan-feb save 2 simulation with stone_simi_1890.cfg"
date
time bps -mode text -file stone_simi_1890.cfg -p janfeb_s2 silent > /dev/null
echo "starting extact..."
date
./extract.bash stone_simi_1890_jan-feb_s2.res
date
echo "finished jan-feb months"
echo "summer save 2 simulation with stone_simi_1890.cfg"
time bps -mode text -file stone_simi_1890.cfg -p summer_s2 silent > /dev/null
date
echo "starting extact..."
./extract.bash stone_simi_1890_summer_s2.res
echo "finished summer"
echo "annual save 2 simulation with stone_simi_1890.cfg"
date
time bps -mode text -file stone_simi_1890.cfg -p annual4_s2 silent > /dev/null
date
echo "starting extact..."
./extract.bash stone_simi_1890_annual4_s2.res
date
echo "finished annual"
echo $1
echo "spring save 4 week simulation with stone_simi_1890.cfg"
date
time bps -mode text -file stone_simi_1890.cfg -p spr_s4 silent > /dev/null
echo "starting extact..."
date
./extract.bash stone_simi_1890_spr_s4.res
echo "finished spring week"
echo "jan-feb save 4 simulation with stone_simi_1890.cfg"
date
time bps -mode text -file stone_simi_1890.cfg -p janfeb4_s4 silent > /dev/null
echo "starting extact..."
date
./extract.bash stone_simi_1890_jan-feb_s4.res
date
echo "finished jan-feb months"
echo "summer save 4 simulation with stone_simi_1890.cfg"
time bps -mode text -file stone_simi_1890.cfg -p summer_s4 silent > /dev/null
date
echo "starting extact..."
./extract.bash stone_simi_1890_summer_s4.res
echo "finished summer"
echo "removing zone results files"
ls -l *.res
rm stone_simi_1890_spr_s2.res
rm stone_simi_1890_jan-feb_s2.res
rm stone_simi_1890_summer_s2.res
rm stone_simi_1890_annual4_s2.res
rm stone_simi_1890_spr_s4.res
rm stone_simi_1890_jan-feb_s4.res
rm stone_simi_1890_summer_s4.res
echo "annual save 4 simulation with stone_simi_1890.cfg"
date
time bps -mode text -file stone_simi_1890.cfg -p annual4_s4 silent > /dev/null
date
echo "starting extact..."
./extract.bash stone_simi_1890_annual4_s4.res
date
rm stone_simi_1890_annual4_s4.res
echo "finished"


