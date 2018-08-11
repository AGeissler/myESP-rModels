# Synopsis
 
Synopsis of the model Two adjacent cellular offices with vertical fin overhang
defined in cellular_shd.cfg generated on Wed Jul 25 16:55:50 2018. Associated
notes are in ../doc/cellular_shd.log
 
The model is located at latitude   46.00 with a longitude difference of   0.00
from the local time meridian (east +ve). The year used in simulations is 2000
and weekends occur on Saturday and Sunday.
 
The site exposure is typical city centre and the ground reflectance is 0.20.
 
 
The climate is: ESP test climate and is held in: clm67 with hour centred solar data.
Standard annual weather clm67                                                                                                                       
Calculated ground temp at 0.5m depth  
3.0888 4.3008 6.6610 8.8949 13.123 15.349 15.963 14.834 12.227 8.9770 5.7777 3.6649  
Calculated ground temp at 1.0m depth  
3.6630 4.5020 6.4738 8.4398 12.343 14.560 15.374 14.612 12.434 9.5459 6.5633 4.4524  
Calculated ground temp at 2.0m depth  
4.7588 5.0557 6.4004 7.8990 11.149 13.226 14.259 14.027 12.542 10.298 7.7730 5.7855  
Calculated ground temp at 4.0m depth  
6.4880 6.2779 6.8663 7.7174 9.8661 11.475 12.517 12.771 12.121 10.800 9.0880 7.5409  
 
 
## Integrated Performance View  
An Integrated Performance View has been defined  
Title base case model of two adjacent cellular  
Version Version cellular_offices_bc  
synopsis
:The cellular_bc is for comparison purposes for other model variants
Images    0  
 
Simulations to be undertaken  
 
name    simulations                days  descripion
------  -------------------------  ----  ----------
1st win  Sun-06-Feb to Sat-12-Feb   7     cellular_offices_bc 1st winter run
spring   Mon-17-Apr to Sun-23-Apr   7     cellular_offices_bc spring run
summer   Mon-03-Jul to Sun-09-Jul   7     cellular_offices_bc summer run
autumn   Mon-02-Oct to Sun-08-Oct   7     cellular_offices_bc autumn run
2nd win  Mon-20-Nov to Sun-26-Nov   7     cellular_offices_bc 2nd winter run
 
display day Sun-06-Feb.
display day Mon-17-Apr.
display day Mon-03-Jul.
display day Mon-02-Oct.
display day Mon-20-Nov.
 
Seasons (as found in climatelist)  
 
         winter  spring  summer  autumn  winter
-------  ------- ------  ------  ------  ------
  start  02-Jan  13-Mar  15-May  04-Sep  30-Oct
  finish 12-Mar  14-May  03-Sep  29-Oct  31-Dec
  days     70       63     112      56      63
 
Ratios for:   winter  spring summer autumn winter
------------  ------- ------ ------ ------ -------
 heating         8.86   8.83  23.47   8.42   8.94
 cooling         1.00   1.00  15.68   1.00   1.00
 lighting       10.00   9.00  16.00   8.00   9.00
 small power    10.00   9.00  16.00   8.00   9.00
 fans&pumps     10.00   9.00  16.00   8.00   9.00
 DHW            10.00   9.00  16.00   8.00   9.00
 
ID  Metric                zones  area    scale weight type      name          zones
--  --------------------  -----  ------  ----- ------ --------- ------------  ------------------------
 1  Resultant T (degC)       3    35.40   1.00   1.00  comfort   ocup_zones   manager_a manager_b corridor
 2  Zone db T (degC)         3    35.40   1.00   1.00  ZndbT     dbt_zones    manager_a manager_b corridor
 3  Infiltration (W)         3    35.40   1.00   1.00  Infil     infil_zones   manager_a manager_b corridor
 
 
ID Name          Zones  Area     Scale   Notes
-- ------------  ------ -------  ------  --------
 1 offices            2   27.00   1.000   manager_a manager_b
 2 other              1    8.40   1.000   corridor
 
 
## Databases
: Databases associated with the model
 
-------------------------  --------------------
standard pressure distr    pressc.db1
materials                  ../dbs/material.db4.a
constructions              ../dbs/multicon.db5
standard plant comp        plantc.db1
standard event profiles    profiles.db2.a
standard optical prop      optics.db2
standard UK NCM data       SBEM.db1
standard predefined obj    predefined.db1
standard mould isopleth    mould.db1
-------------------------  --------------------
 
## Controls
 
The model includes ideal controls -
Ideal control for dual office model. Weekdays normal office hours, saturday reduced occupied hours, sunday stand-by
only. One person per office, 100W lighting and 150W small power.
this is a base case set of assumptions
 
Zones control includes  1 functions.  
 
The following day types are defined weekdays    saturday    sunday  
 
## Zones
 
: Zone summary
 
ID  Zone name     Volume (m^3^)  Surfaces   Opaque (m^2^)    Transparent (m^2^)   Floor (m^2^)    Description
--  ------------  -------------  --------   --------------   ------------------   -------------   -------------------------------------------
 1  manager_a       40.5           13               62.2                  9.8             13.5     manager describes cellular office on left
 2  manager_b       40.5           13               62.2                  9.8             13.5     manager_b describes right office
 3  corridor        18.3           14               45.8                  9.0              8.4     corridor describes passage adjacent to offices
 -  all             99.            40              170.2                 28.6             35.4             -
 
