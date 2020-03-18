#
# Expects dataframe "movable" to be defined/filled/available!
#
# Last changed: 17/02/2020
#
# Status: usable
# Generate color maps for selected variables from h3k (.csv) file.
#

######### GSHP ############### read all data with GSHP and climate
grx <- glob2rx("plant.GSHP.misc.*")
grx1 <- glob2rx("climate.*")
grx2 <- glob2rx("plant.DHW.tank.*")
mv_GSHP<-movable[,c("building.time.present..hours.","building.day.number.present..days.","thedate",
                      grep(grx, names(movable), ignore.case = TRUE, value = TRUE, perl = TRUE), 
                      grep(grx1, names(movable), ignore.case = TRUE, value = TRUE, perl = TRUE),
                      grep(grx2, names(movable), ignore.case = TRUE, value = TRUE, perl = TRUE)
)]


#      
## Set column names
colnames(mv_GSHP)<-c("hour","day","thedate",sapply(strsplit(colnames(mv_GSHP[4:length(mv_GSHP)]),"\\."),
         FUN=function(x){paste(x[2],x[3],x[4],x[5],x[6],x[7], sep="_")},
         simplify = TRUE, USE.NAMES = TRUE))

                               
# [1] "hour"                                  "day"                                  
# [3] "thedate"                               "GSHP_misc_data_COP__"                 
# [5] "GSHP_misc_data_CallForHeat__"          "GSHP_misc_data_DeviceONOFF__"         
# [7] "GSHP_misc_data_Heat_Out_"              "GSHP_misc_data_Real_Power_"           
# [9] "GSHP_misc_data_RelCompFreq__"          "GSHP_misc_data_Return_T_SP"           
#[11] "GSHP_misc_data_Tambient__degC"         "dry_bulb_temperature__oC_NA"          
#[13] "solar_diffuse_horizontal_radiation__W" "solar_direct_normal_radiation__W"     
#[15] "wind_direction__degrees_NA_NA"         "wind_velocity__m_s_NA" 
#[17] "DHW_tank_misc_data_average_temperature__C_"    
#[18] "DHW_tank_node_1_connection_1"   #temp
#[19] "DHW_tank_node_1_connection_1" water.flow..kg.s."
#[20] "DHW_tank_node_1_temperature_"              
#[21] "DHW_tank_node_1.vwater_flow"             
#[22] "DHW_tank_node_2_connection_1"   .temperature." 
#[23] "DHW_tank_node_2_connection_1"    .water.flow"
#[24] "DHW_tank_node_2_temperature_"              
#[25] "DHW_tank_node_2_water_flow"    

##### calculate the mean of frequency for DHW und HP
meanfreqHP<- mean(mv_GSHP$GSHP_misc_data_RelCompFreq__[
                       mv_GSHP[,"GSHP_misc_data_CallForHeat__"] == 1 &
                       mv_GSHP[,"GSHP_misc_data_DeviceONOFF__"] == 1 ], na.rm = T)

meanfreqDHW<-mean(mv_GSHP$GSHP_misc_data_RelCompFreq__[
                       mv_GSHP[,"GSHP_misc_data_CallForHeat__"] == 2 &
                       mv_GSHP[,"GSHP_misc_data_DeviceONOFF__"] == 1], na.rm = T)


##### calculate the mean COP for DHW und HP (Min/Max/mean)
meanCOPHP<- mean(mv_GSHP$GSHP_misc_data_COP__[
                       mv_GSHP[,"GSHP_misc_data_CallForHeat__"] == 1 &
                       mv_GSHP[,"GSHP_misc_data_DeviceONOFF__"] == 1 ], na.rm = T)

minmaxCOPHP<-range(mv_GSHP$GSHP_misc_data_COP__[
                       mv_GSHP[,"GSHP_misc_data_CallForHeat__"] == 1 &
                       mv_GSHP[,"GSHP_misc_data_DeviceONOFF__"] == 1 ], na.rm = T)

meanCOPDHW<-mean(mv_GSHP$GSHP_misc_data_COP__[
                       mv_GSHP[,"GSHP_misc_data_CallForHeat__"] == 2 &
                       mv_GSHP[,"GSHP_misc_data_DeviceONOFF__"] == 1], na.rm = T)
minmaxCOPDHW<-range(mv_GSHP$GSHP_misc_data_COP__[
                       mv_GSHP[,"GSHP_misc_data_CallForHeat__"] == 2 &
                       mv_GSHP[,"GSHP_misc_data_DeviceONOFF__"] == 1], na.rm = T)



##### calculate the heat power for DHW und HP (Min/Max/mean) in [kW]

meanHeatHP<- mean(mv_GSHP$GSHP_misc_data_Heat_Out_[
                       mv_GSHP[,"GSHP_misc_data_CallForHeat__"] == 1 &
                       mv_GSHP[,"GSHP_misc_data_DeviceONOFF__"] == 1 ], na.rm = T)/1000

