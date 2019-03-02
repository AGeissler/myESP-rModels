no overall control description supplied
* Building
no zone control description supplied
   2  # No. of functions
* Control function    1
# senses the temperature of the current zone.
    0    0    0    0  # sensor data
# actuates the air point in test_chamb.
    2    0    0  # actuator data
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
    0    1   0.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  5000.000 0.000 5000.000 0.000 24.000 22.000 0.000
* Control function    2
# senses a mix of db T and MRT in Lab_Env.
   -2    1   50    0  # sensor data
# actuates mixed convective/radiant flux in Lab_Env.
   -2    1   50  # actuator data
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
    0    1   0.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  5000.000 0.000 5000.000 0.000 26.000 26.000 0.000
# Function:Zone links
 2,1