### Zone 1: manager_a
 
Zone manager_a ( 1) is composed of 13 surfaces and 28 vertices.
It encloses a volume of 40.5 m^3^ of space, with a total surface
area of 72.0 m^2^ & approx floor area of 13.5 m^2^.
manager describes cellular office on left.  
There is 9.0000 m^2^ of exposed surface area, 9.0000 m^2^ of which is vertical.
Facade opaque is 3.6800 m^2^ &  27.3 % of floor area & average U of 0.633 & UA of 2.3297.
Facade glazing is 5.3200 m^2^ &  39.4 % of floor &  59.1 % facade with average U of 2.811 & UA of 14.953.  
Opaque partitions:ceiling:floor 18.020 m^2^ & trasparent partitions:ceiling:floor 4.4800 m^2^.  
 
: A summary of the surfaces in manager_a( 1)
 
ID   Area (m^2^)  Azimuth   Elevation  Name          Optics        Location  Use primary  Use detail  Construction name    Environment other side
---  -----------  --------  ---------  ------------  ------------  --------  -----------  ----------  -------------------  ----------------------
  1  13.5          90.        0.       pt_general    OPAQUE        VERT      -            -           gyp_gyp_ptn          ANOTHER
  2  0.920        360.        0.       part_frame    OPAQUE        VERT      -            -           sash_fr92mm          ANOTHER
  3  2.32           0.        0.       door          OPAQUE        VERT      -            -           door                 ANOTHER
  4  6.00         270.        0.       pt_other      OPAQUE        VERT      -            -           gyp_gyp_ptn          SIMILAR
  5  13.5           0.       90.       ceiling       OPAQUE        CEIL      -            -           ceiling              SIMILAR
  6  13.5           0.      -90.       floor         OPAQUE        FLOR      -            -           susp_flr_re          SIMILAR
  7  2.70         180.        0.       spandral      OPAQUE        VERT      -            -           insul_frc_facade     EXTERIOR
  8  0.980        180.        0.       frame         OPAQUE        VERT      -            -           sash_fr92mm          EXTERIOR
  9  5.32         180.        0.       glazing       DCF7671_      VERT      -            -           dbl_glz              EXTERIOR
 10  4.48           0.        0.       part_glaz     DCF7671_      VERT      -            -           dbl_glz              ANOTHER
 11  1.28         360.        0.       ptn_corid     OPAQUE        VERT      -            -           gyp_gyp_ptn          ANOTHER
 12  0.450        270.        0.       pt_other_a    OPAQUE        VERT      -            -           gyp_gyp_ptn          SIMILAR
 13  7.05         270.        0.       pt_other_b    OPAQUE        VERT      -            -           gyp_gyp_ptn          SIMILAR
 
 
: A summary of the vertices
 
Vertex X          Y          Z         Vertex X         Y          Z
------ ---------  ---------  --------- ------ --------- ---------  ---------
    1     0.0000     0.0000     0.0000   15     2.9000     0.0000     2.9000
    2     3.0000     0.0000     0.0000   16     0.1000     0.0000     2.9000
    3     3.0000     4.5000     0.0000   17     2.9000     4.5000     0.1000
    4     1.2000     4.5000     0.0000   18     1.3000     4.5000     0.1000
    5     0.0000     4.5000     0.0000   19     1.3000     4.5000     2.9000
    6     0.0000     0.0000     3.0000   20     2.9000     4.5000     2.9000
    7     3.0000     0.0000     3.0000   21     0.4000     4.5000     0.0000
    8     3.0000     4.5000     3.0000   22     0.4000     4.5000     3.0000
    9     1.2000     4.5000     3.0000   23     0.0000     2.5000     0.0000
   10     0.0000     4.5000     3.0000   24     0.0000     2.3500     0.0000
   11     0.0000     0.0000     0.9000   25     0.0000     2.5000     3.0000
   12     3.0000     0.0000     0.9000   26     0.0000     2.3500     3.0000
   13     0.1000     0.0000     1.0000   27     0.4000     4.5000     2.9000
   14     2.9000     0.0000     1.0000   28     1.2000     4.5000     2.9000
 
: A summary of the edges
 
Edge List                              Name          Perimeter
---- --------------------------------  ------------- ---------
   5 2,3,8,7,12                         pt_general    15.000
  11 3,4,28,9,8,3,17,20,19,18,17        part_frame    18.683
   4 4,21,27,28                         door           7.400
   4 5,23,25,10                         pt_other      10.000
   8 6,7,8,9,22,10,25,26                ceiling       15.000
   8 1,24,23,5,21,4,3,2                 floor         15.000
   4 1,2,12,11                          spandral       7.800
  10 11,12,7,6,11,13,16,15,14,13        frame         19.883
   4 13,14,15,16                        glazing        9.400
   4 17,18,19,20                        part_glaz      8.800
   7 21,5,10,22,9,28,27                 ptn_corid      8.400
   4 23,24,26,25                        pt_other_a     6.300
   5 24,1,11,6,26                       pt_other_b    10.700
 
An hourly solar radiation distribution is used for this zone.  
Surfaces (all applicable) for shading analysis  
spandral frame glazing  
Insolation sources (all applicable) 
glazing  
 
 
: Blocks associated with zone
 
