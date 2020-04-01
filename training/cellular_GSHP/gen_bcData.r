#!/usr/bin/env Rscript
##
## Last changed: 03/03/2020
## Status: development
##
## Take yearly BC_data_file data file input w/ 15-min intervals of
## setpoints and extend to 1-min values for plant control bc data type
## usage.
##
## Hereby use start and end days and pre-simulation duration to extract
## correct data from BC_data_file.
##
## ...
## Arguments:
## FD, FM ... from day, from month
## TD, TM ... to day, to month
## PP     ... number of days of pre-simulation
## YYYY   ... year (no actual function, only for complete date)
## file   ... BC_data_file with one year of data in 15 min intervals

suppressPackageStartupMessages(library(tools))
suppressPackageStartupMessages(library(data.table))    # Provides fread() and setDT()
suppressPackageStartupMessages(library(chron))
suppressPackageStartupMessages(library(tidyr))
suppressPackageStartupMessages(library(stringi))
suppressPackageStartupMessages(library(lubridate))

args = commandArgs(trailingOnly=TRUE)

# Test if there is the correct number of arguments. If not, return an error
if (length(args)<8) {
  stop("** 8 arguments must be supplied:\n   FD,FM,TD,TM,PP,YYYY,TSTEP and file!", call.=FALSE)
}

infile<-args[8]
outfile<-file_path_sans_ext(args[8])

cat(paste0("   R preprocessing, expanding boundary data ",infile," to plant TS in ",outfile,".asc ..."))

## Copy arguments to local variables.
FD<-as.numeric(args[1])
FM<-as.numeric(args[2])
TD<-as.numeric(args[3])
TM<-as.numeric(args[4])
PP<-as.numeric(args[5])
YYYY<-as.numeric(args[6])
TSTEP<-as.numeric(args[7])

## Set up 15-min, TS and 1-min sequences.
hm15 <- merge(0:23, seq(0, 45, by = 15))
hmTS <- merge(0:23, seq(0, 60-60/TSTEP, by = 60/TSTEP))
hm01 <- merge(0:23, seq(0, 59, by = 1))

## Create simulation run start and end dates. Start date takes pre-
## simulation period into account.
from<-paste0(YYYY,"-",sprintf("%02d",FM),"-",sprintf("%02d",FD))
fsim<-from
from<-as.Date(from)-PP
to  <-paste0(YYYY,"-",sprintf("%02d",TM),"-",sprintf("%02d",TD))

## Create full year of dates y-m-d with 15min TS.
fromY<-paste0(YYYY,"-",sprintf("%02d", 1),"-",sprintf("%02d", 1))
toY  <-paste0(YYYY,"-",sprintf("%02d",12),"-",sprintf("%02d",31))

days   <- seq.Date(from = as.Date(fromY),
                     to = as.Date(  toY), by = 'days')
dtYear <- merge(days, chron(time = paste(hm15$x, ':', hm15$y, ':', 0)), all.y=TRUE)
colnames(dtYear) <- c('date', 'time')
dtYear$dt <- as.POSIXct(paste(dtYear$date, dtYear$time), tz = "UTC", "%Y-%m-%d %H:%M:%OS")
dtYear <- dtYear[order(dtYear$dt), ]
row.names(dtYear) <- NULL

## Create sequence of with simulation period dates and TS.
days  <- seq.Date(from = as.Date(fsim),
                    to = as.Date(  to), by = 'days')
dtSim <- merge(days, chron(time = paste(hmTS$x, ':', hmTS$y, ':', 0)), all.y=TRUE)
colnames(dtSim) <- c('date', 'time')
dtSim$dt <- as.POSIXct(paste(dtSim$date, dtSim$time), tz = "UTC", "%Y-%m-%d %H:%M:%OS")
dtSim <- dtSim[order(dtSim$dt), ]
row.names(dtSim) <- NULL
dt_TS<-as.data.frame(as.numeric(dtSim$dt))
colnames(dt_TS)<-c('TS')

minSim<-as.numeric(min(dtSim$dt))
maxSim<-as.numeric(max(dtSim$dt))


## Read <file>.bcd data file (full year in 15 min timesteps)
input <- file(args[8], 'r')
main  <- readLines(input, n = 22)      # Spool over file header
DATA <- read.csv(input, sep=",",       # Now read csv data.
                 fileEncoding="UTF-8",
                 header=FALSE,         # Force default Vx header line.
                 stringsAsFactors = F)
DATA <- DATA[-nrow(DATA),]             # Remove last line "*data_end".

## Add (numeric) time column to DATA
DATA<-cbind(dtYear$dt,DATA)
colnames(DATA)[1]<-"date"

## Create copy as "simulation period data" and subset to actual
## simulation period.
SimDATA<-DATA
SimDATA$date<-as.numeric(SimDATA$date)
SimDATA<-subset(SimDATA, date>=minSim & date<=maxSim)

## If pre-simulation is in prior year copy appropriate "end of year"
## data to beginning to cover pre-simulation period.
if (as.POSIXlt(as.Date(from))$year-as.POSIXlt(fromY)$year < 0) {
  # Set "copy from" date value.
  cfrom<-from
  year(cfrom)<-year(to)

  # Create pre-simulation period time steps and set year.
  DATA_PP<-DATA[DATA$date >= paste(cfrom,"00:00:00"),]
  year(DATA_PP$date)<-year(as.Date(from))
  
  # Extend 15 min data by pre-simulation period.
  DATA<-rbind(DATA_PP,DATA)
  row.names(DATA)<-NULL
  
} else {
  ww<-1
  # Don't do anything, here. Dummy command to avoid "NULL" output.
}

## Create minute sequence for simulation period including pre-simulation.
days   <- seq.Date(from = as.Date(from),
                     to = as.Date( toY), by = 'days')
dt_min <- merge(days, chron(time = paste0(hm01$x, ':', hm01$y, ':', 0)), all.y=TRUE)
colnames(dt_min) <- c('date', 'time')

dt_min$dt <- as.POSIXct(paste(as.character(dt_min$date), as.character(dt_min$time)), tz = "UTC", "%Y-%m-%d %H:%M:%OS")
dt_min    <- dt_min[order(dt_min$dt), ]

row.names(dt_min) <- NULL

dt_min<-as.data.frame(as.numeric(dt_min$dt))
colnames(dt_min)<-c('minutes')

## Convert DATA datetime to numeric for complete().
DATA$date<-as.numeric(DATA$date)
#colnames(DATA)[1]<-"date"

## Complete data ...
DATOUT<-DATA %>% complete(date=dt_min$minutes) %>% fill(2:4)
DATOUT<-na.omit(DATOUT)

## ... and write to file with extension ".asc".
outfile<-file(paste0(outfile,".asc"), 'w')

write.table("*data_start", outfile, append=FALSE, quote = FALSE,            row.names = FALSE, col.names = FALSE)
write.table(DATOUT[,2:4],  outfile, append=TRUE,  quote = FALSE, sep = ",", row.names = FALSE, col.names = FALSE)
write.table("*data_end",   outfile, append=TRUE,  quote = FALSE,            row.names = FALSE, col.names = FALSE)

close(outfile)

## Complete simulation period data and write to ".simdat" file
SimDATOUT<-SimDATA %>% complete(date=dt_TS$TS) %>% fill(2:4)

outfile<-file(paste0(file_path_sans_ext(args[8]),".simdat"), 'w')
write.table(SimDATOUT[,2:4],  outfile, append=FALSE,  quote = FALSE, sep = ",", row.names = FALSE, col.names = FALSE)
close(outfile)

writeLines(" done.")
