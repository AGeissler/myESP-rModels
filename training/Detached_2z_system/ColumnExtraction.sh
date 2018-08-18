#!/bin/sh
#
# Call with file name(s) root
# (e.g. for 3br_tt_det_zeroE_M2_1_10kWh.csv call with "3br_tt_det_zeroE" only)

# Extract specific columns
./ExtractColumnByName.awk -v COLUMN="Lion cycles used" -v EXT="Cycles" -- ${1}_*.csv
./ExtractColumnByName.awk -v COLUMN="battery DOD" -v EXT="DOD" -- ${1}_*.csv
./ExtractColumnByName.awk -v COLUMN="battery system discharge load" -v EXT="bLoad" ${1}_*.csv
./ExtractColumnByName.awk -v COLUMN="battery system charge load" -v EXT="bCharge" ${1}_*.csv

#./ExtractColumnByName.awk -v COLUMN="010:transmission:real" -v EXT="ph1" -- ${1}_*.csv
#./ExtractColumnByName.awk -v COLUMN="011:transmission:real" -v EXT="ph2" -- ${1}_*.csv
#./ExtractColumnByName.awk -v COLUMN="012:transmission:real" -v EXT="ph3" -- ${1}_*.csv

#./ExtractColumnByName.awk -v COLUMN="016:generation:real" -v EXT="PVgen" -- ${1}_*.csv
