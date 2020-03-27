Control cellular_GSHP; plant and CFC
* Plant
icGSHP with DHW_tank; Plant control w/ air-t sens; on-off valves and BCD
   7  # No. of loops
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
  1.00000 20.00000 21.00000 1.00000 0.00000 0.00000 0.00000
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
  1.00000 20.00000 21.00000 1.00000 0.00000 0.00000 0.00000
* Control loops    3
# reads measurements from a boundry data file.
   -5    1    0    0    0  # sensor 
# plant component   1:icGSHP @ node no.  1
   -1    1    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Thu-01-Jan - Thu-31-Dec
     1  # No. of periods in day: weekdays_100
    0    6   0.000  # ctl type, law (Null controller.), start @
      0.  # No. of data items
* Control loops    4
# reads measurements from a boundry data file.
   -5    2    0    0    0  # sensor 
# plant component   1:icGSHP @ node no.  2
   -1    1    2    0  # actuator 
    1  # all daytypes
    1  365  # valid Thu-01-Jan - Thu-31-Dec
     1  # No. of periods in day: weekdays_100
    0    6   0.000  # ctl type, law (Null controller.), start @
      0.  # No. of data items
* Control loops    5
# reads measurements from a boundry data file.
   -5    2    0    0    0  # sensor 
# plant component   1:icGSHP @ node no.  3
   -1    1    3    0  # actuator 
    1  # all daytypes
    1  365  # valid Thu-01-Jan - Thu-31-Dec
     1  # No. of periods in day: weekdays_100
    0    6   0.000  # ctl type, law (Null controller.), start @
      0.  # No. of data items
* Control loops    6
# senses var in compt.  1:icGSHP @ node no.  1
   -1    1    1    0    0  # sensor 
# plant component   1:icGSHP @ node no.  1
   -1    1    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Thu-01-Jan - Thu-31-Dec
     1  # No. of periods in day: weekdays_100
   41   14   0.000  # ctl type, law (Multi-sensor), start @
      9.  # No. of data items
  1.00000 1.00000 2.00000 2.00000 3.00000 1.00000 0.00000 1.00000 0.00000
* Control loops    7
# reads measurements from a boundry data file.
   -5    3    0    0    0  # sensor 
# plant component   2:trv_SH_DHW_VL @ node no.  1
   -1   10    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Thu-01-Jan - Thu-31-Dec
     1  # No. of periods in day: weekdays_100
    0    6   0.000  # ctl type, law (Null controller.), start @
      0.  # No. of data items
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
