living room control of wch radiator - one day type applicable all year
* Building
Example of building control via wet central heating.  For more informati see the wch.log file in the cfg folder.
   8  # No. of functions
* Control function    1
# senses the temperature of the current zone.
    0    0    0    0  # sensor data
# actuates air point of the current zone
    0    0    0  # actuator data
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
    0    6   0.000  # ctl type, law (flux zone/plant), start @
      5.  # No. of data items
  7.000 1.000 2.000 1000.000 1000.000
* Control function    2
# senses the temperature of the current zone.
    0    0    0    0  # sensor data
# actuates air point of the current zone
    0    0    0  # actuator data
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
    0    6   0.000  # ctl type, law (flux zone/plant), start @
      5.  # No. of data items
  15.000 1.000 2.000 2000.000 2000.000
* Control function    3
# senses the temperature of the current zone.
    0    0    0    0  # sensor data
# actuates air point of the current zone
    0    0    0  # actuator data
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
    0    6   0.000  # ctl type, law (flux zone/plant), start @
      5.  # No. of data items
  23.000 1.000 2.000 1500.000 1500.000
* Control function    4
# senses the temperature of the current zone.
    0    0    0    0  # sensor data
# actuates air point of the current zone
    0    0    0  # actuator data
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
    0    6   0.000  # ctl type, law (flux zone/plant), start @
      5.  # No. of data items
  31.000 1.000 2.000 2500.000 2500.000
* Control function    5
# senses the temperature of the current zone.
    0    0    0    0  # sensor data
# actuates air point of the current zone
    0    0    0  # actuator data
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
    0    6   0.000  # ctl type, law (flux zone/plant), start @
      5.  # No. of data items
  38.000 1.000 2.000 1000.000 1000.000
* Control function    6
# senses the temperature of the current zone.
    0    0    0    0  # sensor data
# actuates air point of the current zone
    0    0    0  # actuator data
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
    0    6   0.000  # ctl type, law (flux zone/plant), start @
      5.  # No. of data items
  46.000 1.000 2.000 1500.000 1500.000
* Control function    7
# senses the temperature of the current zone.
    0    0    0    0  # sensor data
# actuates air point of the current zone
    0    0    0  # actuator data
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
    0    6   0.000  # ctl type, law (flux zone/plant), start @
      5.  # No. of data items
  54.000 1.000 2.000 1000.000 1000.000
* Control function    8
# senses the temperature of the current zone.
    0    0    0    0  # sensor data
# actuates air point of the current zone
    0    0    0  # actuator data
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
    0    6   0.000  # ctl type, law (flux zone/plant), start @
      5.  # No. of data items
  62.000 1.000 2.000 750.000 750.000
# Function:Zone links
 1,4,2,3,0,6,8,7,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
* Plant
Test
  10  # No. of loops
* Control loops    1
# senses var in compt.  8:tstat1 @ node no.  1
   -1    8    1    0    0  # sensor 
# plant component   1:boiler @ node no.  1
   -1    1    1    0  # actuator 
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     5  # No. of periods in day: weekdays    
    0    0   0.000  # ctl type, law (period off), start @
      0.  # No. of data items
   12    3   7.000  # ctl type, law (Prop numerical ctrl.), start @
      5.  # No. of data items
  0.00000 1.00000 21.00000 21.00000 0.50000
    0    0   9.000  # ctl type, law (period off), start @
      0.  # No. of data items
   12    3  16.000  # ctl type, law (Prop numerical ctrl.), start @
      5.  # No. of data items
  0.00000 1.00000 21.00000 21.00000 0.50000
    0    0  23.000  # ctl type, law (period off), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    0    0   0.000  # ctl type, law (period off), start @
      0.  # No. of data items
   12    3   7.000  # ctl type, law (Prop numerical ctrl.), start @
      5.  # No. of data items
  0.00000 1.00000 21.00000 21.00000 0.50000
    0    0  23.000  # ctl type, law (period off), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    0    0   0.000  # ctl type, law (period off), start @
      0.  # No. of data items
   12    3   7.000  # ctl type, law (Prop numerical ctrl.), start @
      5.  # No. of data items
  0.00000 1.00000 21.00000 21.00000 0.50000
    0    0  23.000  # ctl type, law (period off), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: holiday     
    0    0   0.000  # ctl type, law (period off), start @
      0.  # No. of data items
   12    3   7.000  # ctl type, law (Prop numerical ctrl.), start @
      5.  # No. of data items
  0.00000 1.00000 21.00000 21.00000 0.50000
    0    0  23.000  # ctl type, law (period off), start @
      0.  # No. of data items
* Control loops    2
# senses var in compt.  1:boiler @ node no.  1
   -1    1    1    0    0  # sensor 
