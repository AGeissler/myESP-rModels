#!/usr/bin/env Rscript
#
# Last changed: 13/01/2020
# Status: development
# Generate various evaluations by call to external R scripts.
# Basis for all selected variables is h3k (.csv) file from simulation
# run.
#
# Expects 1 parameter(s) on call!
#   <file>  The results file (.csv)
#
library(tools)
library(plyr)
library(crop)

args = commandArgs(trailingOnly=TRUE)

# Test if there is (at least) one argument: if not, return an error
if (length(args)==0) {
  stop("** Input file name(s) must be supplied (input file).n", call.=FALSE)
}
##else if (length(args)==1) {
##  # default output file
##  args[2] = "out.txt"
##}

#https://www.datanovia.com/en/lessons/identify-and-remove-duplicate-data-in-r/find-and-drop-duplicate-elements
# Remove duplicated rows based on
# Sepal.Length and Petal.Width
#my_data %>% distinct(Sepal.Length, Petal.Width, .keep_all = TRUE)

## Define "calendar"
#https://stackoverflow.com/questions/29199181/boxplot-by-date-in-r
Sys.setenv(TZ="Europe/Berlin")

writeLines(" ")
cat("   R postprocessing, reading input file")

##filenam <- strsplit(args[1], "\\.")[[1]]
file_base <- file_path_sans_ext(args[1])

## cellular_icGSHP_mit_HTNT_per2
parm<-strsplit(args[1],"/")[[1]]

## setz_3530_6563_5048_HTNT_SP2021_year.csv
parm<-strsplit(parm[2],"_")[[1]]

SCHEME<-as.character(parm[4])

## Datei(en) einlesen incl. Spaltenkoepfen
if (length(args)==3) {
    cat(" ...")
    TSTEP  <-as.numeric(args[2])
    simDate<-as.character(args[3])
    movable<-read.csv(file=args[1],header=T,sep=",")[-1:-TSTEP,]
    movable[,"thedate"]<-as.Date(movable$building.day.number.present..days.-1,origin = "2015-01-01")
} else {
    cat("s ...")
    TSTEP = as.numeric(args[3])
    simDate = as.character(args[4])
    mv1<-read.csv(file=args[1],header=T,sep=",")[-1:-TSTEP,]
    mv2<-read.csv(file=args[2],header=T,sep=",")[-1:-TSTEP,]

    mv1[,"thedate"]<-as.Date(mv1$building.day.number.present..days.-1,origin = "2015-01-01")
    mv2[,"thedate"]<-as.Date(mv2$building.day.number.present..days.-1,origin = "2014-01-01")
    movable<-rbind(mv2,mv1)
}

writeLines(" done.")

## Monthly box plots
#https://togaware.com/datamining/survivor/Grouping_Time.html
mons<-c("January", "February", "March", "April", "May", "June",
        "July", "August", "September", "October", "November",
        "December")
smons<-c("Jan", "Feb", "Mar", "Apr", "May", "Jun",
         "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")

#DATORIG<-"2014-01-01"

observer.months <- ordered(months(movable$thedate),
                           levels=mons,
                           labels=smons)

## Output selection:
#https://www.statmethods.net/management/operators.html

## Choose individual output options
if (!is.na(grep("plant.DHW",names(movable))[1])) {
    bDHW<-T
} else {
    bDHW<-F
}

bzoneTmaps<-F
bzoneTstats<-F
bplantTstats<-F
bSolRad<-F
bMultStat<-F
bslabQmaps<-F
bPVeff<-F
bPV<-F
bGSHP<-F
btrv_ff<-F
bSHD<-F

## Choose if fixed scales should be used
bFixedScales<-F

