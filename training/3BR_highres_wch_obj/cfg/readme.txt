
The model file 3BR_wch_obj1819.cfg is the active cfg file.
The model file default.cfg is used for Reality Emulation mode.

Most rooms have additional mass in the form of furniture,
countertops, doors to cabinets, beds. 

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
16 rad_bath        0.0  24     1.1     0.0     0.0  radiator describes 700mm x 600mm x 15mm with fins zone
17 rad_br3         0.0  24     1.1     0.0     0.0  radiator describes 700mm x 600mm x 15mm with fins zone
19 rad_br2         0.0  12     2.0     0.0     0.0  rad_br2 describes water filled radiator in bedroom 2
20 rad_dining      0.0  12     2.0     0.0     0.0  rad_dining describes radiator in dining room
21 rad-mbr         0.0  12     2.1     0.0     0.0  rad-mbr describes a radiator in MBR
22 rad_lounge      0.0  12     2.1     0.0     0.0  rad_lounge describes a 1.2m x 0.5m radiator
23 rad_kit         0.0  24     1.1     0.0     0.0  rad_kit describes a radiator in kitchen
24 rad-hall        0.0  12     2.0     0.0     0.0  rad-hall describes radiator in hall
31 water_jacket    0.1  12     2.0     0.0     0.2  water_jacket describes water side of boiler

Initial ideal control runs in January to establish heating requirements in each
room (somewhat less than the peak startup for each room) gives ~500W
for bedroom3 bath kitchen and ~800W for other rooms.

The radiators are embedded in zones:and are connected via pumps
to the water_jacket. Flow rates set 0.043m^3/hr for ~500W radiators and
0.0688m^3/hr for ~800W radiators.

Air-side of flow network has slightly leaky window frames, draft
in the crawl-space, slightly open doors between main rooms and
halls and cracks in the air portion of the solar collectors as
well as venting the boiler case into the equipment room.

Currently the performance is shown by the attached images.
Note -  adjust the flow to 200 interations and 100 Pa rather 
than 50 Pa. 

Work to do:
a) add view factor calcs to better represent radiator heat gains
b) make a sketch of the network

To work out a flow rate for each radiator circuit I assumed
a 10degC temperature drop in radiator and an average 50C delta T with
the room to get kg/s and then convert to m^3/s for the flow component.

Someone might like to create a model variant which uses a plant
component for the accumulator tank and/or boiler?
