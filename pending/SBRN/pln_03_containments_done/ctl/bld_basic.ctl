basic controls for a simple building (no control used in roof space)
* Mass Flow
no flow control description supplied
   1  # No. of controls
* Control mass
# senses ambient dry bulb temperature.
   -3    0    0    0  # sensor data
# actuates flow component:   4 Open_window
   -4    4    3  # actuator data
    1 # No. day types
    1  365  # valid Sun-01-Jan - Sun-31-Dec
     1  # No. of periods in day
    0    0   0.000  # ctl type (outside ambient > flow), law (on/off setpoint 1.00                         ON fraction 0.000.), starting @
      3.  # No. of data items
  1.000 16.000 0.000
office        west          Open_window 
reception     south         Open_window 
reception     east          Open_window 
