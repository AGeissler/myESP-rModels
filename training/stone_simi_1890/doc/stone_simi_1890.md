# Synopsis
 
Synopsis of the model Traditional 1890s stone upgraded windows for Northern
Scotland defined in stone_simi_1890.cfg generated on Wed Jul 25 13:58:41 2018.
Associated notes are in ../doc/stone_simi_1890.log
 
The model is located at latitude   55.87 with a longitude difference of  -4.43
from the local time meridian (east +ve). The year used in simulations is 1986
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
 
Primary energy conversions (demand kWhr to primary kWhr) used.
 
## Databases
: Databases associated with the model
 
-------------------------  --------------------
standard pressure distr    pressc.db1
materials                  ../dbs/stone_1890.materialdb
constructions              ../dbs/stone_1890.constrdb
standard plant comp        plantc.db1
standard event profiles    profiles.db2.a
optical properties         ../dbs/stone_1890.opticdb
standard UK NCM data       SBEM.db1
predefined objects         /home/jon/esru_jwh13b/databases/predefined.db1
standard mould isopleth    mould.db1
-------------------------  --------------------
 
## Controls
 
The model includes ideal controls -
heating 5C overnight, 21C until late evening. Bedrooms are 18C. All days the same.  Each loop sized based on
inspection of Jan demands.
lower buffer zones heated (but a bit cooler) than the flat.
 
Zones control includes 12 functions.  
 
The following day types are defined weekdays    saturday    sunday  
 
Details of control loops referenced in the model  
 
The sensor for function  4 senses a mix of db T and MRT in bedroom1.  
The actuator for function  4 is mixed convective/radiant flux in bedroom1.  
 >  1 periods of validity during the year have been defined.
 
Control is valid Wed-01-Jan to Wed-31-Dec, 1986 with  3 periods.
 
Per  Start  Sensing   Actuating   weekdays control laws
---  -----  -------   ---------   -------------------------------------------
  1   0.00  db temp   > flux       basic control: heating capacity 2400.0W cooling capacity 1000.0W. heating setpoint 5.00C cooling setpoint 100.00C.  
  2   6.50  db temp   > flux       basic control: heating capacity 2400.0W cooling capacity 1000.0W. heating setpoint 18.00C cooling setpoint 100.00C.  
  3  23.00  db temp   > flux       basic control: heating capacity 2400.0W cooling capacity 1000.0W. heating setpoint 5.00C cooling setpoint 100.00C.  
 
The sensor for function  5 senses a mix of db T and MRT in kiten_util.  
The actuator for function  5 is mixed convective/radiant flux in kiten_util.  
 >  1 periods of validity during the year have been defined.
 
Control is valid Wed-01-Jan to Wed-31-Dec, 1986 with  3 periods.
 
Per  Start  Sensing   Actuating   weekdays control laws
---  -----  -------   ---------   -------------------------------------------
  1   0.00  db temp   > flux       basic control: heating capacity 2500.0W cooling capacity 1000.0W. heating setpoint 5.00C cooling setpoint 100.00C.  
  2   6.50  db temp   > flux       basic control: heating capacity 2500.0W cooling capacity 1000.0W. heating setpoint 21.00C cooling setpoint 100.00C.  
  3  23.00  db temp   > flux       basic control: heating capacity 2500.0W cooling capacity 1000.0W. heating setpoint 5.00C cooling setpoint 100.00C.  
 
The sensor for function  6 senses a mix of db T and MRT in bath.  
The actuator for function  6 is mixed convective/radiant flux in bath.  
 >  1 periods of validity during the year have been defined.
 
Control is valid Wed-01-Jan to Wed-31-Dec, 1986 with  3 periods.
 
Per  Start  Sensing   Actuating   weekdays control laws
---  -----  -------   ---------   -------------------------------------------
  1   0.00  db temp   > flux       basic control: heating capacity 800.0W cooling capacity 1000.0W. heating setpoint 5.00C cooling setpoint 100.00C.  
  2   6.50  db temp   > flux       basic control: heating capacity 800.0W cooling capacity 1000.0W. heating setpoint 21.00C cooling setpoint 100.00C.  
  3  23.00  db temp   > flux       basic control: heating capacity 800.0W cooling capacity 1000.0W. heating setpoint 5.00C cooling setpoint 100.00C.  
 
The sensor for function  7 senses a mix of db T and MRT in living.  
The actuator for function  7 is mixed convective/radiant flux in living.  
 >  1 periods of validity during the year have been defined.
 
Control is valid Wed-01-Jan to Wed-31-Dec, 1986 with  3 periods.
 
Per  Start  Sensing   Actuating   weekdays control laws
---  -----  -------   ---------   -------------------------------------------
  1   0.00  db temp   > flux       basic control: heating capacity 2500.0W cooling capacity 1000.0W. heating setpoint 5.00C cooling setpoint 100.00C.  
  2   6.50  db temp   > flux       basic control: heating capacity 2500.0W cooling capacity 1000.0W. heating setpoint 21.00C cooling setpoint 100.00C.  
  3  23.00  db temp   > flux       basic control: heating capacity 2500.0W cooling capacity 1000.0W. heating setpoint 5.00C cooling setpoint 100.00C.  
 
The sensor for function  8 senses a mix of db T and MRT in hall.  
The actuator for function  8 is mixed convective/radiant flux in hall.  
 >  1 periods of validity during the year have been defined.
 
Control is valid Wed-01-Jan to Wed-31-Dec, 1986 with  3 periods.
 
Per  Start  Sensing   Actuating   weekdays control laws
---  -----  -------   ---------   -------------------------------------------
  1   0.00  db temp   > flux       basic control: heating capacity 1600.0W cooling capacity 1000.0W. heating setpoint 5.00C cooling setpoint 100.00C.  
  2   6.50  db temp   > flux       basic control: heating capacity 1600.0W cooling capacity 1000.0W. heating setpoint 21.00C cooling setpoint 100.00C.  
  3  23.00  db temp   > flux       basic control: heating capacity 1600.0W cooling capacity 1000.0W. heating setpoint 5.00C cooling setpoint 100.00C.  
 
The sensor for function  9 senses a mix of db T and MRT in study.  
The actuator for function  9 is mixed convective/radiant flux in study.  
 >  1 periods of validity during the year have been defined.
 
Control is valid Wed-01-Jan to Wed-31-Dec, 1986 with  3 periods.
 
Per  Start  Sensing   Actuating   weekdays control laws
---  -----  -------   ---------   -------------------------------------------
  1   0.00  db temp   > flux       basic control: heating capacity 800.0W cooling capacity 1000.0W. heating setpoint 5.00C cooling setpoint 100.00C.  
  2   6.50  db temp   > flux       basic control: heating capacity 800.0W cooling capacity 1000.0W. heating setpoint 21.00C cooling setpoint 100.00C.  
  3  23.00  db temp   > flux       basic control: heating capacity 800.0W cooling capacity 1000.0W. heating setpoint 5.00C cooling setpoint 100.00C.  
 
The sensor for function 10 senses a mix of db T and MRT in family.  
The actuator for function 10 is mixed convective/radiant flux in family.  
 >  1 periods of validity during the year have been defined.
 
Control is valid Wed-01-Jan to Wed-31-Dec, 1986 with  3 periods.
 
Per  Start  Sensing   Actuating   weekdays control laws
---  -----  -------   ---------   -------------------------------------------
  1   0.00  db temp   > flux       basic control: heating capacity 1600.0W cooling capacity 1000.0W. heating setpoint 5.00C cooling setpoint 100.00C.  
  2   6.50  db temp   > flux       basic control: heating capacity 1600.0W cooling capacity 1000.0W. heating setpoint 21.00C cooling setpoint 100.00C.  
  3  23.00  db temp   > flux       basic control: heating capacity 1600.0W cooling capacity 1000.0W. heating setpoint 5.00C cooling setpoint 100.00C.  
 
The sensor for function 11 senses a mix of db T and MRT in bedroom2.  
The actuator for function 11 is mixed convective/radiant flux in bedroom2.  
 >  1 periods of validity during the year have been defined.
 
Control is valid Wed-01-Jan to Wed-31-Dec, 1986 with  3 periods.
 
Per  Start  Sensing   Actuating   weekdays control laws
---  -----  -------   ---------   -------------------------------------------
  1   0.00  db temp   > flux       basic control: heating capacity 1500.0W cooling capacity 1000.0W. heating setpoint 5.00C cooling setpoint 100.00C.  
  2   6.50  db temp   > flux       basic control: heating capacity 1500.0W cooling capacity 1000.0W. heating setpoint 18.00C cooling setpoint 100.00C.  
  3  23.00  db temp   > flux       basic control: heating capacity 1500.0W cooling capacity 1000.0W. heating setpoint 5.00C cooling setpoint 100.00C.  
 
The sensor for function 12 senses a mix of db T and MRT in guest_room.  
The actuator for function 12 is mixed convective/radiant flux in guest_room.  
 >  1 periods of validity during the year have been defined.
 
Control is valid Wed-01-Jan to Wed-31-Dec, 1986 with  3 periods.
 
Per  Start  Sensing   Actuating   weekdays control laws
---  -----  -------   ---------   -------------------------------------------
  1   0.00  db temp   > flux       basic control: heating capacity 1500.0W cooling capacity 1000.0W. heating setpoint 5.00C cooling setpoint 100.00C.  
  2   6.50  db temp   > flux       basic control: heating capacity 1500.0W cooling capacity 1000.0W. heating setpoint 18.00C cooling setpoint 100.00C.  
  3  23.00  db temp   > flux       basic control: heating capacity 1500.0W cooling capacity 1000.0W. heating setpoint 5.00C cooling setpoint 100.00C.  
 
Zone to contol loop linkages  
 zone ( 1) guest_room   << control 12  
 zone ( 2) kiten_util   << control  5  
 zone ( 3) bedroom1     << control  4  
 zone ( 4) bath         << control  6  
 zone ( 5) bedroom2     << control 11  
 zone ( 6) living       << control  7  
 zone ( 7) hall         << control  8  
 zone ( 8) study        << control  9  
 zone ( 9) family       << control 10  
 zone (10) lower        << control  0  
 zone (11) lower_ne     << control  0  
 zone (12) upper        << control  0  
 zone (13) upper_ne     << control  0  
 
## Zones
 
: Zone summary
 
ID  Zone name     Volume (m^3^)  Surfaces   Opaque (m^2^)    Transparent (m^2^)   Floor (m^2^)    Description
--  ------------  -------------  --------   --------------   ------------------   -------------   -------------------------------------------
 1  guest_room      54.1           28               90.7                  2.0             25.9     guest room describes rarely used room for guests
 2  kiten_util     103.5           43              158.8                  3.4             32.3     kiten_util describes the kitchen utility and alcove
 3  bedroom1       105.5           40              146.0                  6.4             33.0     bedroom1 describes bedroom 1 and wardrobe
 4  bath            18.8           17               44.3                  1.4              5.9     bath describes long thin bathroom
 5  bedroom2        57.3           20               89.6                  1.6             17.9     bedroom2 describes east facing bedroom
 6  living          89.4           34              117.1                  6.2             27.9     living describes corner living room
 7  hall            67.2           28              113.7                  0.0             21.0     hall describes corridor within the flat
 8  study           19.6           19               44.8                  1.4              6.1     study describes small north facing room
 9  family          55.3           24               85.7                  2.9             17.3     family describes family room on the north
10  lower           76.4           37              255.4                  0.0            109.1     lower describes space below flat (crawl or another flat)
11  lower_ne        48.5           38              169.2                  0.0             69.3     lower_ne describes space below liv b2 study family
12  upper           93.0           51              279.7                  0.0            112.7     upper describes space over kitchen br1 bath hall stair
13  upper_ne       114.6           53              233.6                  0.0             85.9     upper_ne describes space over br2 living study family
 -  all            903.           432             1828.6                 25.4            564.3             -
 
### Zone 1: guest_room
 
Zone guest_room ( 1) is composed of 28 surfaces and 46 vertices.
It encloses a volume of 54.1 m^3^ of space, with a total surface
area of 92.7 m^2^ & approx floor area of 25.9 m^2^.
guest room describes rarely used room for guests.  
There is 13.440 m^2^ of exposed surface area, 13.440 m^2^ of which is vertical.
Facade opaque is 11.394 m^2^ &  44.0 % of floor area & average U of 1.357 & UA of 15.461.
Facade glazing is 2.0458 m^2^ &   7.9 % of floor &  15.2 % facade with average U of 2.877 & UA of 5.8852.  
Opaque partitions:ceiling:floor 79.280 m^2^.  
 
: A summary of the surfaces in guest_room( 1)
 
