initial control forcing ceiling below to match
* Building
this control file will be updated as natural vents are added
   1  # No. of functions
* Control function    1
# senses dry bulb temperature in ceiling_belo.
    8    0    0    0  # sensor data
# actuates the air point in ceiling_belo.
    8    0    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    0   11   0.000  # ctl type, law (senses dry bulb temperature in ceil_void.), start @
     12.  # No. of data items
  3000.000 0.000 3000.000 0.000 1.000 3.000 5.000 0.000 0.000 0.000 1.000 1.000
# Function:Zone links
 0,0,0,0,0,0,0,1,0,0