# plant component   8:tstat1 @ node no.  1
   -1    8    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
   16    3   0.000  # ctl type, law (Prop numerical ctrl.), start @
      5.  # No. of data items
  0.20000 0.00000 1.00000 0.00000 0.00000
* Control loops    3
# senses var in compt. 16:TRV2 @ node no.  1
   -1   16    1    0    0  # sensor 
# plant component  13:DV2 @ node no.  1
   -1   13    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
   18    5   0.000  # ctl type, law (Prop`l damper ctl.), start @
      6.  # No. of data items
  0.00020 2.00000 20.50000 19.50000 0.00000 0.00000
* Control loops    4
# senses var in compt. 24:TRV3 @ node no.  1
   -1   24    1    0    0  # sensor 
# plant component  21:DV3 @ node no.  1
   -1   21    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
   18    5   0.000  # ctl type, law (Prop`l damper ctl.), start @
      6.  # No. of data items
  0.00015 1.50000 20.50000 19.50000 0.00000 0.00000
* Control loops    5
# senses var in compt. 32:TRV4 @ node no.  1
   -1   32    1    0    0  # sensor 
# plant component  29:DV4 @ node no.  1
   -1   29    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
   18    5   0.000  # ctl type, law (Prop`l damper ctl.), start @
      6.  # No. of data items
  0.00025 2.50000 21.50000 20.50000 0.00000 0.00000
* Control loops    6
# senses var in compt. 41:TRV5 @ node no.  1
   -1   38    1    0    0  # sensor 
# plant component  38:DV5 @ node no.  1
   -1   35    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
   18    5   0.000  # ctl type, law (Prop`l damper ctl.), start @
      6.  # No. of data items
  0.00010 1.00000 20.50000 19.50000 0.00000 0.00000
* Control loops    7
# senses var in compt. 49:TRV6 @ node no.  1
   -1   46    1    0    0  # sensor 
# plant component  46:DV6 @ node no.  1
   -1   43    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
   18    5   0.000  # ctl type, law (Prop`l damper ctl.), start @
      6.  # No. of data items
  0.00015 1.50000 20.50000 19.50000 0.00000 0.00000
* Control loops    8
# senses var in compt. 57:TRV7 @ node no.  1
   -1   54    1    0    0  # sensor 
# plant component  54:DV7 @ node no.  1
   -1   51    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
   18    5   0.000  # ctl type, law (Prop`l damper ctl.), start @
      6.  # No. of data items
  0.00010 1.00000 20.50000 19.50000 0.00000 0.00000
* Control loops    9
# senses var in compt. 65:TRV8 @ node no.  1
   -1   62    1    0    0  # sensor 
# plant component  62:DV8 @ node no.  1
   -1   59    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
   18    5   0.000  # ctl type, law (Prop`l damper ctl.), start @
      6.  # No. of data items
  0.00007 0.75000 20.50000 19.50000 0.00000 0.00000
* Control loops   10
# senses var in compt. 8:tstat1 @ node no.  1
   -1    8    1    0    0  # sensor 
# plant component  70:pump @ node no.  1
   -1   66    1    0  # actuator 
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     5  # No. of periods in day: weekdays    
    0    0   0.000  # ctl type, law (period off), start @
      0.  # No. of data items
   12    3   7.000  # ctl type, law (Prop numerical ctrl.), start @
      5.  # No. of data items
  0.00000 0.00073 21.00000 21.00000 0.50000
    0    0   9.000  # ctl type, law (period off), start @
      0.  # No. of data items
   12    3  16.000  # ctl type, law (Prop numerical ctrl.), start @
      5.  # No. of data items
  0.00000 0.00073 21.00000 21.00000 0.50000
    0    0  23.000  # ctl type, law (period off), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    0    0   0.000  # ctl type, law (period off), start @
      0.  # No. of data items
   12    3   7.000  # ctl type, law (Prop numerical ctrl.), start @
      5.  # No. of data items
  0.00000 0.00073 21.00000 21.00000 0.50000
    0    0  23.000  # ctl type, law (period off), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    0    0   0.000  # ctl type, law (period off), start @
      0.  # No. of data items
   12    3   7.000  # ctl type, law (Prop numerical ctrl.), start @
      5.  # No. of data items
  0.00000 0.00073 21.00000 21.00000 0.50000
    0    0  23.000  # ctl type, law (period off), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: holiday     
    0    0   0.000  # ctl type, law (period off), start @
      0.  # No. of data items
   12    3   7.000  # ctl type, law (Prop numerical ctrl.), start @
      5.  # No. of data items
  0.00000 0.00073 21.00000 21.00000 0.50000
    0    0  23.000  # ctl type, law (period off), start @
      0.  # No. of data items