ID   Area (m^2^)  Azimuth   Elevation  Name          Optics        Location  Use primary  Use detail  Construction name    Environment other side
---  -----------  --------  ---------  ------------  ------------  --------  -----------  ----------  -------------------  ----------------------
  1  16.9           0.       90.       ceiling       OPAQUE        CEIL      -            -           ceil_to_roof         ANOTHER
  2  16.9           0.      -90.       floor_str     OPAQUE        FLOR      -            -           floor_to_cli         ANOTHER
  3  0.600          0.        0.       skirt_g       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
  4  9.00           0.        0.       fam_ptn_g     OPAQUE        VERT      -            -           masonry0.2           ANOTHER
  5  0.120          0.        0.       skirt_h       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
  6  1.80           0.        0.       fa_ptn_h      OPAQUE        VERT      -            -           masonry0.2           ANOTHER
  7  4.80          90.        0.       ptn_a         OPAQUE        VERT      -            -           door                 ANOTHER
  8  1.80         180.        0.       ptn_b         OPAQUE        VERT      -            -           masonry0.2           ANOTHER
  9  5.40          90.        0.       ptn_c         OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 10  1.80           0.        0.       ptn_d         OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 11  4.80          90.        0.       ptn_e         OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 12  0.320         90.        0.       skirt_a       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 13  0.120        180.        0.       skirt_b       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 14  0.360         90.        0.       skirt_c       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 15  0.120          0.        0.       skirt_d       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 16  0.320         90.        0.       skirt_e       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 17  1.80         180.        0.       k_ptn_b       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 18  9.00         180.        0.       k_ptn_c       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 19  2.32         270.        0.       wall_at_glz   OPAQUE        VERT      -            -           masonry0.2           EXTERIOR
 20  0.120        180.        0.       k_skirt_b     OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 21  0.600        180.        0.       k_skirt_c     OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 22  0.320        270.        0.       k_skirt_d     OPAQUE        VERT      -            -           masonry0.2           EXTERIOR
 23  0.520        270.        0.       skirt_out     OPAQUE        VERT      -            -           stone_0.9m           EXTERIOR
 24  0.438        270.        0.       br3_glz_frm   OPAQUE        VERT      F-FRAME      CLOSED      sash_frame           EXTERIOR
 25  7.80         270.        0.       ext_wall      OPAQUE        VERT      WALL         -           stone_0.9m           EXTERIOR
 26  2.40         270.        0.       k_ptn_gues    OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 27  0.160        270.        0.       skirt_d-gues  OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 28  2.05         270.        0.       glazing       DC_8074_      VERT      C-WINDOW     CLOSED      Window_ext           EXTERIOR
 
 
All surfaces will receive diffuse insolation (if shading not calculated).  
No shading analysis requested.  
No insolation analysis requested.  
 
 
 
 
Schedule notes 
There is 1.5 ach infiltration all hours with overheating control if over 23 or 25C.
domestic bedroom with 1-2 occupants 0-7h 22-24h. 60 W lighting morning and evening.
Flow control infil only: zone temp  
 Control Setpoint  Infiltration     Ventilation    Source  temp
 range             ac/h   m^3/s     ac/h   m^3/s   index   degC
 Lower    10.00    1.500  0.0226     0.000  0.0000    0     0.000
 Nominal between 10.0 &  23.0 based on period data.
 Middle   23.00    3.000  0.0451     0.000  0.0000    0     0.000
 High     25.00    4.000  0.0602     0.000  0.0000    0     0.000
 
Scheduled air infiltration and ventilation  
 
Day type  ID  Hours   Infil. (ac/h)  Infil. (m^3^/s)  Vent. (ac/h)  Vent. (m^3^/s)  From zone  Source DegC
--------  --  ------  -------------  ---------------  ------------  --------------  ---------  -----------
weekdays   1  0 - 24    1.50          0.0226            0.00          0.0000          0         0.00
saturday   1  0 - 24    1.50          0.0226            0.00          0.0000          0         0.00
sunday     1  0 - 24    1.50          0.0226            0.00          0.0000          0         0.00
 
 
Daytype   ID   Label      Type       Unit  Hours  Sens.(W)  Late.(W)   Rad. Frac   Con. Frac
--------  ---  ---------  ---------  ----  -----  --------  --------   ---------   ---------
weekdays    1  Occupt     people     W      0- 7     150.0     60.0       0.50       0.50
weekdays    2  Occupt     people     W      7- 9      60.0     30.0       0.50       0.50
weekdays    3  Occupt     people     W      9-20       0.0      0.0       0.50       0.50
weekdays    4  Occupt     people     W     20-24     160.0     60.0       0.50       0.50
weekdays    5  Lights     lighting   W      0- 6      10.0      0.0       0.50       0.50
weekdays    6  Lights     lighting   W      6- 8      60.0      0.0       0.50       0.50
weekdays    7  Lights     lighting   W      8-20       0.0      0.0       0.50       0.50
weekdays    8  Lights     lighting   W     20-22      60.0      0.0       0.50       0.50
weekdays    9  Lights     lighting   W     22-24       0.0      0.0       0.50       0.50
weekdays   10  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
saturday    1  Occupt     people     W      0- 8     150.0     60.0       0.50       0.50
saturday    2  Occupt     people     W      8- 9      60.0     60.0       0.50       0.50
saturday    3  Occupt     people     W      9-21       0.0      0.0       0.50       0.50
saturday    4  Occupt     people     W     21-24     100.0      0.0       0.50       0.50
saturday    5  Lights     lighting   W      0- 7      10.0      0.0       0.50       0.50
saturday    6  Lights     lighting   W      7- 9      60.0      0.0       0.50       0.50
saturday    7  Lights     lighting   W      9-20       0.0      0.0       0.50       0.50
saturday    8  Lights     lighting   W     20-24      60.0      0.0       0.50       0.50
saturday    9  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
sunday      1  Occupt     people     W      0- 9     100.0     60.0       0.50       0.50
sunday      2  Occupt     people     W      9-10      50.0     75.0       0.50       0.50
sunday      3  Occupt     people     W     10-19       0.0      0.0       0.50       0.50
sunday      4  Occupt     people     W     19-20     100.0     50.0       0.50       0.50
sunday      5  Occupt     people     W     20-24     200.0    100.0       0.50       0.50
sunday      6  Lights     lighting   W      0- 9      10.0      0.0       0.50       0.50
sunday      7  Lights     lighting   W      9-10      80.0      0.0       0.50       0.50
sunday      8  Lights     lighting   W     10-20       0.0      0.0       0.50       0.50
sunday      9  Lights     lighting   W     20-24      60.0      0.0       0.50       0.50
sunday     10  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
 
### Zone 2: kiten_util
 
Zone kiten_util ( 2) is composed of 43 surfaces and 75 vertices.
It encloses a volume of 103. m^3^ of space, with a total surface
area of 162. m^2^ & approx floor area of 32.3 m^2^.
kiten_util describes the kitchen utility and alcove.  
There is 16.681 m^2^ of exposed surface area, 16.681 m^2^ of which is vertical.
Facade opaque is 13.261 m^2^ &  41.0 % of floor area & average U of 1.559 & UA of 20.678.
Facade glazing is 3.4200 m^2^ &  10.6 % of floor &  20.5 % facade with average U of 2.877 & UA of 9.8384.  
Opaque partitions:ceiling:floor 110.36 m^2^.  
 
: A summary of the surfaces in kiten_util( 2)
 
ID   Area (m^2^)  Azimuth   Elevation  Name          Optics        Location  Use primary  Use detail  Construction name    Environment other side
---  -----------  --------  ---------  ------------  ------------  --------  -----------  ----------  -------------------  ----------------------
  1  15.0         180.        0.       ptn_adj       OPAQUE        VERT      -            -           masonry0.3           SIMILAR
  2  7.04          90.        0.       ptn_wdra      OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  3  5.76         180.        0.       ptn_wrdb      OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  4  7.04          90.        0.       ptn_br1       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  5  3.87           0.        0.       ptn_hall      OPAQUE        VERT      -            -           door                 ANOTHER
  6  1.80           0.        0.       k_ptn_b       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
  7  9.00           0.        0.       k_ptn_c       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
  8  2.40          90.        0.       k_ptn_d       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
  9  9.60           0.        0.       u_ptn_e       OPAQUE        VERT      -            -           masonry0.3           SIMILAR
 10  7.20         270.        0.       u_ptn_f       OPAQUE        VERT      -            -           masonry0.3           SIMILAR
 11  1.20         270.        0.       stone_ct      OPAQUE        VERT      -            -           masonry0.3           SIMILAR
 12  0.200        180.        0.       sill_h        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 13  1.70         135.        0.       angl_i        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 14  3.00         180.        0.       stone_ctb     OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 15  2.40         270.        0.       stone_ctc     OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 16  1.34         333.        0.       angle_l       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 17  0.750        270.        0.       sill_m        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 18  1.50         217.        0.       angle_n       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 19  32.3           0.       90.       ceiling       OPAQUE        CEIL      -            -           ceil_to_roof         ANOTHER
 20  32.3           0.      -90.       floor_ku      OPAQUE        FLOR      -            -           floor_to_cli         ANOTHER
 21  3.00          90.        0.       fin           OPAQUE        VERT      -            -           mass_part            ANOTHER
 22  3.00         270.        0.       fin_          OPAQUE        VERT      -            -           mass_part            ANOTHER
 23  1.000        180.        0.       skirt_a       OPAQUE        VERT      -            -           masonry0.3           SIMILAR
 24  0.120          0.        0.       skirt_b       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 25  0.600          0.        0.       skirt_c       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 26  0.160         90.        0.       skirt_d       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 27  0.640          0.        0.       skirt_e       OPAQUE        VERT      -            -           masonry0.3           SIMILAR
 28  0.480        270.        0.       skirt_f       OPAQUE        VERT      -            -           masonry0.3           SIMILAR
 29  0.080        270.        0.       skirt_g       OPAQUE        VERT      -            -           masonry0.3           SIMILAR
 30  0.080        180.        0.       skirt_h       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 31  0.113        135.        0.       skirt_i       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 32  0.200        180.        0.       skirt_j       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 33  0.160        270.        0.       skirt_k       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 34  0.089        333.        0.       skirt_l       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 35  0.300        270.        0.       skirt_m       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 36  0.100        217.        0.       skirt_n       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 37  0.900        270.        0.       frame_m       OPAQUE        VERT      -            -           sash_frame           EXTERIOR
 38  0.150        270.        0.       head_m        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 39  0.240        180.        0.       frame_h       OPAQUE        VERT      -            -           sash_frame           EXTERIOR
 40  0.040        180.        0.       head_h        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 41  2.70         270.        0.       glass_m       DC_8074_      VERT      -            -           Window_ext           EXTERIOR
 42  0.720        180.        0.       glass_h       DC_8074_      VERT      -            -           Window_ext           EXTERIOR
 43  1.89           0.        0.       door_k        OPAQUE        VERT      -            -           door                 ANOTHER
 
 
An hourly solar radiation distribution is used for this zone.  
Insolation sources (all applicable) 
glass_m glass_h  
 
 
 Shading patterns have been calculated for this zone.
 
 
Schedule notes 
There is 1.5 ach infiltration all hours and overheating control if over 23 or 25C.
domestic kitchen with 1-2 occupant 7-9h 12-13h 16-20h. 80 W lighting morning and evening.
Flow control infil only: zone temp  
 Control Setpoint  Infiltration     Ventilation    Source  temp
 range             ac/h   m^3/s     ac/h   m^3/s   index   degC
 Lower    10.00    1.500  0.0431     0.000  0.0000    0     0.000
 Nominal between 10.0 &  23.0 based on period data.
 Middle   23.00    3.000  0.0862     0.000  0.0000    0     0.000
 High     25.00    4.000  0.1150     0.000  0.0000    0     0.000
 
Scheduled air infiltration and ventilation  
 
Day type  ID  Hours   Infil. (ac/h)  Infil. (m^3^/s)  Vent. (ac/h)  Vent. (m^3^/s)  From zone  Source DegC
--------  --  ------  -------------  ---------------  ------------  --------------  ---------  -----------
weekdays   1  0 - 24    1.50          0.0431            0.00          0.0000          0         0.00
saturday   1  0 - 24    1.50          0.0431            0.00          0.0000          0         0.00
sunday     1  0 - 24    1.50          0.0431            0.00          0.0000          0         0.00
 
 
Daytype   ID   Label      Type       Unit  Hours  Sens.(W)  Late.(W)   Rad. Frac   Con. Frac
--------  ---  ---------  ---------  ----  -----  --------  --------   ---------   ---------
weekdays    1  Occupt     people     W      0- 7       0.0      0.0       0.50       0.50
weekdays    2  Occupt     people     W      7- 9     150.0     75.0       0.50       0.50
weekdays    3  Occupt     people     W      9-12       0.0      0.0       0.50       0.50
weekdays    4  Occupt     people     W     12-13     100.0     50.0       0.50       0.50
weekdays    5  Occupt     people     W     13-16       0.0      0.0       0.50       0.50
weekdays    6  Occupt     people     W     16-20     150.0     75.0       0.50       0.50
weekdays    7  Occupt     people     W     20-24       0.0      0.0       0.50       0.50
weekdays    8  Lights     lighting   W      0- 6      10.0      0.0       0.50       0.50
weekdays    9  Lights     lighting   W      6- 8      80.0      0.0       0.50       0.50
weekdays   10  Lights     lighting   W      8-18       0.0      0.0       0.50       0.50
weekdays   11  Lights     lighting   W     18-24      80.0      0.0       0.50       0.50
weekdays   12  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
saturday    1  Occupt     people     W      0- 7       0.0      0.0       0.50       0.50
saturday    2  Occupt     people     W      7- 9     200.0    100.0       0.50       0.50
saturday    3  Occupt     people     W      9-12       0.0      0.0       0.50       0.50
saturday    4  Occupt     people     W     12-14     100.0     50.0       0.50       0.50
saturday    5  Occupt     people     W     14-16       0.0      0.0       0.50       0.50
saturday    6  Occupt     people     W     16-20     150.0     75.0       0.50       0.50
saturday    7  Occupt     people     W     20-24       0.0      0.0       0.50       0.50
saturday    8  Lights     lighting   W      0- 7      10.0      0.0       0.50       0.50
saturday    9  Lights     lighting   W      7- 9      80.0      0.0       0.50       0.50
saturday   10  Lights     lighting   W      9-18       0.0      0.0       0.50       0.50
saturday   11  Lights     lighting   W     18-24      80.0      0.0       0.50       0.50
saturday   12  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
sunday      1  Occupt     people     W      0- 7       0.0      0.0       0.50       0.50
sunday      2  Occupt     people     W      7- 9     150.0     75.0       0.50       0.50
sunday      3  Occupt     people     W      9-12       0.0      0.0       0.50       0.50
sunday      4  Occupt     people     W     12-14     200.0    100.0       0.50       0.50
sunday      5  Occupt     people     W     14-16       0.0      0.0       0.50       0.50
sunday      6  Occupt     people     W     16-20     150.0     75.0       0.50       0.50
sunday      7  Occupt     people     W     20-24       0.0      0.0       0.50       0.50
sunday      8  Lights     lighting   W      0- 8      20.0      0.0       0.50       0.50
sunday      9  Lights     lighting   W      8- 9      80.0      0.0       0.50       0.50
sunday     10  Lights     lighting   W      9-18       0.0      0.0       0.50       0.50
sunday     11  Lights     lighting   W     18-24      60.0      0.0       0.50       0.50
sunday     12  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
 
