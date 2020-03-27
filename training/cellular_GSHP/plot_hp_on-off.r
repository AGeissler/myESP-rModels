#!/usr/bin/env Rscript
#
# Last changed: 08/11/2018
# Status: usable
#
# Generate histogram for HP on time intervals and turn-on count.
# Data taken from .dat file (format csv) from simulation extracted via res
# (in order to always have plant time step resolution data).
#
# Expects (at least) 1 parameter(s) on call!
#   <file(s)>  The results file (.dat)
#
library(data.table)    # Provides fread() and setDT()
library(accelerometry) # Provides rle2()

hp_on_off<-fread(file=paste0(file_base,"_hp_on-off.dat"),
                 skip=3, header=FALSE)
colnames(hp_on_off)<-c("time","Q","CfH")

writeLines(" done.")

cat("   Creating histogram of HP \"ON\" durations ...")

#options( warn = 2 ) # Convert warnings to errors ...

## Count value change occasions ("running difference"):
DT<-setDT(hp_on_off)

#suppressWarnings( DT[ , onoff := diff(CfH)] )

#https://stackoverflow.com/questions/39514174/adding-new-column-with-diff-function-when-there-is-one-less-row-in-r
#transform(mtcars, diff_qsec = c(NA, diff(qsec)))
transform(DT[, onoff := c(0, diff(CfH))])

## Note the actual on-time in real-world units depends on the simulation time steps.
onoffcount<-sum(DT[,onoff] == 1)
onoffcountDHW<-sum(DT[,onoff] == 2)

## Run Length Encoding
#https://stackoverflow.com/questions/7509381/identifying-sequences-of-repeated-numbers-in-r
runtime<-rle(hp_on_off$CfH)
ontime<-subset(runtime$lengths,runtime$values==1)
ontimeDHW<-subset(runtime$lengths,runtime$values==2)

## Set plot output file to type png
nrow<-1
ncol<-2
png(file = outputfile, width=6*ncol, height=7*nrow, units= "in", res=300, type="quartz", bg = "transparent")

## Create multiple graphs on single pane (here: one row, two columns)
old.par<-par(mfrow = c(nrow, ncol))

if (onoffcount > 0) {
## Plot histogram of "ON" intervals
hist(ontime,#breaks=seq(0,70,l=8),
            main="", xlab="ON-time ranges [min]",
            labels=TRUE, col="skyblue3", las=1)

box(which = "plot", lty = "solid")

usr<-par("usr")
text(0.65*usr[2], 0.85*usr[4],
                  paste("ON count = ",   onoffcount,
                        "\nMean = ",     round(mean(ontime), 1),
                        "\nMedian = ",   round(median(ontime), 1),
                        "\nStd.Dev = ",  round(sd(ontime), 1)
                     ),
                     cex = 0.9,
                     pos = 4, offset = 0,
                     col = "blue")
}

#######################################
## Average output power per ON interval
runtime2 <- rle2(hp_on_off$CfH, indices = TRUE)

# Reduce to on times, only ...
rt_filt<-runtime2[runtime2[, "value"] != 0,]

rt_filtSH<-rt_filt[rt_filt[, "value"] == 1, ]
rt_filtDHW<-rt_filt[rt_filt[, "value"] == 2, ]

# Calculate means and stdev for SH ...
avgHeatOutSH<-c()
std_avgHO_SH<-c()

if (onoffcount > 0) {
  for(i in 1:length(rt_filtSH[,"length"])) {
    avgHeatOutSH[i]<-mean(hp_on_off[(rt_filtSH[i,"start"]:rt_filtSH[i,"stop"]),Q]);
    std_avgHO_SH[i]<-sd(hp_on_off[(rt_filtSH[i,"start"]:rt_filtSH[i,"stop"]),Q]);
  }
}
# ... and DHW
avgHeatOutDHW<-c()
std_avgHO_DHW<-c()
for(i in 1:length(rt_filtDHW[,"length"])) {
    avgHeatOutDHW[i]<-mean(hp_on_off[(rt_filtDHW[i,"start"]:rt_filtDHW[i,"stop"]),Q]);
    std_avgHO_DHW[i]<-sd(hp_on_off[(rt_filtDHW[i,"start"]:rt_filtDHW[i,"stop"]),Q]);
}

####******!!!!!!!

# Create specific on-time data sets for heat demand types
if (onoffcount > 0) {
  ontimeSH<-rt_filtSH[,c("length")]
} else {
  ontimeSH<-NULL
}

ontimeDHW<-rt_filtDHW[,c("length")]

# Calculate necessary plot range
xlim<-range(ontimeSH,ontimeDHW)

plot(ontimeSH,avgHeatOutSH/1000, main="", xlab="ON-time [min]",
                                      ylim=c(3,14), xlim=xlim, # log="y",
                                      ylab=paste("Average Heat Output [kW]",""),
                                      las=1, col="blue")

points(ontimeDHW,avgHeatOutDHW/1000, main="", col="red")

usr<-par("usr")
# Summary information on SH use
text(usr[1], 1.175*usr[3],
        paste("Overall averages:",
              "\nON-time = ", round(mean(ontimeSH),0),
              "\u00B1", signif(sd(ontimeSH),1),"min",
              "\nHeat output = ",sprintf("%.1f", round(mean(avgHeatOutSH/1000),1)),
              "\u00B1", signif(sd(avgHeatOutSH/1000),1)," kW"),
        cex = 0.9,
        pos = 4, offset = 0.8,
        col = "blue")

# Summary information on DHW use
text(0.48*usr[2], 1.175*usr[3],
       paste("\nON-time DHW = ", round(mean(ontimeDHW),0),
             "\u00B1", signif(sd(ontimeDHW),1),"min",
             "\nHeat outp. DHW = ",sprintf("%.1f", round(mean(avgHeatOutDHW/1000),1)),
             "\u00B1", signif(sd(avgHeatOutDHW/1000),1)," kW"),
       cex = 0.9,
       pos = 4, offset = 0.8,
       col = "red")

## Optionally add error bars
bAddErrorbars<-F
if (bAddErrorbars) {
   x<-ontime
   y<-avgHeatOut
  sd<-std_avgHO
  segments(x, y-sd,x, y+sd)
  epsilon = 1.  # length of cross bars
  segments(x-epsilon,y-sd,x+epsilon,y-sd)
  segments(x-epsilon,y+sd,x+epsilon,y+sd)
}

writeLines(" ... done.")
