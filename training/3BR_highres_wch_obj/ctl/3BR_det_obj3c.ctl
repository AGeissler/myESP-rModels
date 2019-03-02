pumped wch rad in occupied rooms (timed weekdays) if under 18C or 21C loung dining withn night and unoccupied times free float trv mixed rc and P+H
* Building
loop 3 inj heat (18kW) into gas zone (95C) to keep water_jacket at 80C (timed enable pump) in mass flow if rad rooms needs heat.
   3  # No. of functions
* Control function    1
# senses the temperature of the current zone.
    0    0    0    0  # sensor data
# actuates air point of the current zone
    0    0    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     5  # No. of periods in day: weekdays    
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0    1   7.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  2000.000 0.000 1000.000 0.000 18.000 30.000 0.000
    0    2   9.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0    1  16.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  2000.000 0.000 1000.000 0.000 18.000 30.000 0.000
    0    2  23.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0    1   7.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  2000.000 0.000 1000.000 0.000 18.000 30.000 0.000
    0    2  23.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0    1   7.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  2000.000 0.000 1000.000 0.000 18.000 30.000 0.000
    0    2  23.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: holiday     
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0    1   7.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  1000.000 0.000 1000.000 0.000 10.000 30.000 0.000
    0    2  23.000  # ctl type, law (free floating), start @
      0.  # No. of data items
* Control function    2
# senses the temperature of the current zone.
    0    0    0    0  # sensor data
# actuates air point of the current zone
    0    0    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     5  # No. of periods in day: weekdays    
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0    1   6.500  # ctl type, law (basic control), start @
      7.  # No. of data items
  2000.000 0.000 1000.000 0.000 21.000 30.000 0.000
    0    2   9.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0    1  16.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  2000.000 0.000 1000.000 0.000 21.000 30.000 0.000
    0    2  23.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0    1   6.500  # ctl type, law (basic control), start @
      7.  # No. of data items
  2000.000 0.000 1000.000 0.000 21.000 30.000 0.000
    0    2  23.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0    1   6.500  # ctl type, law (basic control), start @
      7.  # No. of data items
  2000.000 0.000 1000.000 0.000 21.000 30.000 0.000
    0    2  23.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: holiday     
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0    1   7.000  # ctl type, law (basic control), start @
      7.  # No. of data items
  1000.000 0.000 1000.000 0.000 10.000 30.000 0.000
    0    2  23.000  # ctl type, law (free floating), start @
      0.  # No. of data items
* Control function    3
# senses dry bulb temperature in gas.
   32    0    0    0  # sensor data
# actuates the air point in gas.
   32    0    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     5  # No. of periods in day: weekdays    
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0   19   6.200  # ctl type, law (senses dry bulb temperature in water_jacket.), start @
     13.  # No. of data items
  18000.000 0.000 100.000 0.000 95.000 100.000 1.000 31.000 0.000 0.000 0.000 80.000 100.000
    0    2   9.500  # ctl type, law (free floating), start @
      0.  # No. of data items
    0   19  16.000  # ctl type, law (senses dry bulb temperature in water_jacket.), start @
     13.  # No. of data items
  18000.000 0.000 100.000 0.000 95.000 100.000 1.000 31.000 0.000 0.000 0.000 80.000 100.000
    0    2  23.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0   19   6.500  # ctl type, law (senses dry bulb temperature in water_jacket.), start @
     13.  # No. of data items
  18000.000 0.000 100.000 0.000 95.000 100.000 1.000 31.000 0.000 0.000 0.000 80.000 100.000
    0    2  23.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0   19   6.700  # ctl type, law (senses dry bulb temperature in water_jacket.), start @
     13.  # No. of data items
  18000.000 0.000 100.000 0.000 95.000 100.000 1.000 31.000 0.000 0.000 0.000 80.000 100.000
    0    2  23.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: holiday     
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0   19   6.700  # ctl type, law (senses dry bulb temperature in water_jacket.), start @
     13.  # No. of data items
  16000.000 0.000 100.000 0.000 95.000 100.000 1.000 31.000 0.000 0.000 0.000 80.000 100.000
    0    2  23.000  # ctl type, law (free floating), start @
      0.  # No. of data items
# Function:Zone links
 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0