### Zone 3: bedroom1
 
Zone bedroom1 ( 3) is composed of 40 surfaces and 79 vertices.
It encloses a volume of 106. m^3^ of space, with a total surface
area of 152. m^2^ & approx floor area of 33.0 m^2^.
bedroom1 describes bedroom 1 and wardrobe.  
There is 17.709 m^2^ of exposed surface area, 17.709 m^2^ of which is vertical.
Facade opaque is 11.294 m^2^ &  34.2 % of floor area & average U of 1.798 & UA of 20.305.
Facade glazing is 6.4149 m^2^ &  19.5 % of floor &  36.2 % facade with average U of 2.877 & UA of 18.454.  
Opaque partitions:ceiling:floor 110.37 m^2^.  
 
: A summary of the surfaces in bedroom1( 3)
 
ID   Area (m^2^)  Azimuth   Elevation  Name          Optics        Location  Use primary  Use detail  Construction name    Environment other side
---  -----------  --------  ---------  ------------  ------------  --------  -----------  ----------  -------------------  ----------------------
  1  5.40         180.        0.       ptn_adja      OPAQUE        VERT      -            -           masonry0.3           SIMILAR
  2  17.4         180.        0.       ptn_adjb      OPAQUE        VERT      -            -           masonry0.3           SIMILAR
  3  0.600         90.        0.       fill_a        OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
  4  1.34         153.        0.       fill_b        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  5  0.450        136.        0.       sill_d        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  6  0.697        131.        0.       column_e      OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  7  0.882         89.        0.       sill_f        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  8  0.553         58.        0.       column_g      OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  9  0.450         46.        0.       sill_h        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 10  1.52          28.        0.       angle_i       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 11  1.20          90.        0.       fill_j        OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 12  10.9           0.        0.       ptn_batha     OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 13  3.84           0.        0.       ptn_bathb     OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 14  3.84           0.        0.       ptn_hall      OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 15  7.04         270.        0.       ptn_kita      OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 16  5.76         360.        0.       ptn_kitb      OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 17  7.04         270.        0.       ptn_kitc      OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 18  33.0           0.       90.       ceiling_br1   OPAQUE        CEIL      -            -           ceil_to_roof         ANOTHER
 19  33.0           0.      -90.       floor_br1     OPAQUE        FLOR      -            -           floor_to_cli         ANOTHER
 20  3.00          90.        0.       fin           OPAQUE        VERT      -            -           mass_part            ANOTHER
 21  3.00         270.        0.       fin_          OPAQUE        VERT      -            -           mass_part            ANOTHER
 22  1.52         180.        0.       skir_a        OPAQUE        VERT      -            -           masonry0.3           SIMILAR
 23  0.040         90.        0.       skir_b        OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 24  0.089        153.        0.       skir_c        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 25  0.180        136.        0.       skir_d        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 26  0.046        131.        0.       skir_e        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 27  0.353         89.        0.       skir_f        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 28  0.037         58.        0.       skir_g        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 29  0.180         46.        0.       skir_h        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 30  0.101         28.        0.       skir_i        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 31  0.080         90.        0.       skir_k        OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 32  0.090        136.        0.       head_d        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 33  0.176         89.        0.       head_f        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 34  0.090         46.        0.       head_h        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 35  0.540        136.       -0.       frame_d       OPAQUE        VERT      -            -           sash_frame           EXTERIOR
 36  1.06          89.        0.       frame_f       OPAQUE        VERT      -            -           sash_frame           EXTERIOR
 37  0.540         46.        0.       frame_h       OPAQUE        VERT      -            -           sash_frame           EXTERIOR
 38  1.62         136.        0.       glass_d       DC_8074_      VERT      -            -           Window_ext           EXTERIOR
 39  3.18          89.        0.       glass_f       DC_8074_      VERT      -            -           Window_ext           EXTERIOR
 40  1.62          46.        0.       glass_h       DC_8074_      VERT      -            -           Window_ext           EXTERIOR
 
 
An hourly solar radiation distribution is used for this zone.  
Insolation sources (all applicable) 
glass_d glass_f glass_h  
 
 
 Shading patterns have been calculated for this zone.
 
 Uses same operations as zone guest_room
 
### Zone 4: bath
 
Zone bath ( 4) is composed of 17 surfaces and 31 vertices.
It encloses a volume of 18.8 m^3^ of space, with a total surface
area of 45.6 m^2^ & approx floor area of 5.86 m^2^.
bath describes long thin bathroom.  
There is 7.0400 m^2^ of exposed surface area, 7.0400 m^2^ of which is vertical.
Facade opaque is 5.6720 m^2^ &  96.8 % of floor area & average U of 1.474 & UA of 8.3630.
Facade glazing is 1.3680 m^2^ &  23.3 % of floor &  19.4 % facade with average U of 2.877 & UA of 3.9353.  
Opaque partitions:ceiling:floor 38.600 m^2^.  
 
: A summary of the surfaces in bath( 4)
 
ID   Area (m^2^)  Azimuth   Elevation  Name          Optics        Location  Use primary  Use detail  Construction name    Environment other side
---  -----------  --------  ---------  ------------  ------------  --------  -----------  ----------  -------------------  ----------------------
  1  10.9         180.        0.       ptn_br1       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  2  1.20          90.        0.       fill_a        OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
  3  1.20         180.        0.       angle_b       OPAQUE        VERT      -            -           stone_0.9m           EXTERIOR
  4  0.810         90.        0.       sill_c        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  5  1.50          37.        0.       angle_d       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  6  10.9           0.        0.       ptn_br2       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  7  3.44         270.        0.       ptn_hall      OPAQUE        VERT      -            -           door                 ANOTHER
  8  5.86           0.       90.       ceiling_bth   OPAQUE        CEIL      -            -           ceil_to_roof         ANOTHER
  9  5.86           0.      -90.       floor_bth     OPAQUE        FLOR      -            -           floor_to_cli         ANOTHER
 10  0.080         90.        0.       skirt_a       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 11  0.080        180.        0.       skirt_b       OPAQUE        VERT      -            -           stone_0.9m           EXTERIOR
 12  0.180         90.        0.       skirt_c       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 13  0.100         37.        0.       skirt_d       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 14  0.432         90.        0.       frame_c       OPAQUE        VERT      -            -           sash_frame           EXTERIOR
 15  0.090         90.        0.       head_c        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 16  1.37          90.       -0.       glass_c       DC_8074_      VERT      -            -           Window_ext           EXTERIOR
 17  1.68         270.        0.       door_bath     OPAQUE        VERT      -            -           door                 ANOTHER
 
 
An hourly solar radiation distribution is used for this zone.  
Insolation sources (all applicable) 
glass_c  
 
 
 Shading patterns have been calculated for this zone.
 
 
Schedule notes 
There is 1.5 ach infiltration all hours with overheating control if over 23 or 25C.
domestic bathroom with 1 occupant 7-9h 18-20h. 60 W lighting morning and evening.
Flow control infil only: zone temp  
 Control Setpoint  Infiltration     Ventilation    Source  temp
 range             ac/h   m^3/s     ac/h   m^3/s   index   degC
 Lower    10.00    1.500  0.0078     0.000  0.0000    0     0.000
 Nominal between 10.0 &  23.0 based on period data.
 Middle   23.00    3.000  0.0156     0.000  0.0000    0     0.000
 High     25.00    4.000  0.0208     0.000  0.0000    0     0.000
 
Scheduled air infiltration and ventilation  
 
Day type  ID  Hours   Infil. (ac/h)  Infil. (m^3^/s)  Vent. (ac/h)  Vent. (m^3^/s)  From zone  Source DegC
--------  --  ------  -------------  ---------------  ------------  --------------  ---------  -----------
weekdays   1  0 - 24    1.50          0.0078            0.00          0.0000          0         0.00
saturday   1  0 - 24    1.50          0.0078            0.00          0.0000          0         0.00
sunday     1  0 - 24    1.50          0.0078            0.00          0.0000          0         0.00
 
 
Daytype   ID   Label      Type       Unit  Hours  Sens.(W)  Late.(W)   Rad. Frac   Con. Frac
--------  ---  ---------  ---------  ----  -----  --------  --------   ---------   ---------
weekdays    1  Occupt     people     W      0- 7       0.0      0.0       0.50       0.50
weekdays    2  Occupt     people     W      7- 9      60.0     60.0       0.50       0.50
weekdays    3  Occupt     people     W      9-16       0.0      0.0       0.50       0.50
weekdays    4  Occupt     people     W     16-20      60.0     60.0       0.50       0.50
weekdays    5  Occupt     people     W     20-24       0.0      0.0       0.50       0.50
weekdays    6  Lights     lighting   W      0- 6      10.0      0.0       0.50       0.50
weekdays    7  Lights     lighting   W      6- 8      60.0      0.0       0.50       0.50
weekdays    8  Lights     lighting   W      8-18       0.0      0.0       0.50       0.50
weekdays    9  Lights     lighting   W     18-24      60.0      0.0       0.50       0.50
weekdays   10  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
saturday    1  Occupt     people     W      0- 7       0.0      0.0       0.50       0.50
saturday    2  Occupt     people     W      7- 9      60.0     60.0       0.50       0.50
saturday    3  Occupt     people     W      9-17       0.0      0.0       0.50       0.50
saturday    4  Occupt     people     W     17-20      60.0     75.0       0.50       0.50
saturday    5  Occupt     people     W     20-24       0.0      0.0       0.50       0.50
saturday    6  Lights     lighting   W      0- 7      10.0      0.0       0.50       0.50
saturday    7  Lights     lighting   W      7- 9      60.0      0.0       0.50       0.50
saturday    8  Lights     lighting   W      9-18       0.0      0.0       0.50       0.50
saturday    9  Lights     lighting   W     18-24      60.0      0.0       0.50       0.50
saturday   10  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
sunday      1  Occupt     people     W      0- 8       0.0      0.0       0.50       0.50
sunday      2  Occupt     people     W      8- 9      50.0     75.0       0.50       0.50
sunday      3  Occupt     people     W      9-17       0.0      0.0       0.50       0.50
sunday      4  Occupt     people     W     17-20     150.0     75.0       0.50       0.50
sunday      5  Occupt     people     W     20-24       0.0      0.0       0.50       0.50
sunday      6  Lights     lighting   W      0- 9      20.0      0.0       0.50       0.50
sunday      7  Lights     lighting   W      9-10      80.0      0.0       0.50       0.50
sunday      8  Lights     lighting   W     10-18       0.0      0.0       0.50       0.50
sunday      9  Lights     lighting   W     18-24      60.0      0.0       0.50       0.50
sunday     10  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
 
### Zone 5: bedroom2
 
Zone bedroom2 ( 5) is composed of 20 surfaces and 39 vertices.
It encloses a volume of 57.3 m^3^ of space, with a total surface
area of 91.2 m^2^ & approx floor area of 17.9 m^2^.
bedroom2 describes east facing bedroom.  
There is 13.742 m^2^ of exposed surface area, 13.742 m^2^ of which is vertical.
Facade opaque is 12.122 m^2^ &  67.6 % of floor area & average U of 1.427 & UA of 17.300.
Facade glazing is 1.6200 m^2^ &   9.0 % of floor &  11.8 % facade with average U of 2.877 & UA of 4.6602.  
Opaque partitions:ceiling:floor 77.440 m^2^.  
 
: A summary of the surfaces in bedroom2( 5)
 
ID   Area (m^2^)  Azimuth   Elevation  Name          Optics        Location  Use primary  Use detail  Construction name    Environment other side
---  -----------  --------  ---------  ------------  ------------  --------  -----------  ----------  -------------------  ----------------------
  1  10.9         180.        0.       ptn_bath      OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  2  3.00          90.        0.       east_a        OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
  3  0.089        153.        0.       skirt_b       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  4  0.180         90.        0.       skirt_c       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  5  0.089         27.        0.       skirt_d       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  6  4.50          90.        0.       east_e        OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
  7  14.7         360.        0.       ptn_liv       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  8  10.3         270.        0.       ptn_hall      OPAQUE        VERT      -            -           door                 ANOTHER
  9  3.84         180.        0.       ptn_hallb     OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 10  17.9           0.       90.       ceiling_b2    OPAQUE        CEIL      -            -           ceil_to_roof         ANOTHER
 11  17.9           0.      -90.       floor_b2      OPAQUE        FLOR      -            -           floor_to_cli         ANOTHER
 12  0.200         90.        0.       skirt_a       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 13  0.300         90.        0.       skirt_e       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 14  1.34         153.        0.       angl_b        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 15  0.450         90.        0.       sill_c        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 16  0.540         90.        0.       frame_c       OPAQUE        VERT      -            -           sash_frame           EXTERIOR
 17  0.090         90.        0.       head_c        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 18  1.34          27.        0.       angle_d       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 19  1.62          90.        0.       glass_c       DC_8074_      VERT      -            -           Window_ext           EXTERIOR
 20  1.89         270.        0.       door_br2      OPAQUE        VERT      -            -           door                 ANOTHER
 
 
