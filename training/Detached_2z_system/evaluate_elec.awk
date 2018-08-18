#! /opt/local/bin/gawk -f
###! /usr/bin/gawk -f
#
# evaluate_elec.awk - Calculate electricity metrics from electric network data.
# Call with two parameters: -v NTSTEP=<NN> <file>
#
BEGIN {
  if (ARGC<2) {
    printf("  *** Read from file ***\n")
    printf("  Call: \n")
    printf("    $ ./evaluate_elec.awk -v NTSTEP=<NN>  <file> \n")
    exit 1
    }

  lines=0
  firstdataline=0

  # Set field separator 
  FS = ","

  # Last line number for column header line in input file
  HEAD=2

  # This script assumes the following columns for the raw electric network data
  # (first column is "0"):
  E_PV=2
  E_tot=1
  E_res=3

  # Timesteps per hour, timestep of data in hours
  NTS=strtonum(NTSTEP)
  TS=1./NTS

  # Say hello ...
  printf("\n   Evaluating electrical network results and creating metrics ...\n")
}
#
{
  if (FNR <= HEAD) {
      # loop through header line field by field
      #   Time      | Net Load        | Net gen         | Net imp         | Net loss        |
      # hr (aa.bb)  |       W         |       W         |       W         |       W         |
      if (FNR == 1) {
        NumFields=split($0, TmpHead1, "|")
        printf("      Reading data ...")
      }
      if (FNR == 2) {
        split($0, TmpHead, "|")
        
        # NOTE: col<Numfields and *not* <= because of trailing "|" in header!!
        for (col=2; col<NumFields; col++ )
        {
          # remove both leading and trailing whitespace in each field
          gsub(/^[ \t]+|[ \t]+$/, "", TmpHead1[col])
          gsub(/^[ \t]+|[ \t]+$/, "", TmpHead[col])

          # build column header text
          Header[col-1]=TmpHead1[col] #" [" TmpHead[col] "]"
        }
      }
  }
  if (FNR > HEAD) {
    if ($0 !~ "#") {   # only regard lines that do not begin with '#'
      if (firstdataline==0) {
        NumFields=NF
        firstdataline=1
      }
      TimeCol[FNR-HEAD]=$1
      # NOTE: col<Numfields and *not* <= because of trailing "," in data lines!!
      for (col=2 ; col<NumFields; col++) {
        Data[FNR-HEAD,col-1]=$col
      }
	  lines +=1
    }
  }
}
END {
  CalcAndWrite(1,"1min")

  CalcAndWrite(5,"5min")

  CalcAndWrite(15,"15min")

  CalcAndWrite(60,"1hour")

  CalcAndWrite(1440,"1day")    # 60 min * 24 h

  CalcAndWrite(43200,"1month") # 60 min * 24 h * 30 days

  CalcAndWrite(525600,"1year") # 60 min * 24 h * 365 days

  # Say good buy ...
  printf("                                                              ... done\n\n")

}

