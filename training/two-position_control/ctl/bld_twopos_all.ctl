Two-position control with
* Building
varying sensors and actuators
   4  # No. of functions
* Control function    1
# senses the temperature of the current zone.
    0    0    0    0  # sensor data
# actuates air point of the current zone
    0    0    0  # actuator data
    1  # all daytypes
    1  365  # valid Sun-01-Jan - Sun-31-Dec
     1  # No. of periods in day: weekday     
    0   10   0.000  # ctl type, law (separate ON/OFF flux), start @
      6.  # No. of data items
  4000.000 2500.000 20.000 22.000 26.000 24.000
* Control function    2
# senses a mix of db T and MRT in reception2.
   -2    2   50    0  # sensor data
# actuates air point of the current zone
    0    0    0  # actuator data
    1  # all daytypes
    1  365  # valid Sun-01-Jan - Sun-31-Dec
     1  # No. of periods in day: weekday     
    0   10   0.000  # ctl type, law (separate ON/OFF flux), start @
      6.  # No. of data items
  6000.000 3000.000 20.000 22.000 24.000 23.000
* Control function    3
# senses the temperature of the current zone.
    0    0    0    0  # sensor data
# actuates mixed convective/radiant flux in reception3.
   -2    3   50  # actuator data
    1  # all daytypes
    1  365  # valid Sun-01-Jan - Sun-31-Dec
     1  # No. of periods in day: weekday     
    0   10   0.000  # ctl type, law (separate ON/OFF flux), start @
      6.  # No. of data items
  6000.000 4500.000 20.000 22.000 26.000 24.000
* Control function    4
# senses a mix of db T and MRT in reception4.
   -2    4   50    0  # sensor data
# actuates mixed convective/radiant flux in reception4.
   -2    4   50  # actuator data
    1  # all daytypes
    1  365  # valid Sun-01-Jan - Sun-31-Dec
     1  # No. of periods in day: weekday     
    0   10   0.000  # ctl type, law (separate ON/OFF flux), start @
      6.  # No. of data items
  6000.000 6000.000 20.000 22.000 24.000 23.000
# Function:Zone links
 1,2,3,4