An hourly solar radiation distribution is used for this zone.  
Insolation sources (all applicable) 
glass_c  
 
 
 Shading patterns have been calculated for this zone.
 
 Uses same operations as zone guest_room
 
### Zone 6: living
 
Zone living ( 6) is composed of 34 surfaces and 64 vertices.
It encloses a volume of 89.4 m^3^ of space, with a total surface
area of 123. m^2^ & approx floor area of 27.9 m^2^.
living describes corner living room.  
There is 35.435 m^2^ of exposed surface area, 35.435 m^2^ of which is vertical.
Facade opaque is 29.217 m^2^ & 104.6 % of floor area & average U of 1.468 & UA of 42.898.
Facade glazing is 6.2180 m^2^ &  22.3 % of floor &  17.5 % facade with average U of 2.877 & UA of 17.887.  
Opaque partitions:ceiling:floor 87.877 m^2^.  
 
: A summary of the surfaces in living( 6)
 
ID   Area (m^2^)  Azimuth   Elevation  Name          Optics        Location  Use primary  Use detail  Construction name    Environment other side
---  -----------  --------  ---------  ------------  ------------  --------  -----------  ----------  -------------------  ----------------------
  1  14.7         180.        0.       ptn_br2       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  2  1.70         135.        0.       angle_a       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  3  0.450        143.        0.       sill_b        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  4  0.816        107.        0.       column_c      OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  5  0.800         90.        0.       sill_d        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  6  0.801         71.        0.       column_e      OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  7  0.477         44.        0.       sill_f        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  8  1.54          33.        0.       angle_g       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  9  0.600         90.        0.       ne_corner     OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 10  17.4           0.        0.       north         OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 11  10.2         270.        0.       ptn_study     OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 12  3.20         270.        0.       ptn_halla     OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 13  2.16         180.        0.       ptn_hallb     OPAQUE        VERT      -            -           door                 ANOTHER
 14  27.9           0.       90.       ceiling_liv   OPAQUE        CEIL      -            -           ceil_to_roof         ANOTHER
 15  27.9           0.      -90.       floor_liv     OPAQUE        FLOR      -            -           floor_to_cli         ANOTHER
 16  0.113        135.        0.       skirt_a       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 17  0.180        143.        0.       skirt_b       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 18  0.054        107.        0.       skirt_c       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 19  0.320         90.        0.       skirt_d       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 20  0.053         71.        0.       skirt_e       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 21  0.191         44.        0.       skirt_f       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 22  0.103         33.        0.       skirt_g       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 23  0.040         90.        0.       skirt_h       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 24  1.16           0.        0.       skirt_i       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 25  0.540        143.        0.       frame_b       OPAQUE        VERT      -            -           sash_frame           EXTERIOR
 26  0.090        143.        0.       head_b        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 27  0.960         90.       -0.       frame_d       OPAQUE        VERT      -            -           sash_frame           EXTERIOR
 28  0.160         90.        0.       head_d        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 29  0.573         44.        0.       frame_f       OPAQUE        VERT      -            -           sash_frame           EXTERIOR
 30  0.095         44.        0.       head_f        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 31  1.62         143.        0.       glass_b       DC_8074_      VERT      -            -           Window_ext           EXTERIOR
 32  2.88          90.        0.       glass_d       DC_8074_      VERT      -            -           Window_ext           EXTERIOR
 33  1.72          44.        0.       glass_f       DC_8074_      VERT      -            -           Window_ext           EXTERIOR
 34  1.68         180.        0.       door_liv      OPAQUE        VERT      -            -           door                 ANOTHER
 
 
An hourly solar radiation distribution is used for this zone.  
Insolation sources (all applicable) 
glass_b glass_d glass_f  
 
 
 Shading patterns have been calculated for this zone.
 
 
Schedule notes 
There is 1.5 ach infiltration all days and all hours with overheating control if over 23 or 25C.
living is occupied in early evening weekends, 2 persons and a TV and light.
Flow control infil only: zone temp  
 Control Setpoint  Infiltration     Ventilation    Source  temp
 range             ac/h   m^3/s     ac/h   m^3/s   index   degC
 Lower    10.00    1.500  0.0373     0.000  0.0000    0     0.000
 Nominal between 10.0 &  23.0 based on period data.
 Middle   23.00    3.000  0.0745     0.000  0.0000    0     0.000
 High     25.00    4.000  0.0993     0.000  0.0000    0     0.000
 
Scheduled air infiltration and ventilation  
 
Day type  ID  Hours   Infil. (ac/h)  Infil. (m^3^/s)  Vent. (ac/h)  Vent. (m^3^/s)  From zone  Source DegC
--------  --  ------  -------------  ---------------  ------------  --------------  ---------  -----------
weekdays   1  0 - 24    1.50          0.0373            0.00          0.0000          0         0.00
saturday   1  0 - 24    1.50          0.0373            0.00          0.0000          0         0.00
sunday     1  0 - 24    1.50          0.0373            0.00          0.0000          0         0.00
 
 
Daytype   ID   Label      Type       Unit  Hours  Sens.(W)  Late.(W)   Rad. Frac   Con. Frac
--------  ---  ---------  ---------  ----  -----  --------  --------   ---------   ---------
weekdays    1  Occupt     people     W      0-18       0.0      0.0       0.50       0.50
weekdays    2  Occupt     people     W     18-22      50.0     25.0       0.50       0.50
weekdays    3  Occupt     people     W     22-24       0.0      0.0       0.50       0.50
weekdays    4  Lights     lighting   W      0-18       0.0      0.0       0.50       0.50
weekdays    5  Lights     lighting   W     18-23      60.0      0.0       0.50       0.50
weekdays    6  Lights     lighting   W     23-24       0.0      0.0       0.50       0.50
weekdays    7  Equipt     equipment  W      0-19      10.0      0.0       0.50       0.50
weekdays    8  Equipt     equipment  W     19-23     100.0      0.0       0.50       0.50
weekdays    9  Equipt     equipment  W     23-24      80.0      0.0       0.50       0.50
saturday    1  Occupt     people     W      0-19       0.0      0.0       0.50       0.50
saturday    2  Occupt     people     W     19-23     200.0    100.0       0.50       0.50
saturday    3  Occupt     people     W     23-24       0.0      0.0       0.50       0.50
saturday    4  Lights     lighting   W      0-18       0.0      0.0       0.50       0.50
saturday    5  Lights     lighting   W     18-23     120.0      0.0       0.50       0.50
saturday    6  Lights     lighting   W     23-24       0.0      0.0       0.50       0.50
saturday    7  Equipt     equipment  W      0-19      10.0      0.0       0.50       0.50
saturday    8  Equipt     equipment  W     19-23     150.0      0.0       0.50       0.50
saturday    9  Equipt     equipment  W     23-24      50.0      0.0       0.50       0.50
sunday      1  Occupt     people     W      0-19       0.0      0.0       0.50       0.50
sunday      2  Occupt     people     W     19-20     100.0     50.0       0.50       0.50
sunday      3  Occupt     people     W     20-24       0.0      0.0       0.50       0.50
sunday      4  Lights     lighting   W      0-18       0.0      0.0       0.50       0.50
sunday      5  Lights     lighting   W     18-20      80.0      0.0       0.50       0.50
sunday      6  Lights     lighting   W     20-24       0.0      0.0       0.50       0.50
sunday      7  Equipt     equipment  W      0-20      20.0      0.0       0.50       0.50
sunday      8  Equipt     equipment  W     20-23     100.0      0.0       0.50       0.50
sunday      9  Equipt     equipment  W     23-24      40.0      0.0       0.50       0.50
 
### Zone 7: hall
 
Zone hall ( 7) is composed of 28 surfaces and 60 vertices.
It encloses a volume of 67.2 m^3^ of space, with a total surface
area of 114. m^2^ & approx floor area of 21.0 m^2^.
hall describes corridor within the flat.  
Opaque partitions:ceiling:floor 113.68 m^2^.  
 
: A summary of the surfaces in hall( 7)
 
ID   Area (m^2^)  Azimuth   Elevation  Name          Optics        Location  Use primary  Use detail  Construction name    Environment other side
---  -----------  --------  ---------  ------------  ------------  --------  -----------  ----------  -------------------  ----------------------
  1  3.87         180.        0.       hptn_kit      OPAQUE        VERT      -            -           door                 ANOTHER
  2  3.84         180.        0.       hptn_br1a     OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  3  3.84         180.        0.       hptn_br1b     OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  4  3.44          90.        0.       hptn_bath     OPAQUE        VERT      -            -           door                 ANOTHER
  5  3.84           0.        0.       hptn_br2a     OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  6  10.3          90.       -0.       hptn_br2b     OPAQUE        VERT      -            -           door                 ANOTHER
  7  2.16           0.        0.       hptn_livb     OPAQUE        VERT      -            -           door                 ANOTHER
  8  3.20          90.        0.       hptn_liva     OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  9  4.08           0.        0.       hptn_study    OPAQUE        VERT      -            -           door                 ANOTHER
 10  2.59         270.        0.       hptn_fam      OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 11  4.80         270.        0.       ptn_a         OPAQUE        VERT      -            -           door                 ANOTHER
 12  1.80         360.        0.       ptn_b         OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 13  5.40         270.        0.       ptn_c         OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 14  1.80         180.        0.       ptn_d         OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 15  4.80         270.        0.       ptn_e         OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 16  21.0           0.       90.       ceiling_hall  OPAQUE        CEIL      -            -           ceil_to_roof         ANOTHER
 17  21.0           0.      -90.       floor_hall    OPAQUE        FLOR      -            -           floor_to_cli         ANOTHER
 18  0.320        270.        0.       skirt_a       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 19  0.120          0.        0.       skirt_b       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 20  0.360        270.        0.       skirt_c       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 21  0.120        180.        0.       skirt_d       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 22  0.320        270.        0.       skirt_e       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 23  1.89         180.        0.       door_k        OPAQUE        VERT      -            -           door                 ANOTHER
 24  1.68           0.        0.       door_st       OPAQUE        VERT      -            -           door                 ANOTHER
 25  1.68          90.        0.       door_bath     OPAQUE        VERT      -            -           door                 ANOTHER
 26  1.68           0.        0.       door_liv      OPAQUE        VERT      -            -           door                 ANOTHER
 27  1.89         270.        0.       door_fam      OPAQUE        VERT      -            -           door                 ANOTHER
 28  1.89          90.        0.       door_br2      OPAQUE        VERT      -            -           door                 ANOTHER
 
 
All surfaces will receive diffuse insolation (if shading not calculated).  
No shading analysis requested.  
No insolation analysis requested.  
 
 
Schedule notes 
There is 1 ach infiltration all hours.
hallway with 1/2 occupant 7-9h 12-14h 16-20h. 60 W lighting morning and evening.
Flow control no control of air flow  
 
Scheduled air infiltration and ventilation  
 
Day type  ID  Hours   Infil. (ac/h)  Infil. (m^3^/s)  Vent. (ac/h)  Vent. (m^3^/s)  From zone  Source DegC
--------  --  ------  -------------  ---------------  ------------  --------------  ---------  -----------
weekdays   1  0 - 24    1.00          0.0187            0.00          0.0000          0         0.00
saturday   1  0 - 24    1.00          0.0187            0.00          0.0000          0         0.00
sunday     1  0 - 24    1.00          0.0187            0.00          0.0000          0         0.00
 
 
Daytype   ID   Label      Type       Unit  Hours  Sens.(W)  Late.(W)   Rad. Frac   Con. Frac
--------  ---  ---------  ---------  ----  -----  --------  --------   ---------   ---------
weekdays    1  Occupt     people     W      0- 7       0.0      0.0       0.50       0.50
weekdays    2  Occupt     people     W      7- 9      50.0     25.0       0.50       0.50
weekdays    3  Occupt     people     W      9-12       0.0      0.0       0.50       0.50
weekdays    4  Occupt     people     W     12-14      50.0     25.0       0.50       0.50
weekdays    5  Occupt     people     W     14-16       0.0      0.0       0.50       0.50
weekdays    6  Occupt     people     W     16-20      50.0     25.0       0.50       0.50
weekdays    7  Occupt     people     W     20-24       0.0      0.0       0.50       0.50
weekdays    8  Lights     lighting   W      0- 8      60.0      0.0       0.50       0.50
weekdays    9  Lights     lighting   W      8-18       0.0      0.0       0.50       0.50
weekdays   10  Lights     lighting   W     18-24      60.0      0.0       0.50       0.50
weekdays   11  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
saturday    1  Occupt     people     W      0- 7       0.0      0.0       0.50       0.50
saturday    2  Occupt     people     W      7- 9      50.0     25.0       0.50       0.50
saturday    3  Occupt     people     W      9-12       0.0      0.0       0.50       0.50
saturday    4  Occupt     people     W     12-13      50.0     25.0       0.50       0.50
saturday    5  Occupt     people     W     13-16       0.0      0.0       0.50       0.50
saturday    6  Occupt     people     W     16-20      50.0     25.0       0.50       0.50
saturday    7  Occupt     people     W     20-24       0.0      0.0       0.50       0.50
saturday    8  Lights     lighting   W      0- 8      60.0      0.0       0.50       0.50
saturday    9  Lights     lighting   W      8-18       0.0      0.0       0.50       0.50
saturday   10  Lights     lighting   W     18-20      60.0      0.0       0.50       0.50
saturday   11  Lights     lighting   W     20-24      10.0      0.0       0.50       0.50
saturday   12  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
sunday      1  Occupt     people     W      0- 7       0.0      0.0       0.50       0.50
sunday      2  Occupt     people     W      7- 9      50.0     25.0       0.50       0.50
sunday      3  Occupt     people     W      9-12       0.0      0.0       0.50       0.50
sunday      4  Occupt     people     W     12-14      50.0     25.0       0.50       0.50
sunday      5  Occupt     people     W     14-16       0.0      0.0       0.50       0.50
sunday      6  Occupt     people     W     16-20      50.0     25.0       0.50       0.50
sunday      7  Occupt     people     W     20-24       0.0      0.0       0.50       0.50
sunday      8  Lights     lighting   W      0- 8      60.0      0.0       0.50       0.50
sunday      9  Lights     lighting   W      8-18       0.0      0.0       0.50       0.50
sunday     10  Lights     lighting   W     18-24      60.0      0.0       0.50       0.50
sunday     11  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
 
