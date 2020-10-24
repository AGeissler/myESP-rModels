multi-sensors in the hvac mixers vs rooms below initial control logic
* Building
no zone control description supplied
   4  # No. of functions
* Control function    1
# senses dry bulb temperature in mix_op_man.
    6    0    0    0  # sensor data
# actuates the air point in mix_op_man.
    6    0    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     3  # No. of periods in day: weekday     
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0   19   7.000  # ctl type, law (senses dry bulb temperature in general.), start @
     19.  # No. of data items
  3000.000 0.000 3000.000 0.000 50.000 14.000 2.000 1.000 0.000 0.000 0.000 20.000 25.000 2.000 0.000 0.000 0.000 20.000
  25.000
    0    2  18.000  # ctl type, law (free floating), start @
      0.  # No. of data items
* Control function    2
# senses dry bulb temperature in mb_recep.
    9    0    0    0  # sensor data
# actuates the air point in mb_recep.
    9    0    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     3  # No. of periods in day: weekday     
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0   19   7.000  # ctl type, law (senses dry bulb temperature in reception.), start @
     13.  # No. of data items
  3000.000 0.000 3000.000 0.000 50.000 14.000 1.000 4.000 0.000 0.000 0.000 20.000 25.000
    0    2  18.000  # ctl type, law (free floating), start @
      0.  # No. of data items
* Control function    3
# senses dry bulb temperature in mb_conf.
   10    0    0    0  # sensor data
# actuates the air point in mb_conf.
   10    0    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     3  # No. of periods in day: weekday     
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0   19   7.000  # ctl type, law (senses dry bulb temperature in conference.), start @
     13.  # No. of data items
  3000.000 0.000 3000.000 0.000 50.000 14.000 1.000 3.000 0.000 0.000 0.000 20.000 25.000
    0    2  18.000  # ctl type, law (free floating), start @
      0.  # No. of data items
* Control function    4
# senses dry bulb temperature in ceiling_belo.
    8    0    0    0  # sensor data
# actuates the air point in ceiling_belo.
    8    0    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    0   11   0.000  # ctl type, law (senses dry bulb temperature in ceil_void.), start @
     12.  # No. of data items
  3000.000 0.000 3000.000 0.000 1.000 3.000 5.000 0.000 0.000 0.000 1.000 1.000
# Function:Zone links
 0,0,0,0,0,1,0,4,2,3
* Mass Flow
Flow controls based on multi-sensor user directives as the flow network was created.
  19  # No. of controls
* Control mass    1
# senses node (1) manager
   -4    1    0    0  # sensor data
# actuates flow connection:   2 BW-Op01:008 - manager via GrOpz01:008
   -3    2    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    1    3   0.000  # ctl type (dry bulb > flow), law (multi-sensor: normally closed with 4 sensors: For sensor 1 @ node manager setpoint 21.00 direct action AND sensor 2 @ node manager setpoint 24.00 inverse action AND sensor 3 ambient T setpoint 14.00 direct action AND), starting @
     34.  # No. of data items
  0.00000 4.00000 -4.00000 1.00000 0.00000 0.00000 21.00000 1.00000 0.00000 1.00000 -4.00000 1.00000 0.00000 0.00000 24.00000 -1.00000 0.00000
  1.00000 -3.00000 0.00000 0.00000 0.00000 14.00000 1.00000 0.00000 1.00000 -3.00000 0.00000 0.00000 0.00000 24.00000 -1.00000 0.00000 1.00000
* Control mass    2
# senses node (2) general
   -4    2    0    0  # sensor data
