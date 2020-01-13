window in kitliv and the buf_roof open if warm
* Mass Flow
open window in kitliv and buf1 and bufroof if warm.
   2  # No. of controls
* Control mass    1
# senses node (1) kitliv
   -4    1    0    0  # sensor data
# actuates flow connection:   1 BW-Cr01:007 - kitliv via Winz01:007
   -3    1    0  # actuator data
    1  # all daytypes
    1  365  # valid Sun-01-Jan - Sun-31-Dec
     3  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 21.00 direct action ON fraction 0.000.), starting @
      3.  # No. of data items
  21.00000 1.00000 0.00000
    1    0   7.000  # ctl type (dry bulb > flow), law (on/off setpoint 21.00 direct action ON fraction 1.000.), starting @
      3.  # No. of data items
  21.00000 1.00000 1.00000
    1    0  18.000  # ctl type (dry bulb > flow), law (on/off setpoint 21.00 direct action ON fraction 0.500.), starting @
      3.  # No. of data items
  21.00000 1.00000 0.50000
* Control mass    2
# senses node (9) buf_roof
   -4    9    0    0  # sensor data
# actuates flow connection:  20 BW-Cr09:006 - buf_roof via WiOPz09:006
   -3   20    0  # actuator data
    1  # all daytypes
    1  365  # valid Sun-01-Jan - Sun-31-Dec
     3  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 21.00 direct action ON fraction 0.000.), starting @
      3.  # No. of data items
  21.00000 1.00000 0.00000
    1    0   7.000  # ctl type (dry bulb > flow), law (on/off setpoint 21.00 direct action ON fraction 1.000.), starting @
      3.  # No. of data items
  21.00000 1.00000 1.00000
    1    0  18.000  # ctl type (dry bulb > flow), law (on/off setpoint 21.00 direct action ON fraction 0.500.), starting @
      3.  # No. of data items
  21.00000 1.00000 0.50000