### Zone 8: study
 
Zone study ( 8) is composed of 19 surfaces and 34 vertices.
It encloses a volume of 19.6 m^3^ of space, with a total surface
area of 46.2 m^2^ & approx floor area of 6.12 m^2^.
study describes small north facing room.  
There is 7.7583 m^2^ of exposed surface area, 7.7583 m^2^ of which is vertical.
Facade opaque is 6.3191 m^2^ & 103.3 % of floor area & average U of 1.553 & UA of 9.8125.
Facade glazing is 1.4392 m^2^ &  23.5 % of floor &  18.6 % facade with average U of 2.877 & UA of 4.1402.  
Opaque partitions:ceiling:floor 38.480 m^2^.  
 
: A summary of the surfaces in study( 8)
 
ID   Area (m^2^)  Azimuth   Elevation  Name          Optics        Location  Use primary  Use detail  Construction name    Environment other side
---  -----------  --------  ---------  ------------  ------------  --------  -----------  ----------  -------------------  ----------------------
  1  4.08         180.        0.       sptn_hall     OPAQUE        VERT      -            -           door                 ANOTHER
  2  10.2          90.        0.       sptn_liv      OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  3  1.20           0.        0.       north_a       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
  4  1.24          75.        0.       angle_b       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  5  0.400          0.        0.       sill_c        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  6  1.23         283.        0.       angle_d       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  7  1.20           0.        0.       north_e       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
  8  10.2         270.        0.       sptn_fam      OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  9  6.12           0.       90.       ceiling_std   OPAQUE        CEIL      -            -           ceil_to_roof         ANOTHER
 10  6.12           0.      -90.       floor_std     OPAQUE        FLOR      -            -           floor_to_cli         ANOTHER
 11  0.080          0.        0.       skirt_a       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 12  0.083         75.        0.       skirt_b       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 13  0.160          0.        0.       skirt_c       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 14  0.082        283.        0.       skirt_d       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 15  0.080          0.        0.       skirt_e       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 16  0.480        360.        0.       frame_c       OPAQUE        VERT      -            -           sash_frame           EXTERIOR
 17  0.080          0.        0.       head_c        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 18  1.44           0.        0.       glass_c       DC_8074_      VERT      -            -           Window_ext           EXTERIOR
 19  1.68         180.        0.       door_st       OPAQUE        VERT      -            -           door                 ANOTHER
 
 
An hourly solar radiation distribution is used for this zone.  
Insolation sources (all applicable) 
glass_c  
 
 
 Shading patterns have been calculated for this zone.
 
 
Schedule notes 
There is 1.5 ach infiltration all days all hours with overheating window opening at 23 and 25C.
study is occupied in afternoon and early evening, 1 one person and a computer and task light.
Flow control infil only: zone temp  
 Control Setpoint  Infiltration     Ventilation    Source  temp
 range             ac/h   m^3/s     ac/h   m^3/s   index   degC
 Lower    10.00    1.500  0.0082     0.000  0.0000    0     0.000
 Nominal between 10.0 &  23.0 based on period data.
 Middle   23.00    3.000  0.0163     0.000  0.0000    0     0.000
 High     25.00    4.000  0.0218     0.000  0.0000    0     0.000
 
Scheduled air infiltration and ventilation  
 
Day type  ID  Hours   Infil. (ac/h)  Infil. (m^3^/s)  Vent. (ac/h)  Vent. (m^3^/s)  From zone  Source DegC
--------  --  ------  -------------  ---------------  ------------  --------------  ---------  -----------
weekdays   1  0 - 24    1.50          0.0082            0.00          0.0000          0         0.00
saturday   1  0 - 24    1.50          0.0082            0.00          0.0000          0         0.00
sunday     1  0 - 24    1.50          0.0082            0.00          0.0000          0         0.00
 
 
Daytype   ID   Label      Type       Unit  Hours  Sens.(W)  Late.(W)   Rad. Frac   Con. Frac
--------  ---  ---------  ---------  ----  -----  --------  --------   ---------   ---------
weekdays    1  Occupt     people     W      0-14       0.0      0.0       0.50       0.50
weekdays    2  Occupt     people     W     14-20     100.0     50.0       0.50       0.50
weekdays    3  Occupt     people     W     20-24       0.0      0.0       0.50       0.50
weekdays    4  Lights     lighting   W      0-18       0.0      0.0       0.50       0.50
weekdays    5  Lights     lighting   W     18-20      80.0      0.0       0.50       0.50
weekdays    6  Lights     lighting   W     20-24       0.0      0.0       0.50       0.50
weekdays    7  Equipt     equipment  W      0-19      20.0      0.0       0.50       0.50
weekdays    8  Equipt     equipment  W     19-22     120.0      0.0       0.50       0.50
weekdays    9  Equipt     equipment  W     22-24      20.0      0.0       0.50       0.50
saturday    1  Occupt     people     W      0-14       0.0      0.0       0.50       0.50
saturday    2  Occupt     people     W     14-20     100.0     50.0       0.50       0.50
saturday    3  Occupt     people     W     20-24       0.0      0.0       0.50       0.50
saturday    4  Lights     lighting   W      0-18       0.0      0.0       0.50       0.50
saturday    5  Lights     lighting   W     18-20      80.0      0.0       0.50       0.50
saturday    6  Lights     lighting   W     20-24       0.0      0.0       0.50       0.50
saturday    7  Equipt     equipment  W      0-19      20.0      0.0       0.50       0.50
saturday    8  Equipt     equipment  W     19-22     120.0      0.0       0.50       0.50
saturday    9  Equipt     equipment  W     22-24      20.0      0.0       0.50       0.50
sunday      1  Occupt     people     W      0-14       0.0      0.0       0.50       0.50
sunday      2  Occupt     people     W     14-20     100.0     50.0       0.50       0.50
sunday      3  Occupt     people     W     20-24       0.0      0.0       0.50       0.50
sunday      4  Lights     lighting   W      0-18       0.0      0.0       0.50       0.50
sunday      5  Lights     lighting   W     18-20      80.0      0.0       0.50       0.50
sunday      6  Lights     lighting   W     20-24       0.0      0.0       0.50       0.50
sunday      7  Equipt     equipment  W      0-19      50.0      0.0       0.50       0.50
sunday      8  Equipt     equipment  W     19-22     150.0      0.0       0.50       0.50
sunday      9  Equipt     equipment  W     22-24      50.0      0.0       0.50       0.50
 
### Zone 9: family
 
Zone family ( 9) is composed of 24 surfaces and 41 vertices.
It encloses a volume of 55.3 m^3^ of space, with a total surface
area of 88.6 m^2^ & approx floor area of 17.3 m^2^.
family describes family room on the north.  
There is 27.822 m^2^ of exposed surface area, 27.822 m^2^ of which is vertical.
Facade opaque is 24.942 m^2^ & 144.3 % of floor area & average U of 1.729 & UA of 43.115.
Facade glazing is 2.8800 m^2^ &  16.7 % of floor &  10.4 % facade with average U of 2.877 & UA of 8.2849.  
Opaque partitions:ceiling:floor 60.800 m^2^.  
 
: A summary of the surfaces in family( 9)
 
ID   Area (m^2^)  Azimuth   Elevation  Name          Optics        Location  Use primary  Use detail  Construction name    Environment other side
---  -----------  --------  ---------  ------------  ------------  --------  -----------  ----------  -------------------  ----------------------
  1  9.00         180.        0.       f_ptn_g       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
  2  1.80         180.        0.       f_ptn_h       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
  3  2.59          90.        0.       fptn_hall     OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  4  10.2          90.        0.       fptn_stdy     OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  5  3.00           0.        0.       north_a       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
  6  1.34          63.        0.       angle_b       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  7  0.800          0.        0.       sill_c        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  8  1.34         297.        0.       angle_d       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
  9  1.80           0.        0.       north_e       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 10  13.8         270.        0.       f_ptn_f       OPAQUE        VERT      -            -           masonry0.3           EXTERIOR
 11  17.3           0.       90.       ceiling_fam   OPAQUE        CEIL      -            -           ceil_to_roof         ANOTHER
 12  17.3           0.      -90.       floor_fam     OPAQUE        FLOR      -            -           floor_to_cli         ANOTHER
 13  0.200          0.        0.       skirt_a       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 14  0.089         63.        0.       skirt_b       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 15  0.320          0.        0.       skirt_c       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 16  0.089        297.        0.       skirt_d       OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 17  0.120          0.        0.       skirt_e       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 18  0.960        360.        0.       frame_c       OPAQUE        VERT      -            -           sash_frame           EXTERIOR
 19  0.160          0.        0.       head_c        OPAQUE        VERT      -            -           stone_0.4m           EXTERIOR
 20  0.920        270.        0.       skirt_f       OPAQUE        VERT      -            -           masonry0.3           EXTERIOR
 21  0.600        180.        0.       skirt_g       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 22  0.120        180.        0.       skirt_h       OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 23  2.88           0.        0.       glass_c       DC_8074_      VERT      -            -           Window_ext           EXTERIOR
 24  1.89          90.        0.       door_fam      OPAQUE        VERT      -            -           door                 ANOTHER
 
 
An hourly solar radiation distribution is used for this zone.  
Insolation sources (all applicable) 
glass_c  
 
 
 Shading patterns have been calculated for this zone.
 
 
Schedule notes 
There is 1.5 ach infiltration with overheating control if over 23 or 25C.
family is occupied in early evening, 2 persons and a computer and task light.
Flow control infil only: zone temp  
 Control Setpoint  Infiltration     Ventilation    Source  temp
 range             ac/h   m^3/s     ac/h   m^3/s   index   degC
 Lower    10.00    1.500  0.0230     0.000  0.0000    0     0.000
 Nominal between 10.0 &  23.0 based on period data.
 Middle   23.00    3.000  0.0461     0.000  0.0000    0     0.000
 High     25.00    4.000  0.0614     0.000  0.0000    0     0.000
 
Scheduled air infiltration and ventilation  
 
Day type  ID  Hours   Infil. (ac/h)  Infil. (m^3^/s)  Vent. (ac/h)  Vent. (m^3^/s)  From zone  Source DegC
--------  --  ------  -------------  ---------------  ------------  --------------  ---------  -----------
weekdays   1  0 - 24    1.50          0.0230            0.00          0.0000          0         0.00
saturday   1  0 - 24    1.50          0.0230            0.00          0.0000          0         0.00
sunday     1  0 - 24    1.50          0.0230            0.00          0.0000          0         0.00
 
 
Daytype   ID   Label      Type       Unit  Hours  Sens.(W)  Late.(W)   Rad. Frac   Con. Frac
--------  ---  ---------  ---------  ----  -----  --------  --------   ---------   ---------
weekdays    1  Occupt     people     W      0-18       0.0      0.0       0.50       0.50
weekdays    2  Occupt     people     W     18-22     200.0     50.0       0.50       0.50
weekdays    3  Occupt     people     W     22-24       0.0      0.0       0.50       0.50
weekdays    4  Lights     lighting   W      0-18       0.0      0.0       0.50       0.50
weekdays    5  Lights     lighting   W     18-23      80.0      0.0       0.50       0.50
weekdays    6  Lights     lighting   W     23-24       0.0      0.0       0.50       0.50
weekdays    7  Equipt     equipment  W      0-19      80.0      0.0       0.50       0.50
weekdays    8  Equipt     equipment  W     19-23     200.0      0.0       0.50       0.50
weekdays    9  Equipt     equipment  W     23-24      80.0      0.0       0.50       0.50
saturday    1  Occupt     people     W      0-19       0.0      0.0       0.50       0.50
saturday    2  Occupt     people     W     19-23     150.0     50.0       0.50       0.50
saturday    3  Occupt     people     W     23-24       0.0      0.0       0.50       0.50
saturday    4  Lights     lighting   W      0-18       0.0      0.0       0.50       0.50
saturday    5  Lights     lighting   W     18-23      80.0      0.0       0.50       0.50
saturday    6  Lights     lighting   W     23-24       0.0      0.0       0.50       0.50
saturday    7  Equipt     equipment  W      0-19      80.0      0.0       0.50       0.50
saturday    8  Equipt     equipment  W     19-23     200.0      0.0       0.50       0.50
saturday    9  Equipt     equipment  W     23-24      80.0      0.0       0.50       0.50
sunday      1  Occupt     people     W      0-14       0.0      0.0       0.50       0.50
sunday      2  Occupt     people     W     14-20     100.0     50.0       0.50       0.50
sunday      3  Occupt     people     W     20-24       0.0      0.0       0.50       0.50
sunday      4  Lights     lighting   W      0-18       0.0      0.0       0.50       0.50
sunday      5  Lights     lighting   W     18-20      80.0      0.0       0.50       0.50
sunday      6  Lights     lighting   W     20-24       0.0      0.0       0.50       0.50
sunday      7  Equipt     equipment  W      0-19      80.0      0.0       0.50       0.50
sunday      8  Equipt     equipment  W     19-23     200.0      0.0       0.50       0.50
sunday      9  Equipt     equipment  W     23-24      80.0      0.0       0.50       0.50
 