minmaxHeatHP<-range(mv_GSHP$GSHP_misc_data_Heat_Out_[
                       mv_GSHP[,"GSHP_misc_data_CallForHeat__"] == 1 &
                       mv_GSHP[,"GSHP_misc_data_DeviceONOFF__"] == 1 ], na.rm = T)/1000

meanHeatDHW<-mean(mv_GSHP$GSHP_misc_data_Heat_Out_[
                       mv_GSHP[,"GSHP_misc_data_CallForHeat__"] == 2 &
                       mv_GSHP[,"GSHP_misc_data_DeviceONOFF__"] == 1 ], na.rm = T)/1000

minmaxHeatDHW<-range(mv_GSHP$GSHP_misc_data_Heat_Out_[
                       mv_GSHP[,"GSHP_misc_data_CallForHeat__"] == 2 &
                       mv_GSHP[,"GSHP_misc_data_DeviceONOFF__"] == 1 ], na.rm = T)/1000


#heatDHW<-mv_GSHP$GSHP_misc_data_Heat_Out_[
#                       mv_GSHP[,"GSHP_misc_data_CallForHeat__"] == 2 &
#                       mv_GSHP[,"GSHP_misc_data_DeviceONOFF__"] == 1 ]

#DT[b==0, est := (a-5)/2.533]
#df <- within(df, est[b==0] <- (a[b==0]-5)/2.533)
#df<-mv_GSHP
#df <- within(df, GSHP_misc_data_Heat_Out_[
#                       ((GSHP_misc_data_CallForHeat__ == 2) &
#                        (GSHP_misc_data_DeviceONOFF__ == 1))] <- GSHP_misc_data_Heat_Out_,)

heatDHW<-ifelse(mv_GSHP[,"GSHP_misc_data_CallForHeat__"] == 2 &
                mv_GSHP[,"GSHP_misc_data_DeviceONOFF__"] == 1, mv_GSHP$GSHP_misc_data_Heat_Out_, 0)

heatSH<-ifelse(mv_GSHP[,"GSHP_misc_data_CallForHeat__"] == 1 &
                mv_GSHP[,"GSHP_misc_data_DeviceONOFF__"] == 1, mv_GSHP$GSHP_misc_data_Heat_Out_, 0)

DHW_on<-ifelse(mv_GSHP[,"GSHP_misc_data_CallForHeat__"] == 2 &
               mv_GSHP[,"GSHP_misc_data_DeviceONOFF__"] == 1, mv_GSHP$GSHP_misc_data_CallForHeat__, 0)

## Generate x1 factor for placing N figures
# Nfig=2
# X1fac=trunc(100*(1/Nfig),2)/100
#X20=trunc(100*(1/(Nfig-1)),2)/100
# X20=trunc(100*(1/Nfig),2)/100
# Y1=0.15
# Y2=1.0

## Set plot output file to type pdf.
NPLOT<-9
pdf(file = outputfile, width=40, height=NPLOT*2.3)


## mehrere Bilder in Reihen und Spalten (erst Anzahl Reihen, dann Anzahl Spalten)
par(mfrow=c(NPLOT,1))

## Calculate datetime for x-axis.
datetime<-as.POSIXct(
                 as.Date((movable$building.time.step....-movable[1,"building.time.step...."])/TSTEP/24,
                 origin = paste0(as.Date(as.integer(movable[1,"building.day.number.present..days."]),
                                         origin = "2015-01-01")), tz="UTC"))

xlim=c(min(datetime),max(datetime))

##### Plot GSHP heat output for DHW.
ylim<-range(heatDHW)

plot(datetime,heatDHW,
                    main="", xlab="Datum",
                    ylim=ylim, xlim=xlim, # log="y",
                    ylab=expression(paste("heat DHW [W]")),
                    las=1, type = "l", lwd=0.125, col="blue")

##### Plot GSHP heat output for SH.
ylim<-range(heatSH)

plot(datetime,heatSH,
                    main="", xlab="Datum",
                    ylim=ylim, xlim=xlim, # log="y",
                    ylab=expression(paste("heat SH [W]")),
                    las=1, type = "l", lwd=0.125, col="red")

##### Plot ambient air temperature.
ylim<-range(mv_GSHP$dry_bulb_temperature__oC_NA)

plot(datetime,mv_GSHP$dry_bulb_temperature__oC_NA,
                    main="", xlab="Datum",
                    ylim=ylim, xlim=xlim, # log="y",
                    ylab=expression(paste("amb. air t [°C]")),
                    las=1, type = "l", lwd=0.25, col="orange")

##### Plot Device_ON_OFF.
ylim<-range(mv_GSHP$GSHP_misc_data_DeviceONOFF__)

