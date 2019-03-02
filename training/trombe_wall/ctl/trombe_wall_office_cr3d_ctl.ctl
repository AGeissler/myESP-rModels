vents closed unless trombe  upper is warmer than office
* Mass Flow
uses delta T between trombe_up and office
   4  # No. of controls
* Control mass    1
# sensors are nodes trombe_up (  4) & office (  6)
   -4    4    6    0  # sensor data
# actuates flow connection:   9 trombe_up - office via GrOPz04:007
   -3    9    6  # actuator data
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: weekdays    
   24    0   0.000  # ctl type (delt T > flow), law (on/off setpoint 4.00 direct action ON fraction 0.000.), starting @
      3.  # No. of data items
  4.00000 1.00000 0.00000
   24    0   7.000  # ctl type (delt T > flow), law (on/off setpoint 3.00 direct action ON fraction 1.000.), starting @
      3.  # No. of data items
  3.00000 1.00000 1.00000
   24    0  18.000  # ctl type (delt T > flow), law (on/off setpoint 4.00 direct action ON fraction 0.000.), starting @
      3.  # No. of data items
  4.00000 1.00000 0.00000
* Control mass    2
# sensors are nodes trombe_up (  4) & office (  6)
   -4    4    6    0  # sensor data
# actuates flow connection:   5 trombe_low - office via GrOPz01:008
   -3    5    6  # actuator data
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: weekdays    
   24    0   0.000  # ctl type (delt T > flow), law (on/off setpoint 4.00 direct action ON fraction 0.000.), starting @
      3.  # No. of data items
  4.00000 1.00000 0.00000
   24    0   7.000  # ctl type (delt T > flow), law (on/off setpoint 3.00 direct action ON fraction 1.000.), starting @
      3.  # No. of data items
  3.00000 1.00000 1.00000
   24    0  18.000  # ctl type (delt T > flow), law (on/off setpoint 4.00 direct action ON fraction 0.000.), starting @
      3.  # No. of data items
  4.00000 1.00000 0.00000
* Control mass    3
# senses node (4) trombe_up
   -4    4    0    0  # sensor data
# actuates flow connection:   4 BW-Op01:007 - trombe_low via GrOPz01:007
   -3    4    0  # actuator data
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 27.00 direct action ON fraction 1.000.), starting @
      3.  # No. of data items
  27.00000 1.00000 1.00000
* Control mass    4
# senses node (4) trombe_up
   -4    4    0    0  # sensor data
# actuates flow connection:  10 BW-Op04:009 - trombe_up via GrOPz04:009
   -3   10    0  # actuator data
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 27.00 direct action ON fraction 1.000.), starting @
      3.  # No. of data items
  27.00000 1.00000 1.00000
