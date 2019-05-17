District Heating: Dual boiler system with no thermal storage
* Plant
plt ctrl reg
  10  # No. of loops
* Control loops    1
# senses var in compt.  2:boiler1 @ node no.  2
   -1    2    2    0    0  # sensor 
# plant component   2:boiler1 @ node no.  1
   -1    2    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Sat-01-Jan - Sun-31-Dec
     1  # No. of periods in day: weekday     
    0    1   0.000  # ctl type, law (PID flux control.), start @
      8.  # No. of data items
  1.00000 1.00000 0.00000 85.00000 5.00000 0.00000 0.00000 0.00000
* Control loops    2
# senses var in compt.  5:boiler2 @ node no.  2
   -1    5    2    0    0  # sensor 
# plant component   5:boiler2 @ node no.  1
   -1    5    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Sat-01-Jan - Sun-31-Dec
     1  # No. of periods in day: weekday     
    0    1   0.000  # ctl type, law (PID flux control.), start @
      8.  # No. of data items
  1.00000 1.00000 0.00000 85.00000 5.00000 0.00000 0.00000 0.00000
* Control loops    3
# senses var in compt.  9:pipeS1 @ node no.  3
   -1    9    3    0    0  # sensor 
# plant component   8:DivB1 @ node no.  1
   -1    8    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Sat-01-Jan - Sun-31-Dec
     1  # No. of periods in day: weekday     
   18    5   0.000  # ctl type, law (Prop`l damper ctl.), start @
      6.  # No. of data items
  0.00000 0.50000 83.00000 80.00000 0.00000 0.00000
* Control loops    4
# senses var in compt. 11:pipeR1 @ node no.  4
   -1   11    4    0    0  # sensor 
# plant component  29:pumpG @ node no.  1
   -1   29    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Sat-01-Jan - Sun-31-Dec
     1  # No. of periods in day: weekday     
   12    3   0.000  # ctl type, law (Prop numerical ctrl.), start @
      5.  # No. of data items
  0.00000 0.00500 75.00000 60.00000 0.00000
* Control loops    5
# senses var in compt. 18:pipeL12 @ node no.  3
   -1   18    3    0    0  # sensor 
# plant component  15:DivV1 @ node no.  1
   -1   15    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Sat-01-Jan - Sun-31-Dec
     1  # No. of periods in day: weekday     
   18    5   0.000  # ctl type, law (Prop`l damper ctl.), start @
      6.  # No. of data items
  0.00000 2.00000 77.50000 62.00000 0.00000 0.00000
* Control loops    6
# senses var in compt. 24:pipeL22 @ node no.  3
   -1   24    3    0    0  # sensor 
# plant component  21:DivV2 @ node no.  1
   -1   21    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Sat-01-Jan - Sun-31-Dec
     1  # No. of periods in day: weekday     
   18    5   0.000  # ctl type, law (Prop`l damper ctl.), start @
      6.  # No. of data items
  0.00000 3.00000 77.50000 62.00000 0.00000 0.00000
* Control loops    7
# senses var in compt. 36:pipeLx12 @ node no.  3
   -1   36    3    0    0  # sensor 
# plant component  33:DivVx1 @ node no.  1
   -1   33    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Sat-01-Jan - Sun-31-Dec
     1  # No. of periods in day: weekday     
   18    5   0.000  # ctl type, law (Prop`l damper ctl.), start @
      6.  # No. of data items
  0.00000 1.00000 77.50000 62.00000 0.00000 0.00000
* Control loops    8
# reads measurements from a boundry data file.
   -5    1    0    0    0  # sensor 
# plant component  17:Load1 @ node no.  1
   -1   17    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Sat-01-Jan - Sun-31-Dec
     1  # No. of periods in day: weekday     
   16    3   0.000  # ctl type, law (Prop numerical ctrl.), start @
      5.  # No. of data items
  -200000.00000 0.00000 1.00000 0.00000 0.00000
* Control loops    9
# reads measurements from a boundry data file.
   -5    2    0    0    0  # sensor 
# plant component  23:Load2 @ node no.  1
   -1   23    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Sat-01-Jan - Sun-31-Dec
     1  # No. of periods in day: weekday     
   16    3   0.000  # ctl type, law (Prop numerical ctrl.), start @
      5.  # No. of data items
  -300000.00000 0.00000 1.00000 0.00000 0.00000
* Control loops   10
# reads measurements from a boundry data file.
   -5    3    0    0    0  # sensor 
# plant component  35:Loadx1 @ node no.  1
   -1   35    1    0  # actuator 
    1  # all daytypes
    1  365  # valid Sat-01-Jan - Sun-31-Dec
     1  # No. of periods in day: weekday     
   16    3   0.000  # ctl type, law (Prop numerical ctrl.), start @
      5.  # No. of data items
  -100000.00000 0.00000 1.00000 0.00000 0.00000