plot(datetime,mv_GSHP$GSHP_misc_data_DeviceONOFF__,
                    main="", xlab="Datum",
                    ylim=ylim, xlim=xlim, # log="y",
                    ylab=expression(paste("Device_ON_OFF [-]")),
                    las=1, type = "l", lwd=0.25, col="black")

##### Plot CallForHeat.
## ((w/ normalized solar for day-shift evaluation))
GlobalSolar<-mv_GSHP[,"solar_diffuse_horizontal_radiation__W"]+mv_GSHP[,"solar_direct_normal_radiation__W"]
GlobalSolar<-GlobalSolar/max(GlobalSolar)

ylim<-range(mv_GSHP$GSHP_misc_data_CallForHeat__)

plot(datetime,mv_GSHP$GSHP_misc_data_CallForHeat__,
                    main="", xlab="Datum",
                    ylim=ylim, xlim=xlim, # log="y",
                    ylab=expression(paste("CallForHeat [-]")),
                    las=1, type = "l", lwd=0.25, col="black")

lines(datetime,2.*GlobalSolar, main="", lwd=0.25, col="orange")

############
## Read "scheme" file
scfile<-file(paste0("../dbs/",as.character(SCHEME),".simdat"), 'r')

scDat<-read.csv(scfile, sep=",", fileEncoding="UTF-8",
                 header=FALSE, skip = 0, stringsAsFactors = F)

nrsc<-nrow(scDat)
scDat<-scDat[(TSTEP+1):nrsc,]

colnames(scDat)<-c("SH","DHW.pref","TRV")

##############################################################################
##### Plot CallForHeat from res output data (plant timestep!)  ...
## Create datetime w/ plant time step (hard-coded) for simulation period.
suppressPackageStartupMessages(library(chron))

PTS<-TSTEP*5
hmPTS <- merge(0:23, seq(0, 60-60/PTS, by = 60/PTS))
days<-seq.Date(from = as.Date(min(movable$thedate)+1),
                 to = as.Date(max(movable$thedate)+1), by = 'days')
dtPTS <- merge(days, chron(time = paste(hmPTS$x, ':', hmPTS$y, ':', 0)))
colnames(dtPTS) <- c('date', 'time')
dtPTS<-dtPTS[-nrow(dtPTS),]

dtPTS$dt <- as.POSIXct(paste(dtPTS$date, dtPTS$time), tz = "UTC", "%Y-%m-%d %H:%M:%OS")
dtPTS <- dtPTS[order(dtPTS$dt), ]
row.names(dtPTS) <- NULL
dt_PTS<-as.data.frame(as.numeric(dtPTS$dt))
colnames(dt_PTS)<-c('PTS')

## Read "setz_3530_6560_5550_HTNT_SP2021_tst2_hp_on-off" data
resHPDatfile<-file(paste0("./",as.character(file_base),"_hp_on-off.dat"), 'r')

resHPDat<-read.csv(resHPDatfile, sep=",", fileEncoding="UTF-8",
                 header=FALSE, skip = 3, stringsAsFactors = F)

nrsc<-nrow(resHPDat)
## Remove first hour to align with other data.
#resHPDat<-resHPDat[(PTS+1):nrsc,]

colnames(resHPDat)<-c("time","HeatOut","CfH")

xlimPTS<-c(as.Date(min(dt_PTS),origin = "2015-01-01"),
           as.Date(max(dt_PTS),origin = "2015-01-01"))

ylim<-range(as.numeric(resHPDat$CfH))

plot(dt_PTS$PTS,resHPDat$CfH,
                    main="", xlab="Datum",
                    ylim=ylim, xlim=xlimPTS, # log="y",
                    ylab=expression(paste("CfH res [-]")),
                    las=1, type = "l", lwd=0.25, col="black")

lines(datetime,2*GlobalSolar, main="", lwd=0.25, col="orange")


##############################################################################

##### Plot scheme column one, "SH".
ylim<-range(as.numeric(scDat$SH))

plot(datetime,scDat$SH,
                    main="", xlab="Datum",
                    ylim=ylim, xlim=xlim, # log="y",
                    ylab=expression(paste("SH [-]")),
                    las=1, type = "l", lwd=0.25, col="black")

lines(datetime,GlobalSolar, main="", lwd=0.25, col="orange")

##### Plot scheme column two, "DHW/pref".
ylim<-range(scDat$DHW.pref)

plot(datetime,scDat$DHW.pref,
                    main="", xlab="Datum",
                    ylim=ylim, xlim=xlim, # log="y",
                    ylab=expression(paste("DHW/pref [-]")),
                    las=1, type = "l", lwd=0.25, col="black")

##### Plot scheme column three, "TRV".
ylim<-range(scDat$TRV)

plot(datetime,scDat$TRV,
                    main="", xlab="Datum",
                    ylim=ylim, xlim=xlim, # log="y",
                    ylab=expression(paste("TRV [-]")),
                    las=1, type = "l", lwd=0.25, col="black")