### Zone10: lower
 
Zone lower (10) is composed of 37 surfaces and 76 vertices.
It encloses a volume of 76.4 m^3^ of space, with a total surface
area of 255. m^2^ & approx floor area of 109. m^2^.
lower describes space below flat (crawl or another flat).  
There is 9.0629 m^2^ of exposed surface area, 9.0629 m^2^ of which is vertical.
Facade opaque is 9.0629 m^2^ &   8.3 % of floor area & average U of 1.255 & UA of 11.376.
Opaque partitions:ceiling:floor 121.28 m^2^.  
 
: A summary of the surfaces in lower(10)
 
ID   Area (m^2^)  Azimuth   Elevation  Name          Optics        Location  Use primary  Use detail  Construction name    Environment other side
---  -----------  --------  ---------  ------------  ------------  --------  -----------  ----------  -------------------  ----------------------
  1  16.9           0.       90.       floor_str     OPAQUE        CEIL      -            -           cl_to_floori         ANOTHER
  2  32.3           0.       90.       floor_ku      OPAQUE        CEIL      -            -           cl_to_floori         ANOTHER
  3  33.0           0.       90.       floor_br1     OPAQUE        CEIL      -            -           cl_to_floori         ANOTHER
  4  5.86           0.       90.       floor_bth     OPAQUE        CEIL      -            -           cl_to_floori         ANOTHER
  5  21.0           0.       90.       floor_hall    OPAQUE        CEIL      -            -           cl_to_floori         ANOTHER
  6  2.94         270.        0.       Wall-10       OPAQUE        VERT      -            -           pla_pla_ptn          SIMILAR
  7  2.24           0.        0.       Wall-11       OPAQUE        VERT      -            -           pla_pla_ptn          SIMILAR
  8  1.96         270.        0.       Wall-12       OPAQUE        VERT      -            -           pla_pla_ptn          SIMILAR
  9  0.280        180.        0.       Wall-13       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 10  0.396        135.        0.       Wall-14       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 11  0.700        180.        0.       Wall-15       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 12  0.560        270.        0.       Wall-16       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 13  0.313        333.        0.       Wall-17       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 14  1.05         270.        0.       Wall-18       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 15  0.350        217.        0.       Wall-19       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 16  8.82         180.        0.       Wall-20       OPAQUE        VERT      -            -           stone_0.7m           SIMILAR
 17  0.140         90.        0.       Wall-21       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 18  0.313        153.        0.       Wall-22       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 19  0.630        136.        0.       Wall-23       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 20  0.163        131.        0.       Wall-24       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 21  1.23          89.        0.       Wall-25       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 22  0.129         58.        0.       Wall-26       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 23  0.630         46.        0.       Wall-27       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 24  0.354         28.        0.       Wall-28       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 25  0.560         90.        0.       Wall-29       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 26  0.280        180.        0.       Wall-30       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 27  0.630         90.        0.       Wall-31       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 28  0.350         37.        0.       Wall-32       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 29  3.22           0.        0.       Wall-33       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 30  2.66          90.        0.       Wall-34       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 31  0.840          0.        0.       Wall-35       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 32  0.700         90.        0.       Wall-36       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 33  1.26           0.        0.       Wall-37       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 34  0.980        270.        0.       Wall-38       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 35  2.52           0.        0.       Wall-39       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 36  47.1           0.      -90.       Base-a        OPAQUE        FLOR      -            -           floor_to_cli         SIMILAR
 37  62.0           0.      -90.       Base-b        OPAQUE        FLOR      -            -           floor_to_cli         SIMILAR
 
 
All surfaces will receive diffuse insolation (if shading not calculated).  
No shading analysis requested.  
No insolation analysis requested.  
 
 
Schedule notes 
There is 1 ach infiltration all days and all hours
nothing happens in this zone in terms of occupants lights and small power.
Flow control no control of air flow  
 
Scheduled air infiltration and ventilation  
 
Day type  ID  Hours   Infil. (ac/h)  Infil. (m^3^/s)  Vent. (ac/h)  Vent. (m^3^/s)  From zone  Source DegC
--------  --  ------  -------------  ---------------  ------------  --------------  ---------  -----------
weekdays   1  0 - 24    1.00          0.0212            0.00          0.0000          0         0.00
saturday   1  0 - 24    1.00          0.0212            0.00          0.0000          0         0.00
sunday     1  0 - 24    1.00          0.0212            0.00          0.0000          0         0.00
 
 
Daytype   ID   Label      Type       Unit  Hours  Sens.(W)  Late.(W)   Rad. Frac   Con. Frac
--------  ---  ---------  ---------  ----  -----  --------  --------   ---------   ---------
weekdays    1  Occupt     people     W      0-24       0.0      0.0       0.50       0.50
weekdays    2  Lights     lighting   W      0-24       0.0      0.0       0.50       0.50
weekdays    3  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
saturday    1  Occupt     people     W      0-24       0.0      0.0       0.50       0.50
saturday    2  Lights     lighting   W      0-24       0.0      0.0       0.50       0.50
saturday    3  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
sunday      1  Occupt     people     W      0-24       0.0      0.0       0.50       0.50
sunday      2  Lights     lighting   W      0-24       0.0      0.0       0.50       0.50
sunday      3  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
 
### Zone11: lower_ne
 
Zone lower_ne (11) is composed of 38 surfaces and 66 vertices.
It encloses a volume of 48.5 m^3^ of space, with a total surface
area of 169. m^2^ & approx floor area of 69.3 m^2^.
lower_ne describes space below liv b2 study family.  
There is 15.321 m^2^ of exposed surface area, 15.321 m^2^ of which is vertical.
Facade opaque is 15.321 m^2^ &  22.1 % of floor area & average U of 1.255 & UA of 19.231.
Opaque partitions:ceiling:floor 81.439 m^2^.  
 
: A summary of the surfaces in lower_ne(11)
 
ID   Area (m^2^)  Azimuth   Elevation  Name          Optics        Location  Use primary  Use detail  Construction name    Environment other side
---  -----------  --------  ---------  ------------  ------------  --------  -----------  ----------  -------------------  ----------------------
  1  17.3           0.       90.       floor_fam     OPAQUE        CEIL      -            -           cl_to_floori         ANOTHER
  2  6.12           0.       90.       floor_std     OPAQUE        CEIL      -            -           cl_to_floori         ANOTHER
  3  27.9           0.       90.       floor_liv     OPAQUE        CEIL      -            -           cl_to_floori         ANOTHER
  4  17.9           0.       90.       floor_b2      OPAQUE        CEIL      -            -           cl_to_floori         ANOTHER
  5  3.22         180.        0.       Wall-33       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  6  2.66         270.        0.       Wall-34       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  7  0.840        180.        0.       Wall-35       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  8  0.700        270.        0.       Wall-36       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  9  1.26         180.        0.       Wall-37       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 10  0.980         90.        0.       Wall-38       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 11  2.52         180.        0.       Wall-39       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 12  0.700         90.        0.       Wall-12       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 13  0.313        153.        0.       Wall-13       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 14  0.630         90.        0.       Wall-14       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 15  0.313         27.        0.       Wall-15       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 16  1.05          90.        0.       Wall-16       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 17  0.396        135.        0.       Wall-17       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 18  0.630        143.        0.       Wall-18       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 19  0.190        107.        0.       Wall-19       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 20  1.12          90.        0.       Wall-20       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 21  0.187         71.        0.       Wall-21       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 22  0.668         44.        0.       Wall-22       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 23  0.360         33.        0.       Wall-23       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 24  4.06           0.        0.       Wall-24       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 25  0.140         90.        0.       Wall-25       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 26  0.280          0.        0.       Wall-26       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 27  0.290         75.        0.       Wall-27       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 28  0.560          0.        0.       Wall-28       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 29  0.287        283.        0.       Wall-29       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 30  0.280          0.        0.       Wall-30       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 31  0.700          0.        0.       Wall-31       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 32  0.313         63.        0.       Wall-32       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 33  1.12           0.        0.       Wall-1        OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 34  0.313        297.        0.       Wall-2        OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 35  0.420          0.        0.       Wall-3        OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 36  3.22         270.        0.       Wall-4        OPAQUE        VERT      -            -           stone_0.7m           SIMILAR
 37  23.4           0.      -90.       Base-a        OPAQUE        FLOR      -            -           floor_to_cli         SIMILAR
 38  45.9           0.      -90.       Base-b        OPAQUE        FLOR      -            -           floor_to_cli         SIMILAR
 
 
All surfaces will receive diffuse insolation (if shading not calculated).  
No shading analysis requested.  
No insolation analysis requested.  
 
 
Schedule notes 
There is 1 ach infiltration all days and all hours.
nothing happens in this zone in terms of occupants lights and small power.
Flow control no control of air flow  
 
Scheduled air infiltration and ventilation  
 
Day type  ID  Hours   Infil. (ac/h)  Infil. (m^3^/s)  Vent. (ac/h)  Vent. (m^3^/s)  From zone  Source DegC
--------  --  ------  -------------  ---------------  ------------  --------------  ---------  -----------
weekdays   1  0 - 24    1.00          0.0135            0.00          0.0000          0         0.00
saturday   1  0 - 24    1.00          0.0135            0.00          0.0000          0         0.00
sunday     1  0 - 24    1.00          0.0135            0.00          0.0000          0         0.00
 
 
Daytype   ID   Label      Type       Unit  Hours  Sens.(W)  Late.(W)   Rad. Frac   Con. Frac
--------  ---  ---------  ---------  ----  -----  --------  --------   ---------   ---------
weekdays    1  Occupt     people     W      0-24       0.0      0.0       0.50       0.50
weekdays    2  Lights     lighting   W      0-24       0.0      0.0       0.50       0.50
weekdays    3  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
saturday    1  Occupt     people     W      0-24       0.0      0.0       0.50       0.50
saturday    2  Lights     lighting   W      0-24       0.0      0.0       0.50       0.50
saturday    3  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
sunday      1  Occupt     people     W      0-24       0.0      0.0       0.50       0.50
sunday      2  Lights     lighting   W      0-24       0.0      0.0       0.50       0.50
sunday      3  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
 
### Zone12: upper
 
Zone upper (12) is composed of 51 surfaces and 88 vertices.
It encloses a volume of 93.0 m^3^ of space, with a total surface
area of 280. m^2^ & approx floor area of 113. m^2^.
upper describes space over kitchen br1 bath hall stair.  
There is 62.338 m^2^ of exposed surface area, 18.473 m^2^ of which is vertical.
Facade opaque is 22.035 m^2^ &  19.6 % of floor area & average U of 2.091 & UA of 46.086.
Sloped roof is 35.774 % of floor area & average U of 3.719 & UA of 149.89.
Opaque partitions:ceiling:floor 121.30 m^2^.  
 
: A summary of the surfaces in upper(12)
 
ID   Area (m^2^)  Azimuth   Elevation  Name          Optics        Location  Use primary  Use detail  Construction name    Environment other side
---  -----------  --------  ---------  ------------  ------------  --------  -----------  ----------  -------------------  ----------------------
  1  16.9           0.      -90.       ceiling_str   OPAQUE        FLOR      -            -           roof_to_ceil         ANOTHER
  2  32.3           0.      -90.       ceiling_kit   OPAQUE        FLOR      -            -           roof_to_ceil         ANOTHER
  3  33.0           0.      -90.       ceiling_br1   OPAQUE        FLOR      -            -           roof_to_ceil         ANOTHER
  4  5.86           0.      -90.       ceiling_bth   OPAQUE        FLOR      -            -           roof_to_ceil         ANOTHER
  5  21.0           0.      -90.       ceiling_hall  OPAQUE        FLOR      -            -           roof_to_ceil         ANOTHER
  6  6.30         180.        0.       Wall-6        OPAQUE        VERT      -            -           masonry0.3           SIMILAR
  7  0.100         90.        0.       Wall-7        OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
  8  0.450        136.        0.       Wall-8        OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
  9  0.116        131.        0.       Wall-9        OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 10  0.882         89.        0.       Wall-10       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 11  0.092         58.        0.       Wall-11       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 12  0.450         46.        0.       Wall-12       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 13  0.253         28.        0.       Wall-13       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 14  0.400         90.        0.       Wall-14       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 15  0.200        180.        0.       Wall-15       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 16  0.450         90.        0.       Wall-16       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 17  0.250         37.        0.       Wall-17       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 18  2.30           0.        0.       Wall-18       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 19  1.90          90.        0.       Wall-19       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 20  0.600          0.        0.       Wall-20       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 21  0.500         90.        0.       Wall-21       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 22  0.900          0.        0.       Wall-22       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 23  0.700        270.        0.       Wall-23       OPAQUE        VERT      -            -           masonry0.3           ANOTHER
 24  1.80           0.        0.       Wall-24       OPAQUE        VERT      -            -           masonry0.3           SIMILAR
 25  2.10         270.        0.       Wall-25       OPAQUE        VERT      -            -           masonry0.3           SIMILAR
 26  1.60         360.        0.       Wall-26       OPAQUE        VERT      -            -           masonry0.3           SIMILAR
 27  1.40         270.        0.       Wall-27       OPAQUE        VERT      -            -           masonry0.3           SIMILAR
 28  0.200        180.        0.       Wall-28       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 29  0.283        135.        0.       Wall-29       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 30  0.500        180.        0.       Wall-30       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 31  0.400        270.        0.       Wall-31       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 32  0.224        333.        0.       Wall-32       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 33  0.750        270.        0.       Wall-33       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 34  0.250        217.        0.       Wall-34       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 35  49.5           0.       90.       upper_a       OPAQUE        CEIL      -            -           ceil_to_roof         SIMILAR
 36  28.1           0.       90.       upper_b       OPAQUE        CEIL      -            -           ceil_to_roof         SIMILAR
 37  0.224        153.        0.       Wall-37       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 38  3.56           0.      -90.       soffet        OPAQUE        FLOR      -            -           door                 EXTERIOR
 39  5.30           0.        0.       n_slope_w     OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 40  5.30         180.        0.       s_slope_w     OPAQUE        VERT      -            -           masonry0.2           SIMILAR
 41  2.79         135.       53.       slope_a       OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 42  3.16         151.       52.       slope         OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 43  1.91          90.       69.       slope_b       OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 44  3.10          89.       55.       slope_c       OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 45  2.23          34.       50.       slope_d       OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 46  12.7          90.       69.       slope_e       OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 47  5.00          90.       69.       slope_f       OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 48  3.18         360.       41.       slope_g       OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 49  12.0         270.        0.       back_wall     OPAQUE        VERT      -            -           masonry0.2           EXTERIOR
 50  3.89          90.       69.       slope_h       OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 51  2.38         235.       59.       slope_i       OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 
 