Block X       Y      Z      DX     DY     DZ     Orient        Opacity Name     Constr
----- ------- ------ ------ ------ ------ ------ ------ ------ ------- -------- -----------
    1     0.0   -0.1    3.1    6.0    0.0    0.3    0.0    0.0  1.00   ob1 door
    2     0.0   -0.3    3.1    6.0    0.0    0.2    0.0    0.0  1.00   ob2 door
    3     0.0   -0.5    3.1    6.0    0.0    0.2    0.0    0.0  1.00   ob3 door
    4     0.0   -0.7    3.1    6.0    0.0    0.2    0.0    0.0  1.00   ob4 door
    5     0.0   -0.9    3.1    6.0    0.0    0.2    0.0    0.0  1.00   ob5 door
    6     0.0   -1.1    3.1    6.0    0.0    0.2    0.0    0.0  1.00   ob6 door
 
 Shading patterns have been calculated for this zone.
 
 
Schedule notes 
manager a has some diversity of occupancy  lights at 10W/m2 and small power on weekdays at 5W/m2
manager a has some diversity of occupancy  lights at 10W/m2 and small power on weekdays at 5W/m2
Flow control no control of air flow  
 
Scheduled air infiltration and ventilation  
 
Day type  ID  Hours   Infil. (ac/h)  Infil. (m^3^/s)  Vent. (ac/h)  Vent. (m^3^/s)  From zone  Source DegC
--------  --  ------  -------------  ---------------  ------------  --------------  ---------  -----------
weekdays   1  0 - 24    0.33          0.0037            0.00          0.0000          0         0.00
saturday   1  0 - 24    0.33          0.0037            0.00          0.0000          0         0.00
sunday     1  0 - 24    0.33          0.0037            0.00          0.0000          0         0.00
 
 
Daytype   ID   Label      Type       Unit  Hours  Sens.(W)  Late.(W)   Rad. Frac   Con. Frac
--------  ---  ---------  ---------  ----  -----  --------  --------   ---------   ---------
weekdays    1  Occupt     people     W      0- 7       0.0      0.0       0.50       0.50
weekdays    2  Occupt     people     W      7- 8      20.0     10.0       0.60       0.40
weekdays    3  Occupt     people     W      8- 9      60.0     30.0       0.60       0.40
weekdays    4  Occupt     people     W      9-12     100.0     50.0       0.60       0.40
weekdays    5  Occupt     people     W     12-14      65.0     32.5       0.60       0.40
weekdays    6  Occupt     people     W     14-17     100.0     50.0       0.60       0.40
weekdays    7  Occupt     people     W     17-24       0.0      0.0       0.50       0.50
weekdays    8  Lights     lighting   Wm2    0- 8       0.0      0.0       0.50       0.50
weekdays    9  Lights     lighting   Wm2    8-18      10.0      0.0       0.30       0.70
weekdays   10  Lights     lighting   Wm2   18-24       0.0      0.0       0.50       0.50
weekdays   11  Equipt     equipment  Wm2    0- 8       0.0      0.0       0.50       0.50
weekdays   12  Equipt     equipment  Wm2    8-18       5.0      0.0       0.40       0.60
weekdays   13  Equipt     equipment  Wm2   18-24       0.0      0.0       0.50       0.50
saturday    1  Occupt     people     W      0- 7       0.0      0.0       0.50       0.50
saturday    2  Occupt     people     W      7- 8      20.0     10.0       0.50       0.50
saturday    3  Occupt     people     W      8- 9      60.0     30.0       0.50       0.50
saturday    4  Occupt     people     W      9-12     100.0     50.0       0.50       0.50
saturday    5  Occupt     people     W     12-14      65.0     32.5       0.50       0.50
saturday    6  Occupt     people     W     14-17     100.0     50.0       0.50       0.50
saturday    7  Occupt     people     W     17-24       0.0      0.0       0.50       0.50
saturday    8  Lights     lighting   Wm2    0- 8       0.0      0.0       0.50       0.50
saturday    9  Lights     lighting   Wm2    8-12      10.0      0.0       0.30       0.70
saturday   10  Lights     lighting   Wm2   12-24       0.0      0.0       0.50       0.50
saturday   11  Equipt     equipment  Wm2    0-24       0.0      0.0       0.50       0.50
sunday      1  Lights     lighting   Wm2    0-24       0.0      0.0       0.50       0.50
sunday      2  Equipt     equipment  Wm2    0-24       0.0      0.0       0.50       0.50
 
### Zone 2: manager_b
 
Zone manager_b ( 2) is composed of 13 surfaces and 28 vertices.
It encloses a volume of 40.5 m^3^ of space, with a total surface
area of 72.0 m^2^ & approx floor area of 13.5 m^2^.
manager_b describes right office.  
There is 9.0000 m^2^ of exposed surface area, 9.0000 m^2^ of which is vertical.
Facade opaque is 3.6800 m^2^ &  27.3 % of floor area & average U of 0.633 & UA of 2.3297.
Facade glazing is 5.3200 m^2^ &  39.4 % of floor &  59.1 % facade with average U of 2.811 & UA of 14.953.  
Opaque partitions:ceiling:floor 18.020 m^2^ & trasparent partitions:ceiling:floor 4.4800 m^2^.  
 
: A summary of the surfaces in manager_b( 2)
 