# actuates flow connection:   6 BW-Op02:010 - general via GrOpz02:010
   -3    6    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    1    3   0.000  # ctl type (dry bulb > flow), law (multi-sensor: normally closed with 4 sensors: For sensor 1 @ node general setpoint 21.00 direct action AND sensor 2 @ node general setpoint 24.00 inverse action AND sensor 3 ambient T setpoint 14.00 direct action AND), starting @
     34.  # No. of data items
  0.00000 4.00000 -4.00000 2.00000 0.00000 0.00000 21.00000 1.00000 0.00000 1.00000 -4.00000 2.00000 0.00000 0.00000 24.00000 -1.00000 0.00000
  1.00000 -3.00000 0.00000 0.00000 0.00000 14.00000 1.00000 0.00000 1.00000 -3.00000 0.00000 0.00000 0.00000 24.00000 -1.00000 0.00000 1.00000
* Control mass    3
# senses node (2) general
   -4    2    0    0  # sensor data
# actuates flow connection:   8 BW-Op02:016 - general via GrOpz02:016
   -3    8    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    1    3   0.000  # ctl type (dry bulb > flow), law (multi-sensor: normally closed with 4 sensors: For sensor 1 @ node general setpoint 21.00 direct action AND sensor 2 @ node general setpoint 24.00 inverse action AND sensor 3 ambient T setpoint 14.00 direct action AND), starting @
     34.  # No. of data items
  0.00000 4.00000 -4.00000 2.00000 0.00000 0.00000 21.00000 1.00000 0.00000 1.00000 -4.00000 2.00000 0.00000 0.00000 24.00000 -1.00000 0.00000
  1.00000 -3.00000 0.00000 0.00000 0.00000 14.00000 1.00000 0.00000 1.00000 -3.00000 0.00000 0.00000 0.00000 24.00000 -1.00000 0.00000 1.00000
* Control mass    4
# senses node (2) general
   -4    2    0    0  # sensor data
# actuates flow connection:  10 BW-Op02:020 - general via GrOpz02:020
   -3   10    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    1    3   0.000  # ctl type (dry bulb > flow), law (multi-sensor: normally closed with 4 sensors: For sensor 1 @ node general setpoint 21.00 direct action AND sensor 2 @ node general setpoint 24.00 inverse action AND sensor 3 ambient T setpoint 14.00 direct action AND), starting @
     34.  # No. of data items
  0.00000 4.00000 -4.00000 2.00000 0.00000 0.00000 21.00000 1.00000 0.00000 1.00000 -4.00000 2.00000 0.00000 0.00000 24.00000 -1.00000 0.00000
  1.00000 -3.00000 0.00000 0.00000 0.00000 14.00000 1.00000 0.00000 1.00000 -3.00000 0.00000 0.00000 0.00000 24.00000 -1.00000 0.00000 1.00000
* Control mass    5
# senses node (2) general
   -4    2    0    0  # sensor data
# actuates flow connection:  12 BW-Op02:024 - general via GrOpz02:024
   -3   12    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    1    3   0.000  # ctl type (dry bulb > flow), law (multi-sensor: normally closed with 4 sensors: For sensor 1 @ node general setpoint 21.00 direct action AND sensor 2 @ node general setpoint 24.00 inverse action AND sensor 3 ambient T setpoint 14.00 direct action AND), starting @
     34.  # No. of data items
  0.00000 4.00000 -4.00000 2.00000 0.00000 0.00000 21.00000 1.00000 0.00000 1.00000 -4.00000 2.00000 0.00000 0.00000 24.00000 -1.00000 0.00000
  1.00000 -3.00000 0.00000 0.00000 0.00000 14.00000 1.00000 0.00000 1.00000 -3.00000 0.00000 0.00000 0.00000 24.00000 -1.00000 0.00000 1.00000
* Control mass    6
# senses node (2) general
   -4    2    0    0  # sensor data
