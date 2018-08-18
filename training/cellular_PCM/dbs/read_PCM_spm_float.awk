#! /usr/local/bin/gawk -f
###! /usr/bin/gawk -f
#
# read_PCM_spm.awk - Read a special materials definition file with PCM
# entries only (for now!). Convert to one-line-per-entry csv file for
# editing in Excel
#
# Call: ./read_PCM_spm_float.awk <spm-file>
# Output: <spm-file.csv>
#
BEGIN {
  if (ARGC<2) {
    printf("  *** Read from file ***\n")
    printf("  Call: \n")
    printf("    $ ./read_PCM_spm_float.awk <spm-file> \n")
    exit 1
    }

  entry_line=0
  entry_num=1

  # Set field separator to <whitespace>
  FS = " "

  # Last line number for column header line in input file
  HEAD=3

  # Lines per entry
  LINES=10

  # Say hello ...
  printf("\n   Reading file %s ...\n",FILENAME)
}
#
{
  if (FNR <= HEAD) {
    if (FNR == 2) {
      ConfigFile=$4
    }
    if (FNR == 3) {
        NumEntries=strtonum($1)
        printf("     %d entries in file\n",NumEntries)
    }
  } else {
    entry_line += 1

    if (entry_line == 2) {
      # Read spm name
      PVName[entry_num]=$1
    }
    if (entry_line == 3) {
      # do nothing
    }
    if (entry_line == 4) {
      # Read zone, surf, node, type, opq/trn toggle
      Zone[entry_num]=strtonum($1)
      Surf[entry_num]=strtonum($2)
      Node[entry_num]=strtonum($3)
      Type[entry_num]=strtonum($4)
      TrnOp[entry_num]=strtonum($5)
    }

    if (entry_line == 5) {
      # do nothing
    }

    if (entry_line == 6) {
      # Read number of data items
      Items[entry_num]=strtonum($1)
    }

    if (entry_line == 7) {
      # do nothing
    }

    # First line of data (items 1 through (max.) 10)
    if (entry_line == 8) {
      # Read data items
      NFData1[entry_num]=NF
      for (i=1; i<=NF; i++ ) {
        Data[entry_num,i]=strtonum($i)
      }
      # Cater for DSC type entries
      if (Items[entry_num] == 9) {
        ExpectedNF=9
        ItemType[entry_num]="DSC"
      } else {
        ExpectedNF=10
        ItemType[entry_num]="STD"
      }
      if (NFData1[entry_num] != ExpectedNF) {
        printf(" *** WARNING entry %d: %d != %d\n",entry_num,NFData1[entry_num],ExpectedNF)
      }
    }
    #
    # Conditional reading of further data lines
    #
    if (entry_line == 9) {
      if (Items[entry_num] > 10) {
      # Second line of data (items 11 through 20)
        # Read data items
        NFData2[entry_num]=NF
        for (i=1; i<=NF; i++ ) {
          Data[entry_num,i+NFData1[entry_num]]=strtonum($i)
        }
        if (NFData1[entry_num]+NFData2[entry_num] != 20) {
          printf(" *** WARNING entry %d: %d != 20\n",entry_num,NFData1[entry_num]+NFData2[entry_num])
        }
      } else {
      #
      # Special case of DSC PCM entry
      #
        # Item 9, file name
        NFData2[entry_num]=NF
        for (i=1; i<=NF; i++ ) {
          Data[entry_num,i+NFData1[entry_num]]=$i
        }
        if (NFData2[entry_num] != 1) {
          printf(" *** WARNING entry %d: %d != 1\n",entry_num,NFData2[entry_num])
        }
        # Last line of this entry read,
        # increment entry counter
        entry_num += 1
        # and reset entry_line for next entry
        entry_line = 0
      }
    }
    if (entry_line == 10) {

      if (Items[entry_num] > 20) {
        # Third line of data (item 21)
          # Read data items
          NFData3[entry_num]=NF
          for (i=1; i<=NF; i++ ) {
            Data[entry_num,i+NFData1[entry_num]+NFData2[entry_num]]=strtonum($i)
          }
          if (NFData1[entry_num]+NFData2[entry_num]+NF != Items[entry_num]) {
            printf(" *** WARNING entry %d: %d != %d\n",entry_num,NFData1[entry_num]+NFData2[entry_num]+NF,Items[entry_num])
          }
      } # num items > 20
      # Last line of this entry read,
      # increment entry counter
      entry_num += 1
      # and reset entry_line for next entry
      entry_line = 0

    }
  }
}
END {
  # Build output file name
  filename_ext="csv"
  split(FILENAME,trunk,".") # split at "." ... trunk[1] now contains the root file name
  FILENAME=trunk[1] "." filename_ext

  # Write header line
  printf("ConfigFile,Nr. Nodes,Node Nr.,Name,Zone,Surf,Node,Type,OpqTrn,Nr. Items,") > FILENAME
  printf("Tmelt,Tsoli,sub,consol,conliq,shcsol,shcliq,Lges,typtoggle,a1,")>FILENAME
  printf("b1,c1,d1,e1,f1,a2,b2,c2,d2,e2,") > FILENAME
  printf("f2\n") > FILENAME

  # Write data line for each entry
  for (line=1; line<entry_num; line++) {

    printf("%s,%d,%d,%s,",ConfigFile,NumEntries,line,PVName[line]) > FILENAME
    printf("%d,%d,%d,%d,%d,",Zone[line],Surf[line],Node[line],Type[line],TrnOp[line]) > FILENAME
    printf("%d,",Items[line]) > FILENAME

    if (ItemType[line] == "DSC") {
    # DSC type entry
      for (col=1; col<NFData1[line]; col++) {
        printf("%f,",Data[line,col]) > FILENAME
      }
      printf("%d,",Data[line,NFData1[line]]) > FILENAME
      printf("%s\n",Data[line,NFData1[line]+1]) > FILENAME

    } else {
    # Standard type entry
      for (col=1; col<NFData1[line]; col++) {
        printf("%f,",Data[line,col]) > FILENAME
      }
      printf("%17.8E,",Data[line,NFData1[line]]) > FILENAME

      for (col=NFData1[line]+1; col<=(NFData1[line]+NFData2[line]); col++) {
        printf("%17.8E,",Data[line,col]) > FILENAME
      }

      printf("%17.8E\n",Data[line,(NFData1[line]+NFData2[line]+NFData3[line])]) > FILENAME

    }
  }
  # Say good buy ...
  printf("   ... done with reading %d entries\n\n",entry_num-1)

}