ID   Area (m^2^)  Azimuth   Elevation  Name          Optics        Location  Use primary  Use detail  Construction name    Environment other side
---  -----------  --------  ---------  ------------  ------------  --------  -----------  ----------  -------------------  ----------------------
  1  13.5         270.        0.       pt_general    OPAQUE        VERT      -            -           gyp_gyp_ptn          ANOTHER
  2  0.920        360.        0.       part_frame    OPAQUE        VERT      -            -           sash_fr92mm          ANOTHER
  3  2.32           0.        0.       door          OPAQUE        VERT      -            -           door                 ANOTHER
  4  6.00          90.        0.       pt_other      OPAQUE        VERT      -            -           gyp_gyp_ptn          SIMILAR
  5  13.5           0.       90.       ceiling       OPAQUE        CEIL      -            -           ceiling              SIMILAR
  6  13.5           0.      -90.       floor         OPAQUE        FLOR      -            -           susp_flr_re          SIMILAR
  7  2.70         180.        0.       spandral      OPAQUE        VERT      -            -           insul_frc_facade     EXTERIOR
  8  0.980        180.        0.       frame         OPAQUE        VERT      -            -           sash_fr92mm          EXTERIOR
  9  5.32         180.        0.       glazing       DCF7671_      VERT      -            -           dbl_glz              EXTERIOR
 10  4.48           0.        0.       part_glaz     DCF7671_      VERT      -            -           dbl_glz              ANOTHER
 11  1.28           0.        0.       ptn_corid     OPAQUE        VERT      -            -           gyp_gyp_ptn          ANOTHER
 12  0.450         90.        0.       pt_other_a    OPAQUE        VERT      -            -           gyp_gyp_ptn          SIMILAR
 13  7.05          90.        0.       pt_other_b    OPAQUE        VERT      -            -           gyp_gyp_ptn          SIMILAR
 
 
: A summary of the vertices
 
Vertex X          Y          Z         Vertex X         Y          Z
------ ---------  ---------  --------- ------ --------- ---------  ---------
    1     6.1000     0.0000     0.0000   15     3.2000     0.0000     2.9000
    2     3.1000     0.0000     0.0000   16     6.0000     0.0000     2.9000
    3     3.1000     4.5000     0.0000   17     3.2000     4.5000     0.1000
    4     4.9000     4.5000     0.0000   18     4.8000     4.5000     0.1000
    5     6.1000     4.5000     0.0000   19     4.8000     4.5000     2.9000
    6     6.1000     0.0000     3.0000   20     3.2000     4.5000     2.9000
    7     3.1000     0.0000     3.0000   21     5.7000     4.5000     0.0000
    8     3.1000     4.5000     3.0000   22     5.7000     4.5000     3.0000
    9     4.9000     4.5000     3.0000   23     6.1000     2.5000     0.0000
   10     6.1000     4.5000     3.0000   24     6.1000     2.3500     0.0000
   11     6.1000     0.0000     0.9000   25     6.1000     2.5000     3.0000
   12     3.1000     0.0000     0.9000   26     6.1000     2.3500     3.0000
   13     6.0000     0.0000     1.0000   27     4.9000     4.5000     2.9000
   14     3.2000     0.0000     1.0000   28     5.7000     4.5000     2.9000
 
: A summary of the edges
 
Edge List                              Name          Perimeter
---- --------------------------------  ------------- ---------
   5 3,2,12,7,8                         pt_general    15.000
  11 4,3,8,9,27,4,18,19,20,17,18        part_frame    18.683
   4 21,4,27,28                         door           7.400
   4 23,5,10,25                         pt_other      10.000
   8 7,6,26,25,10,22,9,8                ceiling       15.000
   8 24,1,2,3,4,21,5,23                 floor         15.000
   4 2,1,11,12                          spandral       7.800
  10 12,11,6,7,12,14,15,16,13,14        frame         19.883
   4 14,13,16,15                        glazing        9.400
   4 18,17,20,19                        part_glaz      8.800
   7 5,21,28,27,9,22,10                 ptn_corid      8.400
   4 24,23,25,26                        pt_other_a     6.300
   5 1,24,26,6,11                       pt_other_b    10.700
 
An hourly solar radiation distribution is used for this zone.  
Surfaces (all applicable) for shading analysis  
spandral frame glazing  
Insolation sources (all applicable) 
glazing  
 
 
: Blocks associated with zone
 
Block X       Y      Z      DX     DY     DZ     Orient        Opacity Name     Constr
----- ------- ------ ------ ------ ------ ------ ------ ------ ------- -------- -----------
    1     0.0   -0.1    3.1    6.0    0.0    0.3    0.0    0.0  1.00   ob1 door
    2     0.0   -0.3    3.1    6.0    0.0    0.2    0.0    0.0  1.00   ob2 door
    3     0.0   -0.5    3.1    6.0    0.0    0.2    0.0    0.0  1.00   ob3 door
    4     0.0   -0.7    3.1    6.0    0.0    0.2    0.0    0.0  1.00   ob4 door
    5     0.0   -0.9    3.1    6.0    0.0    0.2    0.0    0.0  1.00   ob5 door
    6     0.0   -1.1    3.1    6.0    0.0    0.2    0.0    0.0  1.00   ob6 door
 
 Shading patterns have been calculated for this zone.
 
 
Schedule notes 
manager_b occupancy has some diversity of occupancy lights at 10W/m2 and small power on weekdays
at 5W/m2
manager_b occupancy has some diversity of occupancy lights at 10W/m2 and small power on weekdays
at 5W/m2
Flow control no control of air flow  
 
Scheduled air infiltration and ventilation  
 
