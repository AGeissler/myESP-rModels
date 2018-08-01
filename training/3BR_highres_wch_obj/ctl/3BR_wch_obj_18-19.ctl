pumped wch rad in occupied rooms if under 19C or 21C loung dining withn night and unoccupied times free float trv mixed rc and P+H
* Building
loop 3 inj heat into gas zone (90C) to keep water_jacket at 80C enable pump in mass flow if rad rooms needs heat.
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
   23    0    0    0  # sensor data
# actuates the air point in gas.
   23    0    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     5  # No. of periods in day: weekdays    
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0   19   6.700  # ctl type, law (senses dry bulb temperature in water_jacket.), start @
     13.  # No. of data items
  7700.000 0.000 100.000 0.000 95.000 100.000 1.000 22.000 0.000 0.000 0.000 80.000 100.000
    0    2   9.500  # ctl type, law (free floating), start @
      0.  # No. of data items
    0   19  16.000  # ctl type, law (senses dry bulb temperature in water_jacket.), start @
     13.  # No. of data items
  7700.000 0.000 100.000 0.000 95.000 100.000 1.000 22.000 0.000 0.000 0.000 80.000 100.000
    0    2  23.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0   19   6.700  # ctl type, law (senses dry bulb temperature in water_jacket.), start @
     13.  # No. of data items
  7700.000 0.000 100.000 0.000 95.000 100.000 1.000 22.000 0.000 0.000 0.000 80.000 100.000
    0    2  23.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0   19   6.700  # ctl type, law (senses dry bulb temperature in water_jacket.), start @
     13.  # No. of data items
  7700.000 0.000 100.000 0.000 95.000 100.000 1.000 22.000 0.000 0.000 0.000 80.000 100.000
    0    2  23.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: holiday     
    0    2   0.000  # ctl type, law (free floating), start @
      0.  # No. of data items
    0   19   6.700  # ctl type, law (senses dry bulb temperature in water_jacket.), start @
     13.  # No. of data items
  7700.000 0.000 100.000 0.000 95.000 100.000 1.000 22.000 0.000 0.000 0.000 80.000 100.000
    0    2  23.000  # ctl type, law (free floating), start @
      0.  # No. of data items
# Function:Zone links
 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0
* Mass Flow
WCH only with controls based on room conditions adjusted to 19.5C
   8  # No. of controls
* Control mass    1
# sensors are nodes bath (  9) & mix_fresh ( 35)
   -4    9   35    0  # sensor data
# actuates flow connection:  22 water_jacket - rad_bath via rad_p_bath
   -3   22    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   7.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 18.50 valve lower limit (%)100.0 signal upper limit 19.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  18.50000 100.00000 19.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   7.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 18.50 valve lower limit (%)100.0 signal upper limit 19.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  18.50000 100.00000 19.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   8.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 18.50 valve lower limit (%)100.0 signal upper limit 19.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  18.50000 100.00000 19.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: holiday     
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
* Control mass    2
# sensors are nodes bedroom3 (  7) & mix_fresh ( 35)
   -4    7   35    0  # sensor data
# actuates flow connection:  24 water_jacket - rad_br3 via rad_p_br3
   -3   24    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   7.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 18.50 valve lower limit (%)100.0 signal upper limit 19.00 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  18.50000 100.00000 19.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   7.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 18.50 valve lower limit (%)100.0 signal upper limit 19.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  18.50000 100.00000 19.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   8.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 18.50 valve lower limit (%)100.0 signal upper limit 19.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  18.50000 100.00000 19.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: holiday     
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
* Control mass    3
# sensors are nodes hall (  1) & mix_fresh ( 35)
   -4    1   35    0  # sensor data