#
# Calculate electricity metrics and write to file.
# Parameters:
#   Intvl  :  Length of evaluation interval. Values are summed up for these intervals
#             and derived metrics calculated for these sums.
#   sIntvl :  Output file name extension used.
#
function CalcAndWrite(Intvl,sIntvl) {
  printf("\n      Evaluating %s ...",sIntvl)
  Interval=Intvl
  sInterval=sIntvl
# Check, if enough data available
  if (lines<Intvl) {
    printf("   > Not enough data for evaluation at interval length %s!\n",sIntvl)
    return;
  }

# Set output file name
  filename_ext="elec_" sInterval ".dat"
  split(FILENAME,trunk,".") # split at "." ... trunk[1] now contains the root file name
  FILENAME=trunk[1] "." filename_ext

# Print column headers
  printf("# Electricity metrics for time intervals of %s calculated from %d values per hour\n",sInterval,NTS) > FILENAME
  printf("# ") > FILENAME
  printf("Time, %s [kWh], %s [kWh], %s [kWh], ",Header[E_PV],Header[E_tot],Header[E_res]) > FILENAME
  printf("EV %s [kWh], EDR %s [%], EVR %s [%], E_res_pp %s [kWh], NBR %s [%], ES %s [kWh], NSR %s [%]\n",sIntvl,sIntvl,sIntvl,sIntvl,sIntvl,sIntvl,sIntvl) > FILENAME

# Calculate "electricity metrics" EV, EDR, EVR, NBR, ES and NSR for desired interval lengths
# and write to file
  CurMonth=0
  StartNextMonth=1
  # NOTE: "<lines" and not "<=" because of empty line at end of file ...
  for (line=1; line<lines; line++) {
    # Set interval length for calculation of sums over interval
    # For a full year data set of minute values and "monthly" evaluation, "Interval" should be set according to
    # the month lenghts!
    if (lines >= 525600) {
      if (Intvl == 43200) {
      # we have a full year data set and are doing monthly values ...
        if (line == StartNextMonth) {
          CurMonth +=1
          Interval = 60*24*DaysInMonth(CurMonth)
          StartNextMonth += Interval
          # DEBUG:  printf("CurMonth=%d, Interval=%d, StartNextMonth=%d, line=%d\n",CurMonth,Interval,StartNextMonth,line)
        }
      }
    }
    intmax=line+Interval-1;

    IntData_E_PV = IntData_E_tot = IntData_E_res = 0.

    for (linsum=line; linsum<=intmax; linsum++) {
      IntData_E_PV  += TS*Data[linsum,E_PV]/1000.
      IntData_E_tot += TS*Data[linsum,E_tot]/1000.
      IntData_E_res += TS*Data[linsum,E_res]/1000.
    }
    # set "line" for jump to next interval
    line=linsum-1

    printf("%.2f, ",TimeCol[intmax+1]) > FILENAME
    printf("%.2f, %.2f, %.2f, ",IntData_E_PV,IntData_E_tot,IntData_E_res) > FILENAME

    # calculate EV [kWh]
    if (IntData_E_PV < ABS(IntData_E_tot)) {
      EV=IntData_E_PV
    } else {
      EV=ABS(IntData_E_tot)
    }
    printf("%.2f, ",EV) > FILENAME

    # calculate EDR [%]
    if (ABS(IntData_E_tot) > 0.) {
      EDR=100.*EV/ABS(IntData_E_tot)
    } else {
      EDR=0.
    }
    printf("%.0f, ",EDR) > FILENAME

    # calculate EVR [%]
    if (IntData_E_PV > 0.) {
      EVR=100.*EV/IntData_E_PV
    } else {
      EVR=0.
    }
    printf("%.0f, ",EVR) > FILENAME

    # calculate ERES [kWh] and NBR [%]
    if (ABS(IntData_E_tot) > 0.) {
      if (ABS(IntData_E_tot) > IntData_E_PV) {
	      ERES=ABS(IntData_E_tot) - IntData_E_PV
 	      NBR=100.*ERES/ABS(IntData_E_tot)
      } else {
        NBR=0.
      }
    } else {
      NBR=0.
    }
    printf("%.2f, %.0f, ",ERES,NBR) > FILENAME

    # calculate ES [kWh]
    if (IntData_E_PV > IntData_E_tot) {
      ES=IntData_E_PV - EV
      # equivalent to E_PV - E_tot ...
    } else {
      ES=0.
    }
    printf("%.2f, ",ES) > FILENAME

    # calculate NSR [%]
    if (IntData_E_PV > 0.) {
      NSR=100. - EVR
    } else {
      NSR=0.
    }
    printf("%.0f\n",NSR) > FILENAME

  } # for (line ...
  
} # End function CalcAndWrite()


function ABS(value)
{
  return (value<0?-value:value);
}

function DaysInMonth(month)
{
    _tm_months[0,1] = _tm_months[1,1] = 31
    _tm_months[0,2] = 28; _tm_months[1,2] = 29
    _tm_months[0,3] = _tm_months[1,3] = 31
    _tm_months[0,4] = _tm_months[1,4] = 30
    _tm_months[0,5] = _tm_months[1,5] = 31
    _tm_months[0,6] = _tm_months[1,6] = 30
    _tm_months[0,7] = _tm_months[1,7] = 31
    _tm_months[0,8] = _tm_months[1,8] = 31
    _tm_months[0,9] = _tm_months[1,9] = 30
    _tm_months[0,10] = _tm_months[1,10] = 31
    _tm_months[0,11] = _tm_months[1,11] = 30
    _tm_months[0,12] = _tm_months[1,12] = 31

   return(_tm_months[0,month]);
}