Day type  ID  Hours   Infil. (ac/h)  Infil. (m^3^/s)  Vent. (ac/h)  Vent. (m^3^/s)  From zone  Source DegC
--------  --  ------  -------------  ---------------  ------------  --------------  ---------  -----------
weekdays   1  0 - 24    0.33          0.0037            0.00          0.0000          0         0.00
saturday   1  0 - 24    0.33          0.0037            0.00          0.0000          0         0.00
sunday     1  0 - 24    0.33          0.0037            0.00          0.0000          0         0.00
 
 
Daytype   ID   Label      Type       Unit  Hours  Sens.(W)  Late.(W)   Rad. Frac   Con. Frac
--------  ---  ---------  ---------  ----  -----  --------  --------   ---------   ---------
weekdays    1  Occupt     people     W      0- 7       0.0      0.0       0.50       0.50
weekdays    2  Occupt     people     W      7- 8      20.0     10.0       0.60       0.40
weekdays    3  Occupt     people     W      8- 9      60.0     30.0       0.60       0.40
weekdays    4  Occupt     people     W      9-12     100.0     50.0       0.60       0.40
weekdays    5  Occupt     people     W     12-14      65.0     32.5       0.60       0.40
weekdays    6  Occupt     people     W     14-17     100.0     50.0       0.60       0.40
weekdays    7  Occupt     people     W     17-24       0.0      0.0       0.50       0.50
weekdays    8  Lights     lighting   Wm2    0- 8       0.0      0.0       0.50       0.50
weekdays    9  Lights     lighting   Wm2    8-18      10.0      0.0       0.30       0.70
weekdays   10  Lights     lighting   Wm2   18-24       0.0      0.0       0.50       0.50
weekdays   11  Equipt     equipment  Wm2    0- 8       0.0      0.0       0.50       0.50
weekdays   12  Equipt     equipment  Wm2    8-18       5.0      0.0       0.40       0.60
weekdays   13  Equipt     equipment  Wm2   18-24       0.0      0.0       0.50       0.50
saturday    1  Occupt     people     W      0- 7       0.0      0.0       0.50       0.50
saturday    2  Occupt     people     W      7- 8      20.0     10.0       0.50       0.50
saturday    3  Occupt     people     W      8- 9      60.0     30.0       0.50       0.50
saturday    4  Occupt     people     W      9-12     100.0     50.0       0.50       0.50
saturday    5  Occupt     people     W     12-14      65.0     32.5       0.50       0.50
saturday    6  Occupt     people     W     14-17     100.0     50.0       0.50       0.50
saturday    7  Occupt     people     W     17-24       0.0      0.0       0.50       0.50
saturday    8  Lights     lighting   Wm2    0- 8       0.0      0.0       0.50       0.50
saturday    9  Lights     lighting   Wm2    8-12      10.0      0.0       0.30       0.70
saturday   10  Lights     lighting   Wm2   12-24       0.0      0.0       0.50       0.50
saturday   11  Equipt     equipment  Wm2    0-24       0.0      0.0       0.50       0.50
sunday      1  Lights     lighting   Wm2    0-24       0.0      0.0       0.50       0.50
sunday      2  Equipt     equipment  Wm2    0-24       0.0      0.0       0.50       0.50
 
### Zone 3: corridor
 
Zone corridor ( 3) is composed of 14 surfaces and 32 vertices.
It encloses a volume of 18.3 m^3^ of space, with a total surface
area of 54.8 m^2^ & approx floor area of 8.42 m^2^.
corridor describes passage adjacent to offices.  
Opaque partitions:ceiling:floor 9.0400 m^2^ & trasparent partitions:ceiling:floor 8.9600 m^2^.  
 
: A summary of the surfaces in corridor( 3)
 
ID   Area (m^2^)  Azimuth   Elevation  Name          Optics        Location  Use primary  Use detail  Construction name    Environment other side
---  -----------  --------  ---------  ------------  ------------  --------  -----------  ----------  -------------------  ----------------------
  1  3.00          90.        0.       right         OPAQUE        VERT      -            -           door                 SIMILAR
  2  18.3           0.        0.       wall          OPAQUE        VERT      -            -           gyp_blk_ptn          SIMILAR
  3  3.00         270.        0.       left          OPAQUE        VERT      -            -           door                 SIMILAR
  4  6.10           0.       90.       ceiling       OPAQUE        CEIL      -            -           ceiling              SIMILAR
  5  6.10           0.      -90.       floor         OPAQUE        FLOR      -            -           susp_flr_re          SIMILAR
  6  2.32         180.        0.       door          OPAQUE        VERT      -            -           door                 ANOTHER
  7  1.28         180.        0.       ptn_corid     OPAQUE        VERT      -            -           gyp_gyp_ptn          ANOTHER
  8  0.920        180.       -0.       part_frame    OPAQUE        VERT      -            -           sash_fr92mm          ANOTHER
  9  4.48         180.        0.       part_glaz     DCF7671_      VERT      -            -           dbl_glz              ANOTHER
 10  0.920        180.        0.       part_frameb   OPAQUE        VERT      -            -           sash_fr92mm          ANOTHER
 11  2.32         180.        0.       door_b        OPAQUE        VERT      -            -           door                 ANOTHER
 12  1.28         180.        0.       ptn_coridb    OPAQUE        VERT      -            -           gyp_gyp_ptn          ANOTHER
 13  4.48         180.        0.       part_glazb    DCF7671_      VERT      -            -           dbl_glz              ANOTHER
 14  0.300        180.        0.       filler        OPAQUE        VERT      -            -           gyp_gyp_ptn          ADIABATIC
 
 
