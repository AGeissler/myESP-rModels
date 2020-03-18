#!/usr/bin/env Rscript
#
# Last changed: 27/01/2020
# Status: ??
#
#
#
library(tools)
library(polynom)
#library(plotly)
library(akima)         # Provides interp()
library(data.table)    # Provides fread() and setDT()
library(accelerometry) # Provides rle2()

# Press, W. H.; Flannery, B. P.; Teukolsky, S. A.; and Vetterling, W. T.
# "Vandermonde Matrices and Toeplitz Matrices."
# ¤2.8 in Numerical Recipes in FORTRAN: The Art of Scientific Computing,
# 2nd ed. Cambridge, England: Cambridge University Press, pp. 82-89, 1992.

################## F U N C T I O N S ##################
## Define polynomial x -> y based on coefficients.
calpoly<-function(x,COEFF) {
    yy<-COEFF[1]
    for (k in 2:length(COEFF))
    {
      yy<-yy + COEFF[k]*x^(k-1)
    }
    return(yy)
}

## Define polynomial x,y -> z based on coefficients.
HPfun<-function(x,y,COEFF) {
  z<-COEFF[[1]] + COEFF[[2]]*x + COEFF[[3]]*x*x
        + COEFF[[4]]*x*y + COEFF[[5]]*y + COEFF[[6]]*y*y
  return(z)
}

## Create results matrix for plotting
HPpowermatrix<-function(x,y,fun,COEFF) {
  z <- matrix(nrow=length(x), ncol=length(y))
  for (ix in 1:length(x)) {
    for (iy in 1:length(y)) {
      z[ix,iy]<-fun(x[ix],y[iy],COEFF)
    }
  }
  return(z)
}

############## E N D   F U N C T I O N S ##############

x_tgrnd<-seq(from=-5, to=25, by=5)
y_tfeed<-seq(from=30, to=60, by=5)

########## H E A T I N G    R A W    D A T A
# Curve data x,y for heating power @ 35 ¡C, "0 %" and "100 %" settings
# for inverter control.
HP35_0_x<-c(0,12)
HP35_0_y<-c(5.5,7.5)

HP35_100_x<-c(-6,10)
HP35_100_y<-c(15,25)

HP35_0_fun    <- lm(HP35_0_y~HP35_0_x)     # linear
HP35_100_fun  <- lm(HP35_100_y~HP35_100_x) # linear

# Curve data x,y for heating power @ 45 ¡C, "0 %" and "100 %" settings for inverter control.
HP45_0_x<-c(-6.2535,-4.4610,-3.1212,-1.9986,-0.7131,0.7535,2.4011,4.1393,5.4791,7.2354,9.2632,11.6713,13.4457,14.7674,16.4331,17.8635,19.6560)
HP45_0_y<-c(4.0843,4.3692,4.5476,4.7257,4.9040,5.1531,5.3672,5.6521,5.8658,6.1506,6.4359,6.7922,7.0771,7.2555,7.5049,7.7187,8.0390)

HP45_100_x<-c(-6.2354,-4.0265,0.3552,3.3969,7.1086,9.2270,10.1504,11.5989,13.4638,15.3830,17.3928,18.8050,19.9638)
HP45_100_y<-c(14.0772,15.2808,17.7585,19.5988,21.7931,23.1378,23.7040,24.7300,26.1450,27.4894,28.8339,29.9305,30.7089)

HP45_0_fun   <- lm(HP45_0_y~I(HP45_0_x) + I(HP45_0_x^2))       # quadratic
HP45_100_fun <- lm(HP45_100_y~I(HP45_100_x) + I(HP45_100_x^2)) # quadratic

# Curve data x,y for heating power @ 55 ¡C, "0 %" and "100 %" settings
# for inverter control.
HP55_0_x<-c(-6.052738337,0.90872211,7.184584178,12.93306288,19.47261663)
HP55_0_y<-c(3.5,4.6,5.6,6.5,7.4)

HP55_100_x<-c(-6.052738337,0.012170385,10.0851927,14.831643,19.94726166)
HP55_100_y<-c(13.31,16.49,20.56,21.71,22.61)

HP55_0_fun   <- lm(HP55_0_y~I(HP55_0_x) + I(HP55_0_x^2))       # quadratic
HP55_100_fun <- lm(HP55_100_y~I(HP55_100_x) + I(HP55_100_x^2)) # quadratic

########## C O O L I N G    R A W    D A T A
# Curve data x,y for cooling power @ 35 ¡C, "0 %" and "100 %" settings
# for inverter control.
CP35_0_x<-c(0,14)
CP35_0_y<-c(4, 6)