###############################################
## DHW output
if (bDHW==T) {
   cat("   Creating colour field maps of selected DHW variables ...")
   outputfile <- paste(file_base,"_DHW.png", sep="")
   outputfile2 <- paste(file_base,"_DHW_draw.png", sep="")
   outputfile3 <- paste(file_base,"_DHW_flow_temp.png", sep="")
   source("plot_DHW_maps.r")
   writeLines(" done.")
   
   cat("   Creating ON/OFF overview of DHW generation ...")
   outputfile <- paste(file_base,"_DHW_onoff.pdf", sep="")
   source("plot_DHW_onoff.r")
   writeLines(" done.")
}

###############################################
## Zone air temperature color maps
if (bzoneTmaps==T) {
   cat("   Creating colour field plots for indoor air temperatures ...")
   outputfile <- paste(file_base,"_zoneTmaps.png", sep="")
   source("plot_mult_zoneT_maps.r")
   writeLines(" done.")
}

###############################################
## Space heat demand
if (bSHD==T) {
   cat("   Creating space heat demand boxplot ...")
   outputfile <- paste(file_base,"_SHD.png", sep="")
   source("SHD.r")
   writeLines(" done.")
}

###############################################
## Plant supplied power color maps
if (bslabQmaps==T) {
   cat("   Creating colour field maps of slab supplied power ...")
   outputfile <- paste(file_base,"_pltSlabQmaps.png", sep="")
   source("plot_mult_slabq_maps.r")
   writeLines(" done.")
}

################################################
## Surface convective coefficients of interest
if (bPVeff==T) {
  cat("   Creating plots for PV efficiency ...")
  outputfile <- paste(file_base,"_PVeff", sep="")
  source("plot_PV_efficiency.r")
  writeLines(" done.")
}

################################################
## Surface convective coefficients of interest
if (bPV==T) {
  cat("   Creating plots for PV ...")
  outputfile <- paste(file_base,"_PV.png", sep="")
  source("plot_PV.r")
  writeLines(" done.")
}

###############################################
## Solar radiation incidence color maps
if (bSolRad==T) {
   cat("   Creating colour field plots for direct and diffuse incident solar radiation ...")
   outputfile <- paste(file_base,"_solRadmaps.png", sep="")
   outputfile2 <- paste(file_base,"_solTotRadmaps.png", sep="")
   source("plot_mult_rad_maps.r")
   writeLines(" done.")
}

################################################
## Zone temperature cumulative frequency distribution and box plot
if (bzoneTstats==T) {
   cat("   Creating cumulative frequency distribution and box plots for indoor air temperatures ...")
   outputfile <- paste(file_base,"_zoneTstats.png", sep="")
   source("plot_mult_zoneT_stats.r")
   writeLines(" done.")
}

#################################################
## Hydronic floor temperature spread cumulative frequency distribution and box plot
if (bplantTstats==T) {
   cat("   Creating cumulative frequency distribution and box plots for hydronic floor temperature diffs ...")
   outputfile <- paste(file_base,"_pltTstats.png", sep="")
   source("plot_mult_plantT_stats.r")
   writeLines(" done.")
}

#################################################
## Various box plots
if (bMultStat==T) {
   cat("   Creating box plots for various variables ...")
   outputfile <- paste(file_base,"_MultStats", sep="")
   source("plot_mult_stats.r")
   writeLines(" done.")
}

#################################################
## HP plots
if (bGSHP==T) {
   cat("   Creating plots of GSHP ...")
   outputfile <- paste(file_base,"_GSHP_freq.png", sep="")
   source("plot_GSHP_Freq.r")
   writeLines(" done.")
}

#################################################
## trv plots
if (btrv_ff==T) {
   cat("   Creating plots of trv_ff ...")
   outputfile <- paste(file_base,"_trv_ff.pdf", sep="")
   source("plot_trv.r")
   writeLines(" done.")
}

#################################################
## HP on-off data (plant ts based)
cat("   Evaluating HP, reading input file")
outputfile <- paste(file_base,"_hp_on-off.png", sep="")
source("plot_hp_on-off.r")

writeLines(" ")

# Clean up (?)
rm(list = ls(all.names = TRUE))
