reception occupant 80W with diversitz during the day max to 400 W. Lighting at 150 W during occupied period. 60W equipment during occupied period
* Building
1kW heating overnight during setback, 2kW office hours to reach 20C setpoint during office hours. Weekend setback to 10C.
   1  # No. of functions
* Control function    1
# senses the temperature of the current zone.
    0    0    0    0  # sensor data
# actuates air point of the current zone
    0    0    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     6  # No. of periods in day: weekdays    
    0    1   0.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  1000.000 0.000 1000.000 0.000 10.000 24.000 0.000
    0    1   7.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  1000.000 0.000 1000.000 0.000 20.000 24.000 0.000
    0    1   8.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  2000.000 0.000 1000.000 0.000 21.000 24.000 0.000
    0    1   9.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  2000.000 0.000 1000.000 0.000 21.000 24.000 0.000
    0    1  17.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  1000.000 0.000 1000.000 0.000 20.000 24.000 0.000
    0    2  21.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0    1   8.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  1000.000 0.000 1000.000 0.000 10.000 24.000 0.000
    0    2  19.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0    1   8.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  500.000 0.000 1000.000 0.000 10.000 24.000 0.000
    0    2  19.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: holiday     
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0    1   8.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  500.000 0.000 1000.000 0.000 10.000 24.000 0.000
    0    2  19.000  # ctl type, law (free floating), start @
      0.  # No. of data items
# Function:Zone links
 1,1
* Mass Flow
extract fan on if gr 23C
   1  # No. of controls
* Control mass    1
# senses node (2) examination
   -4    2    0    0  # sensor data
# actuates flow connection:  11 examination - BW-EX02:013 via GrEXz02:013
   -3   11    0  # actuator data
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 22.00 direct action ON fraction 1.000.), starting @
      3.  # No. of data items
  22.00000 1.00000 1.00000
