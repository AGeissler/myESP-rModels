
The model file 3BR_det_obj3.cfg is the active cfg file.
The model file default.cfg is used for Reality Emulation mode.

Most rooms have additional mass in the form of furniture,
countertops, doors to cabinets, beds. Rooms have radiation
view factors calculated as well as insolation.

The heating system is via radiators (water filled thermal zones)
with a water-filled zone representing the water jacket of a 
combi gas boiler. A flow network and flow control are used to
implement WCH flow-in-pipes and pumping.  

Approach taken:
a) Combi unit is embedded in equipment zone, boiler_case is an air
space around the water_jacket which surrounds the gas chamber. High
hc set between gas and water_jacket. Multi-sensor controller used
to maintain ~80C in water_jacket via heat input in gas.  
ID Zone         Volume|          Surface
   Name         m^3   | No. Opaque  Transp  ~Floor
11 equipment       7.2  47    40.8     0.0    10.0  equipment describes space under stair and the plenum
18 boiler_case     0.0  12     2.9     0.0     0.3  boiler_case describes the outer case of gas combi boiler
31 water_jacket    0.1  12     2.0     0.0     0.2  water_jacket describes water side of boiler
32 gas             0.0   6     0.6     0.0     0.1  gas describes chamber for gas flame

The following zones are water filled:
ID Zone         Volume|          Surface
   Name         m^3   | No. Opaque  Transp  ~Floor
13 tnk_lo_160      0.2  14     1.7     0.0     0.4  tnk_lo_160 describes 160 litre accummulator tank 700mm diam
14 tnk_md_160      0.2  14     1.7     0.0     0.4  tnk_md_160 describes centre portion of accummulator tank
15 tnk_hi_160      0.2  14     1.7     0.0     0.4  tnk_hi_160 describes top portion of 500 litre accumulator
16 rad_bath        0.0  24     1.1     0.0     0.0  radiator describes 700mm x 600mm x 15mm with fins zone
17 rad_br3_h       0.0  24     0.4     0.0     0.0  rad_br3_h describes upper portion of 700mm x 600mm x 15mm with f
19 rad_br2_h       0.0  12     0.7     0.0     0.0  rad_br2_h describes upper portion of water filled radiator in be
20 rad_dining_h    0.0  12     0.7     0.0     0.0  rad_dining_h describes upper part of radiator in dining room
21 rad-mbr_h       0.0  12     0.7     0.0     0.0  rad-mbr_h describes upper portion of a radiator in MBR
22 rad_lounge_h    0.0  12     0.7     0.0     0.0  rad_lounge describes upper section of a 1.2m x 0.5m radiator
23 rad_kit         0.0  24     1.1     0.0     0.0  rad_kit describes a radiator in kitchen
24 rad-hall_h      0.0  12     0.6     0.0     0.0  rad-hall_h describes upper portion of radiator in hall
25 collec_low      0.0   6     2.1     0.0     0.0  collec_low describes lower portion of collector
26 collec_mid      0.0   6     2.1     0.0     0.0  collec_mid describes middle section of collector
27 collec_hi       0.0   6     2.1     0.0     0.0  collec_hi describes upper cection of collector
31 water_jacket    0.0  12     1.3     0.0     0.1  water_jacket describes water side of boiler
34 rad_lounge_m    0.0  12     0.7     0.0     0.0  rad_lounge describes mid portion of a 1.2m x 0.5m radiator
35 rad_lounge_l    0.0  12     0.9     0.0     0.0  rad_lounge describes low portion of a 1.2m x 0.5m radiator
36 rad_dining_m    0.0  12     0.7     0.0     0.0  rad_dining describes mid section of radiator in dining room
37 rad_dining_l    0.0  12     0.9     0.0     0.0  rad_dining describes low portion of radiator in dining room
38 rad-hall_m      0.0  12     0.6     0.0     0.0  rad-hall_m describes centre section of radiator in hall
39 rad-hall_l      0.0  12     0.8     0.0     0.0  rad-hall_l describes low section of radiator in hall
40 rad-mbr_m       0.0  12     0.7     0.0     0.0  rad-mbr_m describes centre part of a radiator in MBR
41 rad-mbr_l       0.0  12     0.9     0.0     0.0  rad-mbr_l describes lower portion of a radiator in MBR
42 rad_br2_m       0.0  12     0.7     0.0     0.0  rad_br2_m describes centre section of water filled radiator in b
43 rad_br2_l       0.0  12     0.9     0.0     0.0  rad_br2_l describes lower portion of water filled radiator in be
44 rad_br3_m       0.0  24     0.4     0.0     0.0  rad_br3_m describes centre portion of 700mm x 600mm x 15mm with
45 rad_br3_l       0.0  24     0.4     0.0     0.0  rad_br3_l describes lower portion of 700mm x 600mm x 15mm with f

Initial ideal control runs in January to establish heating requirements in each
room (somewhat less than the peak startup for each room) gives ~500W
for bedroom3 bath kitchen and ~800W for other rooms.

The radiators are embedded in zones:and are connected via pumps
to the water_jacket. Flow rates set based on a typical Delta T
of 20C and system capacity of 16kW. This suggested ~0.685 m^3/hr 
which was divided amongst the radiators.

Air-side of flow network was initially derived from surface attributes
and then the water side nodes and components added.
Currently the performance is shown by the attached images.
Note -  adjust the flow to 200 interations and 100 Pa rather 
than 50 Pa. 

Someone might like to create a model variant which uses a plant
component for the accumulator tank and/or boiler?