* Mass Flow
no flow control description supplied
   9  # No. of controls
* Control mass    1
# sensors are nodes collec_hi ( 27) & tnk_hi_160 ( 15)
   -4   27   15    0  # sensor data
# actuates flow connection:  54 collec_hi - tnk_hi_160 via col_pump
   -3   54   15  # actuator data
    1  # all daytypes
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: weekdays    
   24    0   0.000  # ctl type (delt T > flow), law (on/off setpoint 3.00 direct action ON fraction 1.000.), starting @
      3.  # No. of data items
  3.00000 1.00000 1.00000
* Control mass    2
# senses a mix of db T and MRT in bath
   -2    9   50    0  # sensor data
# actuates flow connection:  21 water_jacket - rad_bath via bath_p
   -3   21    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     5  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   6.200  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0   9.500  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0  16.000  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   6.500  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   7.000  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: holiday     
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
* Control mass    3
# senses a mix of db T and MRT in kitchen
   -2    4   50    0  # sensor data
# actuates flow connection:  31 water_jacket - rad_kit via kitchen_p
   -3   31    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     5  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   6.200  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0   9.500  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0  16.000  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   7.000  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   7.000  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: holiday     
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
* Control mass    4
# senses a mix of db T and MRT in bedroom2
   -2    8   50    0  # sensor data
# actuates flow connection:  27 water_jacket - rad_br2_h via br2_p
   -3   27    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     5  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   6.200  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0   9.500  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0  16.000  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   7.000  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   7.000  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: holiday     
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
* Control mass    5
# senses a mix of db T and MRT in dining
   -2    3   50    0  # sensor data
# actuates flow connection:  45 water_jacket - rad_dining_h via dining_p
   -3   45    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     5  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   6.200  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0   9.500  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0  16.000  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   7.000  # ctl type (dry bulb > flow), law (on/off setpoint 19.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   7.000  # ctl type (dry bulb > flow), law (on/off setpoint 19.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: holiday     
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
* Control mass    6
# senses a mix of db T and MRT in bedroom3
   -2    7   50    0  # sensor data
# actuates flow connection:  23 water_jacket - rad_br3_h via br3_p
   -3   23    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     5  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   6.200  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0   9.500  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0  16.000  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   7.000  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  22.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   7.000  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  22.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: holiday     
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
* Control mass    7
# senses a mix of db T and MRT in master_br
   -2    6   50    0  # sensor data
# actuates flow connection:  33 water_jacket - rad-mbr_h via mbr_p
   -3   33    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     5  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   6.200  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0   9.500  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0  16.000  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   7.000  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   7.000  # ctl type (dry bulb > flow), law (on/off setpoint 18.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: holiday     
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
* Control mass    8
# senses a mix of db T and MRT in living
   -2    2   50    0  # sensor data
# actuates flow connection:  37 water_jacket - rad_lounge_h via living_p
   -3   37    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     5  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   6.200  # ctl type (dry bulb > flow), law (on/off setpoint 19.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  19.50000 -1.00000 1.00000
    1    0   9.500  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0  16.000  # ctl type (dry bulb > flow), law (on/off setpoint 19.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  19.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   8.000  # ctl type (dry bulb > flow), law (on/off setpoint 19.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   8.000  # ctl type (dry bulb > flow), law (on/off setpoint 19.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  18.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: holiday     
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
* Control mass    9
# senses a mix of db T and MRT in hall
   -2    1   50    0  # sensor data
# actuates flow connection:  41 water_jacket - rad-hall_h via hall_p
   -3   41    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     5  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   6.200  # ctl type (dry bulb > flow), law (on/off setpoint 17.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  17.50000 -1.00000 1.00000
    1    0   9.500  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0  16.000  # ctl type (dry bulb > flow), law (on/off setpoint 17.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  17.50000 -1.00000 1.00000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   7.000  # ctl type (dry bulb > flow), law (on/off setpoint 17.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  17.50000 -1.00000 1.00000
    1    0  21.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1    0   7.000  # ctl type (dry bulb > flow), law (on/off setpoint 17.50 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  17.50000 -1.00000 1.00000
    1    0  21.000  # ctl type (dry bulb > flow), law (on/off setpoint 15.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: holiday     
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 12.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  12.00000 -1.00000 1.00000