CP35_100_x<-c(0, 12)
CP35_100_y<-c(13,20.8)

CP35_0_fun    <- lm(CP35_0_y~CP35_0_x)     # linear
CP35_100_fun  <- lm(CP35_100_y~CP35_100_x) # linear

# Curve data x,y for cooling power @ 45 ¡C, "0 %" and "100 %" settings
# for inverter control.
CP45_0_x<-c(-0.005413941,8.023141943,11.74145778, 14.98923847)
CP45_0_y<-c( 3.566433566,4.755244755, 5.314685315, 5.839160839)

CP45_100_x<-c( 0.014012553, 7.537001898, 9.994134897,14.96784809)
CP45_100_y<-c(10.76923077, 15.00000,    16.36363636, 19.93006993)

CP45_0_fun   <- lm(CP45_0_y~I(CP45_0_x) + I(CP45_0_x^2))       # quadratic
CP45_100_fun <- lm(CP45_100_y~I(CP45_100_x) + I(CP45_100_x^2)) # quadratic

# Curve data x,y for cooling power @ 55 ¡C, "0 %" and "100 %" settings
# for inverter control.
CP55_0_x<-c(0,8,14.944)
CP55_0_y<-c(2.829364706,4.052894118,5.085082353)

CP55_100_x<-c(-0.032,9.984,12.032,14.912)
CP55_100_y<-c(8.193976471,13.6352,14.30004706,15.15557647)

CP55_0_fun   <- lm(CP55_0_y~I(CP55_0_x) + I(CP55_0_x^2))       # quadratic
CP55_100_fun <- lm(CP55_100_y~I(CP55_100_x) + I(CP55_100_x^2)) # quadratic

########### Matrix data for x,y -> z polynomial.
## Power ratings, heating power, lowest frequency.
HP0<-rbind(cbind(x_tgrnd,35,calpoly(x_tgrnd,HP35_0_fun$coefficients)),
           cbind(x_tgrnd,45,calpoly(x_tgrnd,HP45_0_fun$coefficients)),
           cbind(x_tgrnd,55,calpoly(x_tgrnd,HP55_0_fun$coefficients)))

## Increase number of data points in y-direction:
HP00<-NULL
for (x in 1:length(x_tgrnd)) {
  HP00<-rbind(HP00,cbind(x_tgrnd[x],y_tfeed,calpoly(y_tfeed,lm(subset(HP0, HP0[,1]==x_tgrnd[x])[,3]
                                               ~ I(subset(HP0, HP0[,1]==x_tgrnd[x])[,2])
                                               + I(subset(HP0, HP0[,1]==x_tgrnd[x])[,2]^2))$coefficients)))
}

## Power ratings, heating power, highest frequency.
HP1<-rbind(cbind(x_tgrnd,35,calpoly(x_tgrnd,HP35_100_fun$coefficients)),
           cbind(x_tgrnd,45,calpoly(x_tgrnd,HP45_100_fun$coefficients)),
           cbind(x_tgrnd,55,calpoly(x_tgrnd,HP55_100_fun$coefficients)))

## Increase number of data points in y-direction:
HP10<-NULL
for (x in 1:length(x_tgrnd)) {
  HP10<-rbind(HP10,cbind(x_tgrnd[x],y_tfeed,calpoly(y_tfeed,lm(subset(HP1, HP1[,1]==x_tgrnd[x])[,3]
                                               ~ I(subset(HP1, HP1[,1]==x_tgrnd[x])[,2])
                                               + I(subset(HP1, HP1[,1]==x_tgrnd[x])[,2]^2))$coefficients)))
}

## Power ratings, cooling power, lowest frequency.
CP0<-rbind(cbind(x_tgrnd,35,calpoly(x_tgrnd,CP35_0_fun$coefficients)),
           cbind(x_tgrnd,45,calpoly(x_tgrnd,CP45_0_fun$coefficients)),
           cbind(x_tgrnd,55,calpoly(x_tgrnd,CP55_0_fun$coefficients)))

## Increase number of data points in y-direction:
CP00<-NULL
for (x in 1:length(x_tgrnd)) {
  CP00<-rbind(CP00,cbind(x_tgrnd[x],y_tfeed,calpoly(y_tfeed,lm(subset(CP0, CP0[,1]==x_tgrnd[x])[,3]
                                               ~ I(subset(CP0, CP0[,1]==x_tgrnd[x])[,2])
                                               + I(subset(CP0, CP0[,1]==x_tgrnd[x])[,2]^2))$coefficients)))
}