# actuates flow connection:  37 water_jacket - rad-hall via rad_p_hall
   -3   37    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   7.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 19.50 valve lower limit (%)100.0 signal upper limit 20.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  19.50000 100.00000 20.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   7.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 19.50 valve lower limit (%)100.0 signal upper limit 20.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  19.50000 100.00000 20.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   8.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 19.50 valve lower limit (%)100.0 signal upper limit 20.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  19.50000 100.00000 20.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: holiday     
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
* Control mass    4
# sensors are nodes kitchen (  4) & mix_fresh ( 35)
   -4    4   35    0  # sensor data
# actuates flow connection:  35 water_jacket - rad_kit via rad_p_kit
   -3   35    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   7.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 18.50 valve lower limit (%)100.0 signal upper limit 19.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  18.50000 100.00000 19.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   7.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 18.50 valve lower limit (%)100.0 signal upper limit 19.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  18.50000 100.00000 19.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   8.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 18.50 valve lower limit (%)100.0 signal upper limit 19.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  18.50000 100.00000 19.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: holiday     
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
* Control mass    5
# sensors are nodes bedroom2 (  8) & mix_fresh ( 35)
   -4    8   35    0  # sensor data
# actuates flow connection:  27 water_jacket - rad_br2 via rad_p_br2
   -3   27    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   7.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 18.50 valve lower limit (%)100.0 signal upper limit 19.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  18.50000 100.00000 19.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   7.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 18.50 valve lower limit (%)100.0 signal upper limit 19.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  18.50000 100.00000 19.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   8.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 18.50 valve lower limit (%)100.0 signal upper limit 19.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  18.50000 100.00000 19.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: holiday     
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
* Control mass    6
# sensors are nodes bedroom1 (  6) & mix_fresh ( 35)
   -4    6   35    0  # sensor data
# actuates flow connection:  31 water_jacket - rad-mbr via rad_p_mbr
   -3   31    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   7.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 18.50 valve lower limit (%)100.0 signal upper limit 19.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  18.50000 100.00000 19.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   7.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 18.50 valve lower limit (%)100.0 signal upper limit 19.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  18.50000 100.00000 19.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   8.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 18.50 valve lower limit (%)100.0 signal upper limit 19.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  18.50000 100.00000 19.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: holiday     
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
* Control mass    7
# sensors are nodes living (  2) & mix_fresh ( 35)
   -4    2   35    0  # sensor data
# actuates flow connection:  33 water_jacket - rad_lounge via rad_p_liv
   -3   33    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   7.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 20.50 valve lower limit (%)100.0 signal upper limit 21.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  20.50000 100.00000 21.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   7.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 20.50 valve lower limit (%)100.0 signal upper limit 21.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  20.50000 100.00000 21.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   8.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 20.50 valve lower limit (%)100.0 signal upper limit 21.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  20.50000 100.00000 21.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: holiday     
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
* Control mass    8
# sensors are nodes dining (  3) & mix_fresh ( 35)
   -4    3   35    0  # sensor data
# actuates flow connection:  29 water_jacket - rad_dining via rad_p_din
   -3   29    0  # actuator data
    0 # day types follow calendar  4
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: weekdays    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   7.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 20.50 valve lower limit (%)100.0 signal upper limit 21.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  20.50000 100.00000 21.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: saturday    
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   7.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 20.50 valve lower limit (%)100.0 signal upper limit 21.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  20.50000 100.00000 21.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     3  # No. of periods in day: sunday      
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1    1   8.000  # ctl type (dry bulb > flow), law (proportional + hysteresis: signal lower limit 20.50 valve lower limit (%)100.0 signal upper limit 21.50 valve upper limit (%) 0.0 dS 0.10.), starting @
      5.  # No. of data items
  20.50000 100.00000 21.50000 0.00000 0.10000
    1    0  23.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
    1  365  # valid Mon-01-Jan - Mon-31-Dec
     1  # No. of periods in day: holiday     
    1    0   0.000  # ctl type (dry bulb > flow), law (on/off setpoint 10.00 inverse action ON fraction 1.000.), starting @
      3.  # No. of data items
  10.00000 -1.00000 1.00000
