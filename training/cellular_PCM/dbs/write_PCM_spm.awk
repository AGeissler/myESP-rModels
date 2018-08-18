#! /opt/local/bin/gawk -f
###! /usr/bin/gawk -f
#
# write_PCM_spm.awk - Write a special materials definition file with PCM
# entries only (for now!). Convert from one-line-per-entry csv file
#
# Call: ./write_PCM_spm.awk <data-file.csv>
# Output: <spm-file.spm>
#
BEGIN {
  if (ARGC<2) {
    printf("  *** Write a spm file with PCM ***\n")
    printf("  Call: \n")
    printf("    $ ./write_PCM_spm.awk <data-file.csv> \n")
    exit 1
    }

  # Set field separator to <comma>
  FS = ","

  # Say hello ...
  printf("\n   Reading file %s ...\n",ARGV[1])
}
#
{
  if (FNR > 1) {
    for (fn=1; fn<=NF; fn++) {
      Field[FNR-1,fn]=$fn
    }
  }
}
END {
  # Build output file name
  filename_ext=".spm"
  split(FILENAME,trunk,".") # split at "." ... trunk[1] now contains the root file name
  FILENAME=trunk[1] "_csv" filename_ext

  printf("\n   ... now writing file %s ...\n",FILENAME)

  # Write file head
  printf("# ESP-r special materials file used in\n") > FILENAME
  printf("# configuration file %s\n",Field[1,1]) > FILENAME
  printf(" %3d  # Number of special material nodes.\n",strtonum(Field[1,2])) > FILENAME

  # Write data for each entry
  for (spm=1; spm<=strtonum(Field[1,2]); spm++) {

    printf("# Node No: %3d\n",strtonum(Field[spm,3])) > FILENAME

    printf("%s     # label\n",Field[spm,4]) > FILENAME

    printf("# Zone Surf Node Type Opq/Trn\n") > FILENAME
    for (fn=5; fn<=9; fn++) {
      printf(" %3d",strtonum(Field[spm,fn])) > FILENAME
    }
    printf("\n") > FILENAME

    printf("# Number of data items.\n") > FILENAME

    NFData=strtonum(Field[spm,10])
    printf(" %3d\n",NFData) > FILENAME

    printf("# Data:\n") > FILENAME

    #
    # Cater for DSC type entries
    #
    if (NFData != 9) {
      # i.e. "standard type entry"
      for (fn=11; fn<=20; fn++) {
        printf("   %s ",Field[spm,fn]) > FILENAME
      }
      printf("\n") > FILENAME

      if (NFData<=20) {
        for (fn=21; fn<(11+NFData); fn++) {
          printf("    %s ",Field[spm,fn]) > FILENAME
        }
        printf("\n") > FILENAME
      } else {
        for (fn=21; fn<=30; fn++) {
          printf("    %s ",Field[spm,fn]) > FILENAME
        }
        printf("\n") > FILENAME

        for (fn=31; fn<(11+NFData); fn++) {
          printf("    %s ",Field[spm,fn]) > FILENAME
        }
        printf("\n") > FILENAME
      }
    } else {
     # i.e. "DSC type entry"
      for (fn=11; fn<=19; fn++) {
        printf("   %s ",Field[spm,fn]) > FILENAME
      }
      printf("\n") > FILENAME
      printf("  %s\n",Field[spm,20]) > FILENAME

    } # NFData != 9?

  }

  # Say good buy ...
  printf("   ... done with writing %d entries\n\n",Field[1,2])

}
