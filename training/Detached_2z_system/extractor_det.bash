#!/bin/bash

echo "Script to generate results for the top-tail project models"
echo " "

for resfile in `ls *.res`
  do
    echo -ne "Recovering from $resfile"
    ./extract_det $resfile
    echo " "
    ./extract_det_csv $resfile
    echo " "
    ./extract_eln $resfile
    echo " "
    ./extract_plnFlow $resfile
    echo " "
    ./extract_plnTemp $resfile
    echo " "
    ./evaluate_elec.awk $resfile.elr.dat
  done
  printf "\r Recovering $file ... done"
  echo " "