: A summary of the vertices
 
Vertex X          Y          Z         Vertex X         Y          Z
------ ---------  ---------  --------- ------ --------- ---------  ---------
    1     0.0000     4.5500     0.0000   17     2.9000     4.5500     0.1000
    2     6.1000     4.5500     0.0000   18     2.9000     4.5500     2.9000
    3     6.1000     5.5500     0.0000   19     1.3000     4.5500     2.9000
    4     0.0000     5.5500     0.0000   20     1.3000     4.5500     0.1000
    5     0.0000     4.5500     3.0000   21     4.9000     4.5500     0.0000
    6     6.1000     4.5500     3.0000   22     3.1000     4.5500     0.0000
    7     6.1000     5.5500     3.0000   23     3.2000     4.5500     0.1000
    8     0.0000     5.5500     3.0000   24     4.8000     4.5500     0.1000
    9     1.2000     4.5500     0.0000   25     4.8000     4.5500     2.9000
   10     0.4000     4.5500     0.0000   26     3.2000     4.5500     2.9000
   11     0.4000     4.5500     2.9000   27     3.1000     4.5500     3.0000
   12     1.2000     4.5500     2.9000   28     4.9000     4.5500     3.0000
   13     0.4000     4.5500     3.0000   29     4.9000     4.5500     2.9000
   14     1.2000     4.5500     3.0000   30     5.7000     4.5500     0.0000
   15     3.0000     4.5500     0.0000   31     5.7000     4.5500     2.9000
   16     3.0000     4.5500     3.0000   32     5.7000     4.5500     3.0000
 
: A summary of the edges
 
Edge List                              Name          Perimeter
---- --------------------------------  ------------- ---------
   4 2,3,7,6                            right          8.000
   4 3,4,8,7                            wall          18.200
   4 4,1,5,8                            left           8.000
  10 5,13,14,16,27,28,32,6,7,8          ceiling       14.200
  10 1,4,3,2,30,21,22,15,9,10           floor         14.200
   4 10,9,12,11                         door           7.400
   7 1,10,11,12,14,13,5                 ptn_corid      8.400
  11 9,15,16,14,12,9,20,19,18,17,20     part_frame    18.683
   4 20,17,18,19                        part_glaz      8.800
  11 22,21,29,28,27,22,23,26,25,24,23   part_frameb   18.683
   4 21,30,31,29                        door_b         7.400
   7 30,2,6,32,28,29,31                 ptn_coridb     8.400
   4 23,24,25,26                        part_glazb     8.800
   4 15,22,27,16                        filler         6.200
 
All surfaces will receive diffuse insolation (if shading not calculated).  
No shading analysis requested.  
No insolation analysis requested.  
 
 
 
 
Schedule notes 
half a person and 50-100W lighting weekdays 10W weekends with electrical properties
half a person and 50-100W lighting weekdays 10W weekends with electrical properties
Flow control no control of air flow  
 
Scheduled air infiltration and ventilation  
 
Day type  ID  Hours   Infil. (ac/h)  Infil. (m^3^/s)  Vent. (ac/h)  Vent. (m^3^/s)  From zone  Source DegC
--------  --  ------  -------------  ---------------  ------------  --------------  ---------  -----------
 
 
Daytype   Gain Label    Type    Unit Period Sensible  Latent  Radiant  Convec   p.f +/-  Power Voltage Phase
          No.                        Hours  Magn.(W) Magn.(W) Frac     Frac     (-) (-)    (W)    (V) (rgb)
weekdays    1 Occupt     people     W    0- 8      0.0      0.0    0.60    0.40    0.00  0    0.0    0.0  1
weekdays    2 Occupt     people     W    8-20    100.0     50.0    0.60    0.40    0.00  0    0.0    0.0  1
weekdays    3 Occupt     people     W   20-24      0.0      0.0    0.60    0.40    0.00  0    0.0    0.0  1
weekdays    4 Lights     lighting   W    0- 8     50.0      0.0    0.30    0.70    0.90  1   50.0  220.0  1
weekdays    5 Lights     lighting   W    8-20    100.0      0.0    0.30    0.70    0.90  1  100.0  220.0  1
weekdays    6 Lights     lighting   W   20-24     50.0      0.0    0.30    0.70    0.90  1   50.0  220.0  1
saturday    1 Occupt     people     W    0- 8      0.0      0.0    0.60    0.40    0.00  0    0.0    0.0  1
saturday    2 Occupt     people     W    8-20    100.0     50.0    0.60    0.40    0.00  0    0.0    0.0  1
saturday    3 Occupt     people     W   20-24      0.0      0.0    0.60    0.40    0.00  0    0.0    0.0  1
saturday    4 Lights     lighting   W    0- 8      0.0      0.0    0.30    0.70    0.90  1   10.0  220.0  1
saturday    5 Lights     lighting   W    8-20     10.0      0.0    0.30    0.70    0.90  1   10.0  220.0  1
saturday    6 Lights     lighting   W   20-24      0.0      0.0    0.30    0.70    0.90  1   10.0  220.0  1
sunday      1 Occupt     people     W    0- 8      0.0      0.0    0.60    0.40    0.00  0    0.0    0.0  1
sunday      2 Occupt     people     W    8-20    100.0     50.0    0.60    0.40    0.00  0    0.0    0.0  1
sunday      3 Occupt     people     W   20-24      0.0      0.0    0.60    0.40    0.00  0    0.0    0.0  1
sunday      4 Lights     lighting   W    0- 8      0.0      0.0    0.30    0.70    0.90  1   10.0  220.0  1
sunday      5 Lights     lighting   W    8-20     10.0      0.0    0.30    0.70    0.90  1   10.0  220.0  1
sunday      6 Lights     lighting   W   20-24      0.0      0.0    0.30    0.70    0.90  1   10.0  220.0  1
 
