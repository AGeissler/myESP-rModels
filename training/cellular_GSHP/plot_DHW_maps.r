#
# Expects dataframe "movable" to be defined/filled/available!
#
# Last changed: 03/11/2018
#
# Status: usable
# Generate color maps for selected variables from h3k (.csv) file.
#

######### DHW tank ###############
grx <- glob2rx("plant.DHW.tank.*")
mv_DHW_tank<-movable[,c("building.time.present..hours.","building.day.number.present..days.","thedate",
                      grep(grx, names(movable), ignore.case = TRUE, value = TRUE, perl = TRUE))]


#      plant.DHW.tank.node.2.water.flow..kg.s.
## Set column names
colnames(mv_DHW_tank)<-c("hour","day","thedate",sapply(strsplit(colnames(mv_DHW_tank[4:length(mv_DHW_tank)]),"\\."),
         FUN=function(x){paste(x[2],x[3],x[4],x[5],x[6],x[7], sep="_")},
         simplify = TRUE, USE.NAMES = TRUE))

                               
# [4] "DHW_tank_misc_data_average_temperature"
# [5] "DHW_tank_node_1_connection_1"          
# [6] "DHW_tank_node_1_connection_1"          
# [7] "DHW_tank_node_1_temperature_" Wassertank         
# [8] "DHW_tank_node_1_water_flow"   kommt von GSHP         
# [9] "DHW_tank_node_2_connection_1"          
#[10] "DHW_tank_node_2_connection_1"          
#[11] "DHW_tank_node_2_temperature_" Temp von Draw         
#[12] "DHW_tank_node_2_water_flow"   Temp von Draw

 

## Reduce list to values of interest (by column index)
#mv_DHW_tank<-mv_DHW_tank[,c(1:3,10,13:14,17:18)]t

#my_tank_Tz<-c(10,13,17)
#my_tank_fz<-c(14,18)
my_tank_Tz<-c(7,11)
my_tank_fz<-c(8,12)

# Calculate and adapt y-axis start and end values
dayMIN<-min(mv_DHW_tank[,3])
dayMAX<-max(mv_DHW_tank[,3])

# Calculate and adapt min and max values for color scale
scMIN<-min(apply(mv_DHW_tank[,my_tank_Tz],2,min))
if((floor(scMIN) %% 2) == 0) {
    scMIN<-floor(scMIN)
} else {
    scMIN<-floor(scMIN)-5
}

scMAX<-max(apply(mv_DHW_tank[,my_tank_Tz],2,max))
if((ceiling(scMAX) %% 2) == 0) {
    scMAX<-ceiling(scMAX)
} else {
    scMAX<-ceiling(scMAX)+5
}

## Farbgradient Temperaturen festlegen
if (bFixedScales==T) {
    TL=15
    TH=65
} else {
    TL=max(scMIN,0)
    TH=scMAX
}
Tgrad=(TH-TL)/20

color.gradient <- function(x, colors=c("darkblue","royalblue","lightblue","pink","red","red","darkred","darkred"), colsteps=(1*(TH-TL+1))) {
    ##  return( colorRampPalette(colors) (colsteps) [ findInterval(x, seq(min(x),max(x), length.out=colsteps)) ] )
  return( colorRampPalette(colors) (colsteps) [ findInterval(x, seq(TL,TH, length.out=colsteps)) ] )
}

## Generate x1 factor for placing N figures
Nfig=2
X1fac=trunc(100*(1/Nfig),2)/100
#X20=trunc(100*(1/(Nfig-1)),2)/100
X20=trunc(100*(1/Nfig),2)/100
Y1=0.15
Y2=1.0

## Set plot output file to type png
png(file = outputfile, width=Nfig*3.5, height=8, units= "in", res=300, type="quartz", bg = "transparent")