# actuates flow connection:  14 BW-Op02:028 - general via GrOpz02:028
   -3   14    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    1    3   0.000  # ctl type (dry bulb > flow), law (multi-sensor: normally closed with 4 sensors: For sensor 1 @ node general setpoint 21.00 direct action AND sensor 2 @ node general setpoint 24.00 inverse action AND sensor 3 ambient T setpoint 14.00 direct action AND), starting @
     34.  # No. of data items
  0.00000 4.00000 -4.00000 2.00000 0.00000 0.00000 21.00000 1.00000 0.00000 1.00000 -4.00000 2.00000 0.00000 0.00000 24.00000 -1.00000 0.00000
  1.00000 -3.00000 0.00000 0.00000 0.00000 14.00000 1.00000 0.00000 1.00000 -3.00000 0.00000 0.00000 0.00000 24.00000 -1.00000 0.00000 1.00000
* Control mass    7
# senses node (3) conference
   -4    3    0    0  # sensor data
# actuates flow connection:  21 BW-Op03:008 - conference via GrOpz03:008
   -3   21    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    1    3   0.000  # ctl type (dry bulb > flow), law (multi-sensor: normally closed with 4 sensors: For sensor 1 @ node conference setpoint 21.00 direct action AND sensor 2 @ node conference setpoint 24.00 inverse action AND sensor 3 ambient T setpoint 14.00 direct action AND), starting @
     34.  # No. of data items
  0.00000 4.00000 -4.00000 3.00000 0.00000 0.00000 21.00000 1.00000 0.00000 1.00000 -4.00000 3.00000 0.00000 0.00000 24.00000 -1.00000 0.00000
  1.00000 -3.00000 0.00000 0.00000 0.00000 14.00000 1.00000 0.00000 1.00000 -3.00000 0.00000 0.00000 0.00000 24.00000 -1.00000 0.00000 1.00000
* Control mass    8
# senses node (3) conference
   -4    3    0    0  # sensor data
# actuates flow connection:  23 BW-Op03:012 - conference via GrOpz03:012
   -3   23    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    1    3   0.000  # ctl type (dry bulb > flow), law (multi-sensor: normally closed with 4 sensors: For sensor 1 @ node conference setpoint 21.00 direct action AND sensor 2 @ node conference setpoint 24.00 inverse action AND sensor 3 ambient T setpoint 14.00 direct action AND), starting @
     34.  # No. of data items
  0.00000 4.00000 -4.00000 3.00000 0.00000 0.00000 21.00000 1.00000 0.00000 1.00000 -4.00000 3.00000 0.00000 0.00000 24.00000 -1.00000 0.00000
  1.00000 -3.00000 0.00000 0.00000 0.00000 14.00000 1.00000 0.00000 1.00000 -3.00000 0.00000 0.00000 0.00000 24.00000 -1.00000 0.00000 1.00000
* Control mass    9
# senses node (3) conference
   -4    3    0    0  # sensor data
# actuates flow connection:  25 BW-Op03:016 - conference via GrOpz03:016
   -3   25    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    1    3   0.000  # ctl type (dry bulb > flow), law (multi-sensor: normally closed with 4 sensors: For sensor 1 @ node conference setpoint 21.00 direct action AND sensor 2 @ node conference setpoint 24.00 inverse action AND sensor 3 ambient T setpoint 14.00 direct action AND), starting @
     34.  # No. of data items
  0.00000 4.00000 -4.00000 3.00000 0.00000 0.00000 21.00000 1.00000 0.00000 1.00000 -4.00000 3.00000 0.00000 0.00000 24.00000 -1.00000 0.00000
  1.00000 -3.00000 0.00000 0.00000 0.00000 14.00000 1.00000 0.00000 1.00000 -3.00000 0.00000 0.00000 0.00000 24.00000 -1.00000 0.00000 1.00000
* Control mass   10
# senses node (3) conference
   -4    3    0    0  # sensor data