## Power ratings, cooling power, highest frequency.
CP1<-rbind(cbind(x_tgrnd,35,calpoly(x_tgrnd,CP35_100_fun$coefficients)),
           cbind(x_tgrnd,45,calpoly(x_tgrnd,CP45_100_fun$coefficients)),
           cbind(x_tgrnd,55,calpoly(x_tgrnd,CP55_100_fun$coefficients)))

## Increase number of data points in y-direction:
CP10<-NULL
for (x in 1:length(x_tgrnd)) {
  CP10<-rbind(CP10,cbind(x_tgrnd[x],y_tfeed,calpoly(y_tfeed,lm(subset(CP1, CP1[,1]==x_tgrnd[x])[,3]
                                               ~ I(subset(CP1, CP1[,1]==x_tgrnd[x])[,2])
                                               + I(subset(CP1, CP1[,1]==x_tgrnd[x])[,2]^2))$coefficients)))
}


## factor for hp und COP scaling

fac_heat<-0.85
fac_cool<-1.0

########### Write data file for spline interpolation mode ###########
theData<-cbind(HP00[,1:2],HP00[,3]*fac_heat,HP10[,3]*fac_heat,CP00[,3]*fac_cool,CP10[,3]*fac_cool)

write.table(theData, file = paste0("GSHP_",sprintf("%.2f",fac_heat),"_",sprintf("%.2f",fac_cool),".hpd"), 
              append = FALSE, quote = FALSE, sep = ",",
              eol = "\n", na = "NA", dec = ".", row.names = FALSE,
              col.names = FALSE, qmethod = c("escape", "double"),
              fileEncoding = "")

quit

#####################################################################
## Find x,y->z polynomial coefficients
# 1. for "minimium heating power"
HP0<-HP00
dfHP0<-as.data.frame(HP0)

fitHP0 <- lm( HP0[,3] ~ I(HP0[,1]) + I(HP0[,1]^2) + I(HP0[,1]*HP0[,2]) + I(HP0[,2])
                                   + I(HP0[,2]^2), data=dfHP0, singular.ok=FALSE)
coefHP0<-fitHP0$coefficients
# coefHP0[[1]] = <<actual coefficient 1 (intercept)>>

# 2. for "full heating power"
dfHP1<-as.data.frame(HP1)

fitHP1 <- lm( HP1[,3] ~ I(HP1[,1]) + I(HP1[,1]^2) + I(HP1[,1]*HP1[,2]) + I(HP1[,2]) + I(HP1[,2]^2), data=dfHP1)
coefHP1<-fitHP1$coefficients

# 3. for "minimium cooling power"
dfCP0<-as.data.frame(CP0)

fitCP0 <- lm( CP0[,3] ~ I(CP0[,1]) + I(CP0[,1]^2) + I(CP0[,1]*CP0[,2]) + I(CP0[,2]) + I(CP0[,2]^2), data=dfCP0)
coefCP0<-fitCP0$coefficients

# 4. for "full cooling power"
dfCP1<-as.data.frame(CP1)

fitCP1 <- lm( CP1[,3] ~ I(CP1[,1]) + I(CP1[,1]^2) + I(CP1[,1]*CP1[,2]) + I(CP1[,2]) + I(CP1[,2]^2), data=dfCP1)
coefCP1<-fitCP1$coefficients

###################
## Plot
# Create z-value matrix from x,y data based on refined ground and feed
# temperature sequences.
x_tgrnd<-seq(from=-5, to=25, by=0.5)
y_tfeed<-seq(from=30, to=60, by=0.5)

CPlow<-HPpowermatrix(x_tgrnd,y_tfeed,HPfun,coefCP0)
CPhigh<-HPpowermatrix(x_tgrnd,y_tfeed,HPfun,coefCP1)

thePlot<-dfHP0
p <- plot_ly() %>%
  add_markers(x = thePlot$x_tgrnd, y = thePlot$V2, z = thePlot$V3, color = thePlot$V3, colors = c('#BF382A', '#0C4B8E')) %>%
#  add_surface(x = x_tgrnd, y = y_tfeed, z = CPlow) %>%
#  add_surface(x = x_tgrnd, y = y_tfeed, z = CPhigh, opacity = 0.98)
  layout(scene = list(xaxis = list(title = 't ground'),
                     yaxis = list(title = 't source'),
                     zaxis = list(title = 'power')))