## Draw N Plots side by side
## First plot
par(fig=c(0,X20,Y1,Y2) )
plot(as.numeric(mv_DHW_tank$hour),as.numeric(mv_DHW_tank$thedate),
     col=color.gradient(round(as.numeric(mv_DHW_tank[,my_tank_Tz[1]]), digits = 0)),
     ylim=c(dayMAX,dayMIN),pch=15,main=colnames(mv_DHW_tank[my_tank_Tz[1]]),
     xlab="Stunde",ylab="Tag",xaxt="n",yaxt="n")
axis(1, at = seq(0, 24, by = 6), las=1)
axis.Date(2, at = seq(dayMAX, dayMIN, by = -10), las=1)

## 2nd to Nth plot: loop jj=1 ... N-1
for(jj in 1:(Nfig-1))
{
    par(fig=c((jj*X1fac),min(1.,(X20+(jj*X1fac))),Y1,Y2), new=TRUE)
    plot(as.numeric(mv_DHW_tank$hour),as.numeric(mv_DHW_tank$thedate),
         col=color.gradient(round(as.numeric(mv_DHW_tank[,my_tank_Tz[(jj+1)]]), digits = 0)),
         ylim=c(dayMAX,dayMIN),pch=15,main=colnames(mv_DHW_tank[my_tank_Tz[(jj+1)]]),
         xlab="Stunde",ylab="",yaxt="n", xaxt="n")
    axis(1, at = seq(0, 24, by = 6), las=1)
}
## ... loop end ...

## Temperaturbalken unter den Hotplots
yyy<-seq(TL,TH, by=2.5)
yyy<-as.data.frame(yyy)
yyy<-cbind(yyy,1)

## Set subplot "scale" dimensions (relative) and then plot
par(fig=c(0.15,0.85,0,0.25), new=TRUE)
plot(yyy[,1],yyy[,2],col=color.gradient(yyy[,1]),ylim=c(0.99,1.01),pch=15,xaxt="n",
     xlab=expression(paste("Temperature [",""^"o","C]")),yaxt="n",ylab="")
axis(1, at = seq(TL, TH, by=2.5), las=1)




###########################################################################
############                DHW stochastic draw                       #####
###########################################################################
grx <- glob2rx("plant.DHW.draw.*")
mv_DHW_draw<-movable[,c("building.time.present..hours.","building.day.number.present..days.","thedate",
                      grep(grx, names(movable), ignore.case = TRUE, value = TRUE, perl = TRUE))]

# [1] "hour"                         "day"                         
# [3] "thedate"                      "DHW_draw_adat_1__var"        
# [5] "DHW_draw_adat_2__var"         "DHW_draw_adat_3__var"        
# [7] "DHW_draw_adat_4__var"         "DHW_draw_adat_5__var"        
# [9] "DHW_draw_adat_6__var"         "DHW_draw_node_1_connection_1"
#[11] "DHW_draw_node_1_connection_1" "DHW_draw_node_1_temperature_"
#[13] "DHW_draw_node_1_water_flow"  


## Set column names
colnames(mv_DHW_draw)<-c("hour","day","thedate",sapply(strsplit(colnames(mv_DHW_draw[4:length(mv_DHW_draw)]),"\\."),
                          FUN=function(x){paste(x[2],x[3],x[4],x[5],x[6],x[7], sep="_")},
                          simplify = TRUE, USE.NAMES = TRUE))

## Reduce list to values of interest (by column index)
#mv_DHW_draw<-mv_DHW_draw[,c(1:3,10,14:15)]
my_draw_Tz<-c(10,12)
my_draw_fz<-c(11,13)

# Calculate and adapt min and max values for color scale
scMIN<-3600.*min(apply(mv_DHW_draw[,my_draw_fz],2,min))
if((floor(scMIN) %% 2) == 0) {
    scMIN<-floor(scMIN)
} else {
    scMIN<-floor(scMIN)-1
}

scMAX<-3600.*max(apply(mv_DHW_draw[,my_draw_fz],2,max))
if((ceiling(scMAX) %% 2) == 0) {
    scMAX<-ceiling(scMAX)
} else {
    scMAX<-ceiling(scMAX)+1
}