# actuates flow connection:  27 BW-Op03:020 - conference via GrOpz03:020
   -3   27    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    1    3   0.000  # ctl type (dry bulb > flow), law (multi-sensor: normally closed with 4 sensors: For sensor 1 @ node conference setpoint 21.00 direct action AND sensor 2 @ node conference setpoint 24.00 inverse action AND sensor 3 ambient T setpoint 14.00 direct action AND), starting @
     34.  # No. of data items
  0.00000 4.00000 -4.00000 3.00000 0.00000 0.00000 21.00000 1.00000 0.00000 1.00000 -4.00000 3.00000 0.00000 0.00000 24.00000 -1.00000 0.00000
  1.00000 -3.00000 0.00000 0.00000 0.00000 14.00000 1.00000 0.00000 1.00000 -3.00000 0.00000 0.00000 0.00000 24.00000 -1.00000 0.00000 1.00000
* Control mass   11
# senses node (3) conference
   -4    3    0    0  # sensor data
# actuates flow connection:  29 BW-Op03:024 - conference via GrOpz03:024
   -3   29    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    1    3   0.000  # ctl type (dry bulb > flow), law (multi-sensor: normally closed with 4 sensors: For sensor 1 @ node conference setpoint 21.00 direct action AND sensor 2 @ node conference setpoint 24.00 inverse action AND sensor 3 ambient T setpoint 14.00 direct action AND), starting @
     34.  # No. of data items
  0.00000 4.00000 -4.00000 3.00000 0.00000 0.00000 21.00000 1.00000 0.00000 1.00000 -4.00000 3.00000 0.00000 0.00000 24.00000 -1.00000 0.00000
  1.00000 -3.00000 0.00000 0.00000 0.00000 14.00000 1.00000 0.00000 1.00000 -3.00000 0.00000 0.00000 0.00000 24.00000 -1.00000 0.00000 1.00000
* Control mass   12
# senses node (4) reception
   -4    4    0    0  # sensor data
# actuates flow connection:  33 BW-Op04:008 - reception via GrOpz04:008
   -3   33    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    1    3   0.000  # ctl type (dry bulb > flow), law (multi-sensor: normally closed with 4 sensors: For sensor 1 @ node reception setpoint 21.00 direct action AND sensor 2 @ node reception setpoint 24.00 inverse action AND sensor 3 ambient T setpoint 14.00 direct action AND), starting @
     34.  # No. of data items
  0.00000 4.00000 -4.00000 4.00000 0.00000 0.00000 21.00000 1.00000 0.00000 1.00000 -4.00000 4.00000 0.00000 0.00000 24.00000 -1.00000 0.00000
  1.00000 -3.00000 0.00000 0.00000 0.00000 14.00000 1.00000 0.00000 1.00000 -3.00000 0.00000 0.00000 0.00000 24.00000 -1.00000 0.00000 1.00000
* Control mass   13
# senses node (4) reception
   -4    4    0    0  # sensor data
# actuates flow connection:  35 BW-Op04:012 - reception via GrOpz04:012
   -3   35    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    1    3   0.000  # ctl type (dry bulb > flow), law (multi-sensor: normally closed with 4 sensors: For sensor 1 @ node reception setpoint 21.00 direct action AND sensor 2 @ node reception setpoint 24.00 inverse action AND sensor 3 ambient T setpoint 14.00 direct action AND), starting @
     34.  # No. of data items
  0.00000 4.00000 -4.00000 4.00000 0.00000 0.00000 21.00000 1.00000 0.00000 1.00000 -4.00000 4.00000 0.00000 0.00000 24.00000 -1.00000 0.00000
  1.00000 -3.00000 0.00000 0.00000 0.00000 14.00000 1.00000 0.00000 1.00000 -3.00000 0.00000 0.00000 0.00000 24.00000 -1.00000 0.00000 1.00000
* Control mass   14
# senses node (1) manager
   -4    1    0    0  # sensor data
# actuates flow connection:   3 mix_op_man - manager via GrMEI01:044
   -3    3    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    1    3   0.000  # ctl type (dry bulb > flow), law (multi-sensor: normally closed with 2 sensors: For sensor 1 @ node manager setpoint 20.00 inverse action OR sensor 2 @ node manager setpoint 25.00 direct action.), starting @
     18.  # No. of data items
  0.00000 2.00000 -4.00000 1.00000 0.00000 0.00000 20.00000 -1.00000 0.00000 2.00000 -4.00000 1.00000 0.00000 0.00000 25.00000 1.00000 0.00000
  2.00000
