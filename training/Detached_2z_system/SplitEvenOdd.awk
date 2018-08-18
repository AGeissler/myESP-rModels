#! /opt/local/bin/gawk -f
###! /usr/bin/gawk -f
#
# This script takes a .csv file from h3k output and splits even / odd
# columns into a new file each. The time step column is put into the
# first column in the new files.
# 
BEGIN { 
  if (ARGC<3) {
    printf("  *** Read from file ***\n")
    printf("  Call: \n")
    printf("    $ ./SplitEvenOdd.awk <file> \n")
    exit 1
  }
  
  TimeStep="time step"
  Even="Shad"
  FS = ","
  outCol=1
}
#
{
  if (FNR == 1) {
    # Get column number of time step
    if (NR == 1) {
      for (col=1; col<NF; col++) {
        if ( index($col,TimeStep) > 0 ) {
          theTStepCol = col
          printf("   theTStepCol=%d\n",col)
        }
      }
    }
    # get column numbers which are to be extracted (and save column headers)
    for (col=1; col<NF; col++) {
      if ( index($col,Even) > 0 ) {
        theEvenCol[outCol] = col
        EvenColString[outCol] = $col
        theOddCol[outCol]= col - 1
        OddColString[outCol] = $(col-1)
        printf("   theOddCol[%d]=%d, theEvenCol[%d]=%d\n",outCol,theOddCol[outCol],outCol,theEvenCol[outCol])
        outCol += 1
      }
    }
  } # end if FNR == 1

  if (FNR > 1) {
    # save theTStepCol value
      OddData[FNR,1] = strtonum($theTStepCol)
      EvenData[FNR,1] = strtonum($theTStepCol)

    # save values theOddCol and theEvenCol
    for (col=2; col<NF; col++) {
      OddData[FNR,col] = strtonum($theOddCol[col])
      EvenData[FNR,col] = strtonum($theEvenCol[col])
    }
  } # end if FNR > 1
}
#
END {
  # set output file name
  split(FILENAME,trunk,".")  # split at "." ... trunk[2] now contains "csv"

  # output data first to Oddfile
  FILENAME=(trunk[1] "_Noshade.txt")
  # Write header line for new file
  printf("time step,") > FILENAME
  
  # output data column names
  for (col=1; col<outCol; col++) {
    printf("%s,",OddColString[col]) > FILENAME
  }
  printf("%s\n",OddColString[col]) > FILENAME

  # Write data lines (start at line 2 because Data does not contain column headers)
  for (line=2; line<FNR; line++) {
    for (col=1; col<=outCol; col++) {
      printf("%.2f,",OddData[line,col]) > FILENAME
    }
    printf("%.2f\n",OddData[line,outCol+1]) > FILENAME
  }

  # output data first to Evenfile
  FILENAME=(trunk[1] "_Shade.txt")
  # Write header line for new file
  printf("time step,") > FILENAME
  
  # output data column names
  for (col=1; col<outCol; col++) {
    printf("%s,",EvenColString[col]) > FILENAME
  }
  printf("%s\n",EvenColString[col]) > FILENAME

  # Write data lines (start at line 2 because Data does not contain column headers)
  for (line=2; line<FNR; line++) {
    for (col=1; col<=outCol; col++) {
      printf("%.2f,",EvenData[line,col]) > FILENAME
    }
    printf("%.2f\n",EvenData[line,outCol+1]) > FILENAME
  }

}