All surfaces will receive diffuse insolation (if shading not calculated).  
No shading analysis requested.  
No insolation analysis requested.  
 
 
Schedule notes 
There is 1ach infiltration all days all hours.
nothing happens in this zone in terms of occupants lights and small power.
Flow control no control of air flow  
 
Scheduled air infiltration and ventilation  
 
Day type  ID  Hours   Infil. (ac/h)  Infil. (m^3^/s)  Vent. (ac/h)  Vent. (m^3^/s)  From zone  Source DegC
--------  --  ------  -------------  ---------------  ------------  --------------  ---------  -----------
weekdays   1  0 - 24    1.00          0.0258            0.00          0.0000          0         0.00
saturday   1  0 - 24    1.00          0.0258            0.00          0.0000          0         0.00
sunday     1  0 - 24    1.00          0.0258            0.00          0.0000          0         0.00
 
 
Daytype   ID   Label      Type       Unit  Hours  Sens.(W)  Late.(W)   Rad. Frac   Con. Frac
--------  ---  ---------  ---------  ----  -----  --------  --------   ---------   ---------
weekdays    1  Occupt     people     W      0-24       0.0      0.0       0.50       0.50
weekdays    2  Lights     lighting   W      0-24       0.0      0.0       0.50       0.50
weekdays    3  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
saturday    1  Occupt     people     W      0-24       0.0      0.0       0.50       0.50
saturday    2  Lights     lighting   W      0-24       0.0      0.0       0.50       0.50
saturday    3  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
sunday      1  Occupt     people     W      0-24       0.0      0.0       0.50       0.50
sunday      2  Lights     lighting   W      0-24       0.0      0.0       0.50       0.50
sunday      3  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
 
### Zone13: upper_ne
 
Zone upper_ne (13) is composed of 53 surfaces and 79 vertices.
It encloses a volume of 115. m^3^ of space, with a total surface
area of 234. m^2^ & approx floor area of 85.9 m^2^.
upper_ne describes space over br2 living study family.  
There is 139.67 m^2^ of exposed surface area, 30.943 m^2^ of which is vertical.
Facade opaque is 44.597 m^2^ &  51.9 % of floor area & average U of 2.233 & UA of 99.596.
Sloped roof is 110.66 % of floor area & average U of 3.719 & UA of 353.57.
Opaque partitions:ceiling:floor 81.459 m^2^.  
 
: A summary of the surfaces in upper_ne(13)
 
ID   Area (m^2^)  Azimuth   Elevation  Name          Optics        Location  Use primary  Use detail  Construction name    Environment other side
---  -----------  --------  ---------  ------------  ------------  --------  -----------  ----------  -------------------  ----------------------
  1  17.9           0.      -90.       ceiling_b2    OPAQUE        FLOR      -            -           roof_to_ceil         ANOTHER
  2  27.9           0.      -90.       ceiling_liv   OPAQUE        FLOR      -            -           roof_to_ceil         ANOTHER
  3  6.12           0.      -90.       ceiling_std   OPAQUE        FLOR      -            -           roof_to_ceil         ANOTHER
  4  17.3           0.      -90.       ceiling_fam   OPAQUE        FLOR      -            -           roof_to_ceil         ANOTHER
  5  2.30         180.        0.       Wall-5        OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
  6  0.500         90.        0.       Wall-6        OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
  7  0.224        153.        0.       Wall-7        OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
  8  0.450         90.        0.       Wall-8        OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
  9  0.224         27.        0.       Wall-9        OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 10  0.750         90.        0.       Wall-10       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 11  0.283        135.        0.       Wall-11       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 12  0.450        143.        0.       Wall-12       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 13  0.136        107.        0.       Wall-13       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 14  0.800         90.        0.       Wall-14       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 15  0.133         71.        0.       Wall-15       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 16  0.477         44.        0.       Wall-16       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 17  0.257         33.        0.       Wall-17       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 18  0.100         90.        0.       Wall-18       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 19  2.90           0.        0.       Wall-19       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 20  0.200          0.        0.       Wall-20       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 21  0.207         75.        0.       Wall-21       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 22  0.400        360.        0.       Wall-22       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 23  0.205        283.        0.       Wall-23       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 24  0.200          0.        0.       Wall-24       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 25  0.500          0.        0.       Wall-25       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 26  0.224         63.        0.       Wall-26       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 27  0.800        360.        0.       Wall-27       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 28  0.224        297.        0.       Wall-28       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 29  0.300          0.        0.       Wall-29       OPAQUE        VERT      -            -           stone_0.7m           EXTERIOR
 30  2.30         270.        0.       Wall-30       OPAQUE        VERT      -            -           masonry0.3           SIMILAR
 31  1.80         180.        0.       Wall-31       OPAQUE        VERT      -            -           pla_pla_ptn          SIMILAR
 32  0.700         90.        0.       Wall-32       OPAQUE        VERT      -            -           masonry0.3           ANOTHER
 33  0.900        180.        0.       Wall-33       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 34  0.500        270.        0.       Wall-34       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 35  0.600        180.        0.       Wall-35       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 36  1.90         270.        0.       Wall-36       OPAQUE        VERT      -            -           pla_pla_ptn          ANOTHER
 37  5.30         180.        0.       n_slope_w     OPAQUE        VERT      -            -           masonry0.2           ANOTHER
 38  6.80         270.        0.       back_a        OPAQUE        VERT      -            -           masonry0.2           EXTERIOR
 39  13.2         180.        0.       back_b        OPAQUE        VERT      -            -           masonry0.2           EXTERIOR
 40  5.40         270.        0.       west_slope    OPAQUE        VERT      -            -           masonry0.2           SIMILAR
 41  3.00           0.      -90.       h_fill        OPAQUE        FLOR      -            -           masonry0.2           SIMILAR
 42  8.16           0.      -90.       soffet_n      OPAQUE        FLOR      -            -           door                 EXTERIOR
 43  5.49           0.      -90.       soffet_e      OPAQUE        FLOR      -            -           door                 EXTERIOR
 44  2.84         135.       53.       slope_a       OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 45  3.26          90.       55.       slope_b       OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 46  2.78          44.       53.       slope_c       OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 47  1.05          90.       40.       slope_d       OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 48  53.3           0.       70.       north_slope   OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 49  20.4          90.       69.       east_slope    OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 50  2.87          90.       69.       corner        OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 51  3.47         145.       53.       slope_e       OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 52  3.31         325.       35.       slope_f       OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 53  1.82         231.       63.       slope_g       OPAQUE        SLOP      -            -           slate_roof           EXTERIOR
 
 
All surfaces will receive diffuse insolation (if shading not calculated).  
No shading analysis requested.  
No insolation analysis requested.  
 
 
Schedule notes 
There is 1ach infiltration all days and all hours
nothing happens in this zone in terms of occupants lights and small power.
Flow control no control of air flow  
 
Scheduled air infiltration and ventilation  
 
Day type  ID  Hours   Infil. (ac/h)  Infil. (m^3^/s)  Vent. (ac/h)  Vent. (m^3^/s)  From zone  Source DegC
--------  --  ------  -------------  ---------------  ------------  --------------  ---------  -----------
weekdays   1  0 - 24    1.00          0.0318            0.00          0.0000          0         0.00
saturday   1  0 - 24    1.00          0.0318            0.00          0.0000          0         0.00
sunday     1  0 - 24    1.00          0.0318            0.00          0.0000          0         0.00
 
 
Daytype   ID   Label      Type       Unit  Hours  Sens.(W)  Late.(W)   Rad. Frac   Con. Frac
--------  ---  ---------  ---------  ----  -----  --------  --------   ---------   ---------
weekdays    1  Occupt     people     W      0-24       0.0      0.0       0.50       0.50
weekdays    2  Lights     lighting   W      0-24       0.0      0.0       0.50       0.50
weekdays    3  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
saturday    1  Occupt     people     W      0-24       0.0      0.0       0.50       0.50
saturday    2  Lights     lighting   W      0-24       0.0      0.0       0.50       0.50
saturday    3  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
sunday      1  Occupt     people     W      0-24       0.0      0.0       0.50       0.50
sunday      2  Lights     lighting   W      0-24       0.0      0.0       0.50       0.50
sunday      3  Equipt     equipment  W      0-24       0.0      0.0       0.50       0.50
 
## Areas
 
 
 Project floor area is 564.29m2, wall area is 205.24m2, window area is 25.406m2.
 Sloped roof area is 135.37m2, flat roof area is 0.00m2, skylight area is 0.00m2.
 In contact with ground 0.00m2.
 There is 366.01m2 of outside surface area, 213.43m2 of which is vertical.
 
 Outside walls are 36.371 % of floor area & average U of 1.726 & UA of 354.22 & max MLC thickness 0.900
 Sloped roof is 23.990 % of floor area & average U of 3.719 & UA of 503.46
 Glazing is 4.5023 % of floor & 11.904 % facade with average U of 2.877 & UA of 73.086
 
## Constructions  
 Multi-layer constructions referenced in the model.  
 
 
### door
Details of opaque construction: door with an overall thickness of  0.025m.  
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
    1   25.0            0.190                   700.             2390.                     0.90        0.65         12.         0.13          17.5   oak : Oak (radial cut)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  3.316  3.682  2.928 (partition)  2.554  
Weight per m^2 of this construction  17.50  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  3.21
 External surface admittance Y=  3.33  w=  0.61 decrement factor f=  0.61  phi=  0.40 surface factor f=  0.61  phi=  0.40
 Partition admittance Y=  1.21  w=  5.38 surface factor f=  0.99  phi=  0.56  
 
Total area of door is     95.87  
 
 
### mass_part
Details of opaque construction: mass_part with an overall thickness of  0.240m.  
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
    1  240.0            0.510                  1400.             1000.                     0.90        0.25         10.         0.47         336.0   block white ptd : block white painted inner (3% mc)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  1.561  1.638  1.469 (partition)  1.369  
Weight per m^2 of this construction 336.00  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  1.54
 External surface admittance Y=  4.20  w=  1.62 decrement factor f=  0.58  phi=  1.40 surface factor f=  0.58  phi=  1.40
 Partition admittance Y=  4.70  w=  1.85 surface factor f=  0.57  phi=  1.85  
 
Total area of mass_part is     12.00  
 
 
### stone_0.9m
Details of opaque construction: stone_0.9m with an overall thickness of  0.900m.  
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
Ext    150.0            2.900                  2650.              900.                     0.90        0.55         77.         0.05         397.5   red granite : Red granite (inorganic-porous)
    2  150.0            1.830                  2200.              712.                     0.90        0.60         29.         0.08         330.0   sandstone : Sandstone
    3  150.0            0.960                  1800.             1000.                     0.90        0.60          2.         0.16         270.0   chippings : Chippings (non-hygroscopic)
    4  100.0            0.960                  1800.             1000.                     0.90        0.60          2.         0.10         180.0   chippings : Chippings (non-hygroscopic)
    5  150.0            0.960                  1800.             1000.                     0.90        0.60          2.         0.16         270.0   chippings : Chippings (non-hygroscopic)
    6  150.0            1.830                  2200.              712.                     0.90        0.60         29.         0.08         330.0   sandstone : Sandstone
    7   20.0            0.000                     0.                0.                     0.99        0.99          1.         0.17           0.0   air  0.17 0.17 0.17
Int     30.0            0.500                  1300.             1000.                     0.91        0.50         11.         0.06          39.0   dense plaster : Dense plaster (inorganic-porous)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  0.969  0.998  0.933 (partition)  0.891  
Weight per m^2 of this construction1816.52  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  0.96
 External surface admittance Y=  3.17  w=  1.64 decrement factor f=  0.67  phi=  0.91 surface factor f=  0.67  phi=  0.91
 Partition admittance Y=  3.16  w=  1.65 surface factor f=  0.67  phi=  0.91  
 
