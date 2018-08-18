#!/opt/local/bin/gawk -f
###! /usr/bin/gawk -f
#
# This script takes .csv files from h3k output and extracts the desired
# column from each. All columns are written to a new (single) file.
#
# Note : ARGC does not count "-v NAME=<type>" kinds of command line arguments!
#
BEGIN {

  if (ARGC<2) {
    printf("  *** Read from file ***\n")
    printf("  Call: \n")
    printf("    $ ./ExtractColumnByName -v COLUMN=<string> -v EXT=<string> <files> \n")
    exit 1
  }
  
  ColString=COLUMN
  FileNameExtension=EXT

  TimeStep="time step"
  FNum = 0
  FS = ","
}
#
{
  if (FNR == 1) {
    # save file name
    FNum += 1  # increment file counter
    FileNames[FNum]=FILENAME

    # For first file, get column number of time step
    if (NR == 1) {
      for (col=1; col<NF; col++) {
        if ( index($col,TimeStep) > 0 ) {
          theTStepCol = col
          printf("   theTStepCol=%d\n",col)
        }
      }
    }
    # get column number which is to be extracted
    for (col=1; col<NF; col++) {
      if ( index($col,ColString) > 0 ) {
        theCol = col
        printf("   File number %d, theCol=%d\n",FNum,theCol)
      }
    }
  } # end if FNR == 1

  if (FNR > 1) {
    # save theCol value (and theTStepCol value from first file)
    if (FNum == 1) {
        Data[FNR,FNum] = strtonum($theTStepCol)
    }
    Data[FNR,FNum+1] = strtonum($theCol)
    
  } # end if FNR > 1
}
#
END {
  # set output file name
  ## ./cfg/${VAR}_*.csv => ./cfg/3br_tt_det_Bat_M2-0_10kWh.csv
  split(FileNames[1],trunk,"/")  # split at "/" ... trunk[3] now contains "3br_*.csv"
  split(trunk[3],trunk,".")  # split at "." ... trunk[2] now contains "csv"
  FILENAME=(trunk[1] "_" FileNameExtension ".txt")

  printf("\n   Number of files evaluated: %d\n",FNum)

  # Write header line for new file
  printf("time step,") > FILENAME
  
  # ... file names should be reduced to relevant information
  # generally, file name format is along the lines <some name>_<var 1>_<var 2>[_ ... _<var N>].csv
  # This could be reduced to <var 1>, <var 2>[, ... <var N>]
  for (col=1; col<FNum; col++) {
    printf("%s %s,",ColString,FileNames[col]) > FILENAME
  }
  printf("%s %s\n",ColString,FileNames[FNum]) > FILENAME

  # Write data lines (start at line 2 because Data does not contain column headers
  for (line=2; line<FNR; line++) {
    for (col=1; col<=FNum; col++) {
      printf("%.2f,",Data[line,col]) > FILENAME
    }
    printf("%.2f\n",Data[line,FNum+1]) > FILENAME
  }
}
