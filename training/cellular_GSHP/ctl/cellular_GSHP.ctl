GSHP control for dual office model. One person per office, 100W lighting and 150W small power.
* Plant
Plant control w/ air temp sensors and on-off valves.
   3  # No. of loops
* Control loops    1
# senses dry bulb temperature in manager_a.
    1    0    0    0    0  # sensor 
# plant component   5:trv_manager_a @ node no.  1
   -1    5    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Sat-01-Jan - Sat-31-Dec
     1  # No. of periods in day: weekdays    
   12    8   0.000  # ctl type, law (On-Off control.), start @
      7.  # No. of data items
  1.00000 20.00000 21.00000 0.50000 0.00000 0.00000 0.00000
* Control loops    2
# senses dry bulb temperature in manager_b.
    2    0    0    0    0  # sensor 
# plant component   6:trv_manager_b @ node no.  1
   -1    6    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Sat-01-Jan - Sat-31-Dec
     1  # No. of periods in day: weekdays    
   12    8   0.000  # ctl type, law (On-Off control.), start @
      7.  # No. of data items
  1.00000 20.00000 21.00000 0.50000 0.00000 0.00000 0.00000
* Control loops    3
# senses var in compt.  1:GSHP @ node no.  1
   -1    1    1    0    0  # sensor 
# plant component   1:GSHP @ node no.  1
   -1    1    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Sat-01-Jan - Sat-31-Dec
     5  # No. of periods in day: weekdays    
   41   14   0.000  # ctl type, law (Multi-sensor), start @
      7.  # No. of data items
  1.00000 1.00000 2.00000 1.00000 0.00000 1.00000 0.00000
   12    0   7.000  # ctl type, law (period off), start @
      0.  # No. of data items
   41   14   7.200  # ctl type, law (Multi-sensor), start @
      7.  # No. of data items
  1.00000 1.00000 2.00000 1.00000 0.00000 1.00000 0.00000
   12    0  18.000  # ctl type, law (period off), start @
      0.  # No. of data items
   41   14  18.200  # ctl type, law (Multi-sensor), start @
      7.  # No. of data items
  1.00000 1.00000 2.00000 1.00000 0.00000 1.00000 0.00000
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