Total area of stone_0.9m is      9.60  
 
 
### stone_0.7m
Details of opaque construction: stone_0.7m with an overall thickness of  0.650m.  
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
Ext    150.0            2.900                  2650.              900.                     0.90        0.55         77.         0.05         397.5   red granite : Red granite (inorganic-porous)
    2  100.0            1.830                  2200.              712.                     0.90        0.60         29.         0.05         220.0   sandstone : Sandstone
    3  100.0            0.960                  1800.             1000.                     0.90        0.60          2.         0.10         180.0   chippings : Chippings (non-hygroscopic)
    4  100.0            0.960                  1800.             1000.                     0.90        0.60          2.         0.10         180.0   chippings : Chippings (non-hygroscopic)
    5  150.0            1.830                  2200.              712.                     0.90        0.60         29.         0.08         330.0   sandstone : Sandstone
    6   20.0            0.000                     0.                0.                     0.99        0.99          1.         0.17           0.0   air  0.17 0.17 0.17
Int     30.0            0.500                  1300.             1000.                     0.91        0.50         11.         0.06          39.0   dense plaster : Dense plaster (inorganic-porous)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  1.255  1.304  1.195 (partition)  1.128  
Weight per m^2 of this construction1346.52  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  1.24
 External surface admittance Y=  3.17  w=  1.64 decrement factor f=  0.67  phi=  0.91 surface factor f=  0.67  phi=  0.91
 Partition admittance Y=  3.16  w=  1.58 surface factor f=  0.67  phi=  0.87  
 
Total area of stone_0.7m is     97.68  
 
 
### masonry0.2
Details of opaque construction: masonry0.2 with an overall thickness of  0.200m.  
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
Ext     30.0            0.500                  1300.             1000.                     0.91        0.50         11.         0.06          39.0   dense plaster : Dense plaster (inorganic-porous)
    2  140.0            0.960                  2000.              650.                     0.90        0.93         25.         0.15         280.0   outer leaf brick : Outer leaf brick (inorganic-porous)
Int     30.0            0.500                  1300.             1000.                     0.91        0.50         11.         0.06          39.0   dense plaster : Dense plaster (inorganic-porous)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  2.294  2.464  2.102 (partition)  1.902  
Weight per m^2 of this construction 358.00  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  2.24
 External surface admittance Y=  4.33  w=  1.44 decrement factor f=  0.55  phi=  1.35 surface factor f=  0.55  phi=  1.35
 Partition admittance Y=  4.80  w=  2.43 surface factor f=  0.64  phi=  2.17  
 
Total area of masonry0.2 is    140.22  
 
 
### ceil_to_roof
Details of opaque construction: ceil_to_roof linked to roof_to_ceil with an overall thickness of  0.180m.  
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
Ext    150.0            0.040                   250.              840.                     0.90        0.30          4.         3.75          37.5   glasswool : Glasswool (generic) (non-hygroscopic)
Int     30.0            0.500                  1300.             1000.                     0.91        0.50         11.         0.06          39.0   dense plaster : Dense plaster (inorganic-porous)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  0.251  0.253  0.249 (partition)  0.246  
Weight per m^2 of this construction  76.50  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  0.25
 External surface admittance Y=  2.88  w=  3.80 decrement factor f=  0.86  phi=  1.31 surface factor f=  0.86  phi=  1.31
 Partition admittance Y=  3.03  w=  3.88 surface factor f=  0.87  phi=  1.39  
 
Total area of ceil_to_roof is    255.94  
 
 
### roof_to_ceil
Details of opaque construction: roof_to_ceil linked to ceil_to_roof with an overall thickness of  0.180m.  
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
Ext     30.0            0.500                  1300.             1000.                     0.91        0.50         11.         0.06          39.0   dense plaster : Dense plaster (inorganic-porous)
Int    150.0            0.040                   250.              840.                     0.90        0.30          4.         3.75          37.5   glasswool : Glasswool (generic) (non-hygroscopic)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  0.251  0.253  0.249 (partition)  0.246  
Weight per m^2 of this construction  76.50  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  0.25
 External surface admittance Y=  0.72  w=  2.85 decrement factor f=  0.94  phi=  0.24 surface factor f=  0.94  phi=  0.24
 Partition admittance Y=  0.85  w=  3.37 surface factor f=  0.94  phi=  0.32  
 
Total area of roof_to_ceil is    178.36  
 
 
### floor_to_cli
Details of opaque construction: floor_to_cli linked to cl_to_floori with an overall thickness of  0.366m.  
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
Ext     30.0            0.500                  1300.             1000.                     0.91        0.50         11.         0.06          39.0   dense plaster : Dense plaster (inorganic-porous)
    2  100.0            0.000                     0.                0.                     0.99        0.99          1.         0.17           0.1   air  0.17 0.17 0.17
    3  150.0            0.360                  1840.              840.                     0.90        0.60          2.         0.42         276.0   gravel : Gravel (non-hygroscopic)
    4   50.0            0.000                     0.                0.                     0.99        0.99          1.         0.17           0.1   air  0.17 0.17 0.17
    5   28.0            0.190                   700.             2390.                     0.90        0.65         12.         0.15          19.6   oak : Oak (radial cut)
Int      8.0            0.060                   186.             1360.                     0.90        0.60         10.         0.13           1.5   Wilton : Wilton weave wool carpet (organic-hygroscopic)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  0.789  0.808  0.765 (partition)  0.737  
Weight per m^2 of this construction 336.27  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  0.78
 External surface admittance Y=  2.20  w=  1.64 decrement factor f=  0.77  phi=  0.55 surface factor f=  0.77  phi=  0.55
 Partition admittance Y=  2.33  w=  1.58 surface factor f=  0.75  phi=  0.57  
 
Total area of floor_to_cli is    356.72  
 
 
### cl_to_floori
Details of opaque construction: cl_to_floori linked to floor_to_cli with an overall thickness of  0.366m.  
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
Ext      8.0            0.060                   186.             1360.                     0.90        0.60         10.         0.13           1.5   Wilton : Wilton weave wool carpet (organic-hygroscopic)
    2   28.0            0.190                   700.             2390.                     0.90        0.65         12.         0.15          19.6   oak : Oak (radial cut)
    3   50.0            0.000                     0.                0.                     0.99        0.99          1.         0.17           0.1   air  0.17 0.17 0.17
    4  150.0            0.360                  1840.              840.                     0.90        0.60          2.         0.42         276.0   gravel : Gravel (non-hygroscopic)
    5  100.0            0.000                     0.                0.                     0.99        0.99          1.         0.17           0.1   air  0.17 0.17 0.17
Int     30.0            0.500                  1300.             1000.                     0.91        0.50         11.         0.06          39.0   dense plaster : Dense plaster (inorganic-porous)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  0.789  0.808  0.765 (partition)  0.737  
Weight per m^2 of this construction 336.27  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  0.78
 External surface admittance Y=  3.10  w=  2.13 decrement factor f=  0.71  phi=  1.07 surface factor f=  0.71  phi=  1.07
 Partition admittance Y=  3.22  w=  2.06 surface factor f=  0.70  phi=  1.10  
 
Total area of cl_to_floori is    178.36  
 
 
### stone_0.4m
Details of opaque construction: stone_0.4m with an overall thickness of  0.400m.  
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
Ext    150.0            1.830                  2200.              712.                     0.90        0.60         29.         0.08         330.0   sandstone : Sandstone
    2  100.0            0.960                  1800.             1000.                     0.90        0.60          2.         0.10         180.0   chippings : Chippings (non-hygroscopic)
    3  100.0            1.830                  2200.              712.                     0.90        0.60         29.         0.05         220.0   sandstone : Sandstone
    4   20.0            0.000                     0.                0.                     0.99        0.99          1.         0.17           0.0   air  0.17 0.17 0.17
Int     30.0            0.500                  1300.             1000.                     0.91        0.50         11.         0.06          39.0   dense plaster : Dense plaster (inorganic-porous)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  1.561  1.637  1.469 (partition)  1.368  
Weight per m^2 of this construction 769.02  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  1.54
 External surface admittance Y=  3.18  w=  1.67 decrement factor f=  0.67  phi=  0.92 surface factor f=  0.67  phi=  0.92
 Partition admittance Y=  3.48  w=  1.65 surface factor f=  0.65  phi=  1.05  
 
Total area of stone_0.4m is     35.22  
 
 
### slate_roof
Details of opaque construction: slate_roof with an overall thickness of  0.033m.  
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
Ext     15.0            2.000                  2700.              753.                     0.90        0.60         48.         0.01          40.5   slate : Slate (inorganic-porous)
    2    3.0            0.500                  1700.             1000.                     0.90        0.90       1000.         0.01           5.1   bitumen felt : Bitumen felt (organic hygroscopic)
Int     15.0            0.130                   630.             2760.                     0.90        0.65         12.         0.12           9.4   softwood : Softwood (generic)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  3.346  3.719  2.951 (partition)  2.571  
Weight per m^2 of this construction  55.05  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  3.24
 External surface admittance Y=  3.35  w=  0.53 decrement factor f=  0.60  phi=  0.35 surface factor f=  0.60  phi=  0.35
 Partition admittance Y=  1.32  w=  5.25 surface factor f=  0.98  phi=  0.61  
 
Total area of slate_roof is    135.37  
 
 
### sash_frame
Details of opaque construction: sash_frame with an overall thickness of  0.020m.  
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
    1   20.0            0.130                   630.             2760.                     0.90        0.65         12.         0.15          12.6   softwood : Softwood (generic)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  3.088  3.403  2.748 (partition)  2.416  
Weight per m^2 of this construction  12.60  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  3.00
 External surface admittance Y=  3.09  w=  0.57 decrement factor f=  0.64  phi=  0.33 surface factor f=  0.64  phi=  0.33
 Partition admittance Y=  1.03  w=  5.46 surface factor f=  0.99  phi=  0.47  
 
Total area of sash_frame is      8.20  
 
 
### pla_pla_ptn
Details of opaque construction: pla_pla_ptn with an overall thickness of  0.098m.  
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
Ext     24.0            0.500                  1300.             1000.                     0.91        0.50         11.         0.05          31.2   dense plaster : Dense plaster (inorganic-porous)
    2   50.0            0.000                     0.                0.                     0.99        0.99          1.         0.17           0.1   air  0.17 0.17 0.17
Int     24.0            0.500                  1300.             1000.                     0.91        0.50         11.         0.05          31.2   dense plaster : Dense plaster (inorganic-porous)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  2.294  2.463  2.101 (partition)  1.901  
Weight per m^2 of this construction  62.46  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  2.24
 External surface admittance Y=  2.71  w=  1.55 decrement factor f=  0.71  phi=  0.69 surface factor f=  0.71  phi=  0.69
 Partition admittance Y=  1.91  w=  5.06 surface factor f=  0.97  phi=  0.88  
 
Total area of pla_pla_ptn is    233.92  
 
 
### masonry0.3
Details of opaque construction: masonry0.3 with an overall thickness of  0.300m.  
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
Ext     30.0            0.500                  1300.             1000.                     0.91        0.50         11.         0.06          39.0   dense plaster : Dense plaster (inorganic-porous)
    2  240.0            0.960                  2000.              650.                     0.90        0.93         25.         0.25         480.0   outer leaf brick : Outer leaf brick (inorganic-porous)
Int     30.0            0.500                  1300.             1000.                     0.91        0.50         11.         0.06          39.0   dense plaster : Dense plaster (inorganic-porous)
 
ISO 6946 U values (horiz/upward/downward heat flow)=  1.852  1.961  1.724 (partition)  1.587  
Weight per m^2 of this construction 558.00  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  1.82
 External surface admittance Y=  4.36  w=  1.34 decrement factor f=  0.54  phi=  1.30 surface factor f=  0.54  phi=  1.30
 Partition admittance Y=  4.87  w=  1.64 surface factor f=  0.53  phi=  1.83  
 
Total area of masonry0.3 is     91.14  
 
 
### Window_ext  
Details of transparent construction Window_ext with DC_8074_04nb optics with an overall thickness of  0.024m.  
 
Layer  Thickness (mm)  Conductivity (W/(mK))  Density (kg/m^3^)  Specific heat (J/(kgK))  Emissivity  Absorption  Diffusivity  R (m^2^K/W)  kg/m^2^  Description
-----  --------------  ---------------------  -----------------  -----------------------  ----------  ----------  -----------  -----------  -------  -----------------------------------
Ext      4.0            1.050                  2500.              750.                     0.83        0.05      19200.         0.00          10.0   clear float : clear float glass with optics from UK national method data
    2   16.0            0.000                     0.                0.                     0.99        0.99          1.         0.17           0.0   air  0.17 0.17 0.17
Int      4.0            1.050                  2500.              750.                     0.83        0.05      19200.         0.00          10.0   clear float : clear float glass with optics from UK national method data
 
ISO 6946 U values (horiz/upward/downward heat flow)=  2.877  3.148  2.580 (partition)  2.285  
Weight per m^2 of this construction  20.02  
 
Admittance calculations using Rsi   0.12 Rso   0.06 & Uvalue=  2.80
 External surface admittance Y=  2.82  w=  0.34 decrement factor f=  0.66  phi=  0.17 surface factor f=  0.66  phi=  0.17
 Partition admittance Y=  0.45  w=  5.80 surface factor f=  1.00  phi=  0.21  
 
 Clear glass 80/75,     4mm, no blind: with id of: DC_8074_04nb
 with 3 layers [including air gaps] and visible trn: 0.80
 
: Direct transmission @deg
 
   0     40    55    70    80
   ----- ----- ----- ----- -----
   0.676 0.651 0.604 0.441 0.201
 
: Absorption @deg
 
 Layer 0     40    55    70    80
 ----- ----- ----- ----- ----- -----
    1    0.113  0.124  0.134  0.148  0.154
    2    0.001  0.002  0.003  0.004  0.005
    3    0.087  0.094  0.097  0.087  0.062
 
Total area of Window_ext is     25.41  