* Control mass   15
# senses node (2) general
   -4    2    0    0  # sensor data
# actuates flow connection:  18 general - ceil_void via GrOpz02:093
   -3   18    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    1    3   0.000  # ctl type (dry bulb > flow), law (multi-sensor: normally closed with 2 sensors: For sensor 1 @ node general setpoint 20.00 inverse action OR sensor 2 @ node general setpoint 25.00 direct action.), starting @
     18.  # No. of data items
  0.00000 2.00000 -4.00000 2.00000 0.00000 0.00000 20.00000 -1.00000 0.00000 2.00000 -4.00000 2.00000 0.00000 0.00000 25.00000 1.00000 0.00000
  2.00000
* Control mass   16
# senses node (2) general
   -4    2    0    0  # sensor data
# actuates flow connection:  17 mix_op_man - general via GrMEI02:092
   -3   17    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    1    3   0.000  # ctl type (dry bulb > flow), law (multi-sensor: normally closed with 2 sensors: For sensor 1 @ node general setpoint 20.00 inverse action OR sensor 2 @ node general setpoint 25.00 direct action.), starting @
     18.  # No. of data items
  0.00000 2.00000 -4.00000 2.00000 0.00000 0.00000 20.00000 -1.00000 0.00000 2.00000 -4.00000 2.00000 0.00000 0.00000 25.00000 1.00000 0.00000
  2.00000
* Control mass   17
# senses node (3) conference
   -4    3    0    0  # sensor data
# actuates flow connection:  32 mb_conf - conference via GrMEI03:070
   -3   32    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    1    3   0.000  # ctl type (dry bulb > flow), law (multi-sensor: normally closed with 2 sensors: For sensor 1 @ node conference setpoint 20.00 inverse action OR sensor 2 @ node conference setpoint 25.00 direct action.), starting @
     18.  # No. of data items
  0.00000 2.00000 -4.00000 3.00000 0.00000 0.00000 20.00000 -1.00000 0.00000 2.00000 -4.00000 3.00000 0.00000 0.00000 25.00000 1.00000 0.00000
  2.00000
* Control mass   18
# senses node (4) reception
   -4    4    0    0  # sensor data
# actuates flow connection:  39 mb_recep - reception via GrMEI04:077
   -3   39    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    1    3   0.000  # ctl type (dry bulb > flow), law (multi-sensor: normally closed with 2 sensors: For sensor 1 @ node reception setpoint 20.00 inverse action OR sensor 2 @ node reception setpoint 25.00 direct action.), starting @
     18.  # No. of data items
  0.00000 2.00000 -4.00000 4.00000 0.00000 0.00000 20.00000 -1.00000 0.00000 2.00000 -4.00000 4.00000 0.00000 0.00000 25.00000 1.00000 0.00000
  2.00000
* Control mass   19
# senses node (4) reception
   -4    4    0    0  # sensor data
# actuates flow connection:  40 mb_recep - reception via GrMEI04:078
   -3   40    0  # actuator data
    1  # all daytypes
    1  365  # valid Wed-01-Jan - Wed-31-Dec
     1  # No. of periods in day: weekday     
    1    3   0.000  # ctl type (dry bulb > flow), law (multi-sensor: normally closed with 2 sensors: For sensor 1 @ node reception setpoint 20.00 inverse action OR sensor 2 @ node reception setpoint 25.00 direct action.), starting @
     18.  # No. of data items
  0.00000 2.00000 -4.00000 4.00000 0.00000 0.00000 20.00000 -1.00000 0.00000 2.00000 -4.00000 4.00000 0.00000 0.00000 25.00000 1.00000 0.00000
  2.00000
