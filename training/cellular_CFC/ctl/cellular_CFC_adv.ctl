Ideal control for dual office model. Weekdays normal office hours, saturday reduced occupied hours, sunday stand-by only. One person per office, 100W lighting and 150W small power.
* Building
this is a base case set of assumptions
   1  # No. of functions
* Control function    1
# senses the temperature of the current zone.
    0    0    0    0  # sensor data
# actuates air point of the current zone
    0    0    0  # actuator data
    0 # day types follow calendar  3
    1  365  # valid Sun-01-Jan - Sun-31-Dec
     3  # No. of periods in day: weekdays    
    0    1   0.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  2500.000 0.000 2500.000 0.000 15.000 26.000 0.000
    0    1   6.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  2500.000 0.000 2500.000 0.000 19.000 24.000 0.000
    0    1  18.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  2500.000 0.000 2500.000 0.000 15.000 26.000 0.000
    1  365  # valid Sun-01-Jan - Sun-31-Dec
     3  # No. of periods in day: saturday    
    0    1   0.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  2500.000 0.000 2500.000 0.000 15.000 26.000 0.000
    0    1   9.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  2500.000 0.000 2500.000 0.000 19.000 24.000 0.000
    0    2  17.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    1  365  # valid Sun-01-Jan - Sun-31-Dec
     1  # No. of periods in day: sunday      
    0    1   0.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  2500.000 0.000 2500.000 0.000 10.000 30.000 0.000
# Function:Zone links
 1,1,1
* CFC
Sense total solar on frame, control manager_a by 3 angles and manager_b by cut off.
   2  # No. of functions
* Control function   1
# senses incident sol rad on frame in manager_a.
   -4    1    8    0  # sensor data
# actuates Shade ON/OFF and three slat angles   1 in manager_a.
    3    1    1  # actuator data
    1 # No. day types
    1  365  # valid Sun-01-Jan - Sun-31-Dec
     2  # No. of periods in day
    3    1   0.000  # ctl type, law (basic control), start @
      2.  # No. of data items
  800.000 750.000
    8    1   6.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  100.000 150.000 250.000 380.000 0.000 45.000 80.000
* Control function   2
# senses incident sol rad on frame in manager_b.
   -4    2    8    0  # sensor data
# actuates Cutoff shade control   1 in manager_b.
    4    2    1  # actuator data
    1 # No. day types
    1  365  # valid Sun-01-Jan - Sun-31-Dec
     1  # No. of periods in day
    4    1   0.000  # ctl type, law (basic control), start @
      4.  # No. of data items
  500.000 400.000 80.000 0.000