## Areas
 
 
 Project floor area is 35.420m2, wall area is 7.3600m2, window area is 10.640m2.
 Sloped roof area is 0.00m2, flat roof area is 0.00m2, skylight area is 0.00m2.
 In contact with ground 0.00m2.
 There is 18.000m2 of outside surface area, 18.000m2 of which is vertical.
 
 Outside walls are 20.779 % of floor area & average U of 0.633 & UA of 4.6595 & max MLC thickness 0.112
 Glazing is 30.040 % of floor & 59.111 % facade with average U of 2.811 & UA of 29.905
 
## Constructions  
 Multi-layer constructions referenced in the model.  
 
 
### gyp_blk_ptn
Details of opaque construction: gyp_blk_ptn with an overall thickness of  0.226m.  
In category partitions also shown in menus as: plasterbd dabs 100mm concrete bl  
partition - plasterboard on dabs over 100mm concret block.
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
Ext     13.0            0.190                   950.              840.                     0.91        0.22         11.         0.07          12.4   white gypboard : White painted Gypboard (inorganic-porous)
    2   50.0            0.000                     0.                0.                     0.99        0.99          1.         0.17           0.1   air  0.17 0.17 0.17
    3  100.0            0.510                  1400.             1000.                     0.90        0.65         10.         0.20         140.0   block inner : Block inner (3% mc)
    4   50.0            0.000                     0.                0.                     0.99        0.99          1.         0.17           0.1   air  0.17 0.17 0.17
Int     13.0            0.190                   950.              840.                     0.91        0.22         11.         0.07          12.4   white gypboard : White painted Gypboard (inorganic-porous)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  1.186  1.230  1.133 (partition)  1.072  
Weight per m^2 of this construction 164.82  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  1.17
 External surface admittance Y=  2.38  w=  1.44 decrement factor f=  0.74  phi=  0.54 surface factor f=  0.74  phi=  0.54
 Partition admittance Y=  2.59  w=  2.21 surface factor f=  0.76  phi=  0.86  
 
Total area of gyp_blk_ptn is     18.30  
 
 
### gyp_gyp_ptn
Details of opaque construction: gyp_gyp_ptn with an overall thickness of  0.074m.  
In category partitions also shown in menus as: plasterboard on 50mm studs  
partition - plasterboard on 50mm studs with no acoustic treatment.
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
Ext     12.0            0.190                   950.              840.                     0.91        0.22         11.         0.06          11.4   white gypboard : White painted Gypboard (inorganic-porous)
    2   50.0            0.000                     0.                0.                     0.99        0.99          1.         0.17           0.1   air  0.17 0.17 0.17
Int     12.0            0.190                   950.              840.                     0.91        0.22         11.         0.06          11.4   white gypboard : White painted Gypboard (inorganic-porous)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  2.144  2.292  1.975 (partition)  1.798  
Weight per m^2 of this construction  22.86  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  2.10
 External surface admittance Y=  2.15  w=  0.62 decrement factor f=  0.75  phi=  0.21 surface factor f=  0.75  phi=  0.21
 Partition admittance Y=  0.61  w=  5.69 surface factor f=  1.00  phi=  0.28  
 
Total area of gyp_gyp_ptn is     59.42  
 
 
### door
Details of opaque construction: door with an overall thickness of  0.025m.  
In category doors also shown in menus as: solid wood door 25mm  
solid wood oak door 25mm.
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
    1   25.0            0.190                   700.             2390.                     0.90        0.65         12.         0.13          17.5   oak : Oak (radial cut)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  3.316  3.682  2.928 (partition)  2.554  
Weight per m^2 of this construction  17.50  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  3.21
 External surface admittance Y=  3.33  w=  0.61 decrement factor f=  0.61  phi=  0.40 surface factor f=  0.61  phi=  0.40
 Partition admittance Y=  1.21  w=  5.38 surface factor f=  0.99  phi=  0.56  
 
Total area of door is     15.28  
 
 
### dbl_glz  
Details of transparent construction dbl_glz with DCF7671_06nb optics with an overall thickness of  0.024m.  
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
Ext      6.0            0.760                  2710.              837.                     0.83        0.05      19200.         0.01          16.3   plate glass : Plate glass with placeholder single layer optics
    2   12.0            0.000                     0.                0.                     0.99        0.99          1.         0.17           0.0   air  0.17 0.17 0.17
Int      6.0            0.760                  2710.              837.                     0.83        0.05      19200.         0.01          16.3   plate glass : Plate glass with placeholder single layer optics
 