## Farbgradient Temperaturen festlegen
if (bFixedScales==T) {
    TL=0.
    TH=.25
} else {
    TL=max(scMIN,0)
    TH=scMAX
}
Tgrad=(TH-TL)/20
#Tgrad=0.01

color.gradient <- function(x, colors=c("darkblue","royalblue","lightblue","pink","red","red","darkred","darkred"), colsteps=(20)) {
    ##  return( colorRampPalette(colors) (colsteps) [ findInterval(x, seq(min(x),max(x), length.out=colsteps)) ] )
  return( colorRampPalette(colors) (colsteps) [ findInterval(x, seq(TL,TH, length.out=colsteps)) ] )
}

## Set which data is to be plotted
theVar=mv_DHW_draw
theSelection=my_draw_fz

## Generate x1 factor for placing N figures
Nfig=length(theSelection)
X1fac=trunc(100*(1/Nfig),2)/100
X20=trunc(100*(1/Nfig),2)/100
Y1=0.15
Y2=1.0

## Set plot output file to type png
png(file = outputfile2, width=Nfig*3.5, height=8, units= "in", res=300, type="quartz", bg = "transparent")

## Draw N Plots side by side
## First plot
par(fig=c(0,X20,Y1,Y2) )
plot(as.numeric(theVar$hour),as.numeric(theVar$thedate),
     col=color.gradient(round(3600.*as.numeric(theVar[,theSelection[1]]), digits = 2)),
     ylim=c(dayMAX,dayMIN),pch=15,main=colnames(theVar[theSelection[1]]),
     xlab="Stunde",ylab="Tag",xaxt="n",yaxt="n")
axis(1, at = seq(0, 24, by = 6), las=1)
axis.Date(2, at = seq(dayMAX, dayMIN, by = -10), las=1)

## 2nd to Nth plot: loop jj=1 ... N-1
if (Nfig > 1) {
  for(jj in 1:(Nfig-1))
  {
      par(fig=c((jj*X1fac),min(1.,(X20+(jj*X1fac))),Y1,Y2), new=TRUE)
      plot(as.numeric(theVar$hour),as.numeric(theVar$thedate),
           col=color.gradient(round(3600.*as.numeric(theVar[,theSelection[(jj+1)]]), digits = 2)),
           ylim=c(dayMAX,dayMIN),pch=15,main=colnames(theVar[theSelection[(jj+1)]]),
           xlab="Stunde",ylab="",yaxt="n", xaxt="n")
      axis(1, at = seq(0, 24, by = 6), las=1)
  }
}
## ... loop end ...

## Temperaturbalken unter den Hotplots
yyy<-seq(TL,TH, by=Tgrad)
yyy<-as.data.frame(yyy)
yyy<-cbind(yyy,1)

## Set subplot "scale" dimensions (relative) and then plot
par(fig=c(0.15,0.85,0,0.25), new=TRUE)
plot(yyy[,1],yyy[,2],col=color.gradient(yyy[,1]),ylim=c(0.99,1.01),pch=15,xaxt="n",
     xlab=expression(paste("Draw flow rate [l","/","h]")),yaxt="n",ylab="")
axis(1, at = seq(TL, TH, by=Tgrad), las=1)


## Set plot output file to type png, temp vrs. mass flow draw
png(file = outputfile3, width=(Nfig-1)*3.5, height=8, units= "in", res=300, type="quartz", bg = "transparent")

## Draw N Plots side by side
## First plot

xlim<-range(mv_DHW_tank$DHW_tank_node_2_temperature_)
ylim<-range(mv_DHW_tank$DHW_tank_node_2_water_flow)


plot(mv_DHW_tank$DHW_tank_node_2_temperature_,mv_DHW_tank$DHW_tank_node_2_water_flow,
                   main="", xlab="DHW tank node 2 temp [°C]",
                   ylim=ylim, xlim=xlim, # log="y",
                   ylab=paste("DHW tank node 2 mass flow [kg/s]"),
                   las=1, col="blue")