ISO 6946 U values (horiz/upward/downward heat flow)=  2.811  3.069  2.527 (partition)  2.243  
Weight per m^2 of this construction  32.53  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  2.73
 External surface admittance Y=  2.81  w=  0.63 decrement factor f=  0.67  phi=  0.31 surface factor f=  0.67  phi=  0.31
 Partition admittance Y=  0.82  w=  5.64 surface factor f=  1.00  phi=  0.38  
 
 Clear float 76/71,     6mm, no blind: with id of: DCF7671_06nb
 with 3 layers [including air gaps] and visible trn: 0.76
 
: Direct transmission @deg
 
   0     40    55    70    80
   ----- ----- ----- ----- -----
   0.611 0.583 0.534 0.384 0.170
 
: Absorption @deg
 
 Layer 0     40    55    70    80
 ----- ----- ----- ----- ----- -----
    1    0.157  0.172  0.185  0.201  0.202
    2    0.001  0.002  0.003  0.004  0.005
    3    0.117  0.124  0.127  0.112  0.077
 
Total area of dbl_glz is     28.56  
 
 
### sash_fr92mm
Details of opaque construction: sash_fr92mm with an overall thickness of  0.092m.  
In category frames also shown in menus as: sash window frame 92m thick  
A wood frame for traditional windows 92mm thick made from generic softwood.
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
    1   92.0            0.130                   630.             2760.                     0.90        0.65         12.         0.71          58.0   softwood : Softwood (generic)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  1.139  1.180  1.090 (partition)  1.033  
Weight per m^2 of this construction  57.96  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  1.13
 External surface admittance Y=  2.92  w=  2.11 decrement factor f=  0.73  phi=  0.98 surface factor f=  0.73  phi=  0.98
 Partition admittance Y=  3.34  w=  2.72 surface factor f=  0.74  phi=  1.37  
 
Total area of sash_fr92mm is      5.64  
 
 
### ceiling
Details of opaque construction: ceiling linked to ceiling_rev with an overall thickness of  0.110m.  
In category ceil_floor also shown in menus as: suspended acoustic ceiling acous  
A mineral time with 100mm acoustic treatment. For use as a suspended ceiling. To be referenced
from room. Reversed version is ceiling_rev
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
Ext    100.0            0.040                   250.              840.                     0.90        0.30          4.         2.50          25.0   glasswool : Glasswool (generic) (non-hygroscopic)
Int     10.0            0.030                   290.             2000.                     0.90        0.60          8.         0.33           2.9   ceiling mineral : Ceiling acoustic tile (mineral fibre based)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  0.333  0.336  0.329 (partition)  0.323  
Weight per m^2 of this construction  27.90  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  0.33
 External surface admittance Y=  0.82  w=  3.17 decrement factor f=  0.94  phi=  0.30 surface factor f=  0.94  phi=  0.30
 Partition admittance Y=  0.92  w=  4.35 surface factor f=  0.96  phi=  0.40  
 
Total area of ceiling is     33.10  
 
 
### susp_flr_re
Details of opaque construction: susp_flr_re linked to susp_floor with an overall thickness of  0.219m.  
In category ceil_floor also shown in menus as: carpeted intermediate room->void  
A commercial concrete floor structure with carpet cast on steel shuttering. For use in the room
over a ceiling void.
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
Ext      4.0           50.000                  7800.              502.                     0.12        0.20      19200.         0.00          31.2   steel : Steel
    2  140.0            1.400                  2100.              653.                     0.90        0.65         19.         0.10         294.0   heavy mix concrete : Heavy mix concrete
    3   50.0            0.000                     0.                0.                     0.99        0.99          1.         0.17           0.1   air  0.17 0.17 0.17
    4   19.0            0.150                   800.             2093.                     0.91        0.65         96.         0.13          15.2   chipboard : Chipboard
Int      6.0            0.060                   186.             1360.                     0.90        0.60         10.         0.10           1.1   Wilton : Wilton weave wool carpet (organic-hygroscopic)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  1.500  1.570  1.415 (partition)  1.321  
Weight per m^2 of this construction 341.58  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  1.48
 External surface admittance Y=  2.11  w=  1.43 decrement factor f=  0.77  phi=  0.46 surface factor f=  0.77  phi=  0.46
 Partition admittance Y=  2.46  w=  2.85 surface factor f=  0.81  phi=  0.95  
 
Total area of susp_flr_re is     33.10  
 
 
### insul_frc_facade
Details of opaque construction: insul_frc_facade with an overall thickness of  0.112m.  
In category walls also shown in menus as: insul GFRC facade ov Fermacell  
insul_frc_facade GFR concrete over insulation and fermacell
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
Ext     20.0            0.900                  1950.              840.                     0.90        0.65         18.         0.02          39.0   Glass reinf conc : Glass fibre reinforced concrete
    2   80.0            0.040                    12.              840.                     0.90        0.65         30.         2.00           1.0   glass fibre quilt : Glass Fibre Quilt (non-hygroscopic)
Int     12.0            0.360                  1150.             1000.                     0.91        0.22        310.         0.03          13.8   gypsum_fibreboard : Fermacell gypsum fibreboard IBR report 3001-100 gyps
 
ISO 6946 U values (horiz/upward/downward heat flow)=  0.449  0.455  0.441 (partition)  0.432  
Weight per m^2 of this construction  53.76  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  0.45
 External surface admittance Y=  1.05  w=  3.85 decrement factor f=  0.94  phi=  0.44 surface factor f=  0.94  phi=  0.44
 Partition admittance Y=  1.04  w=  5.47 surface factor f=  0.99  phi=  0.48  
 
Total area of insul_frc_facade is      5.40  
