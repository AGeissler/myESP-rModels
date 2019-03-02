*Geometry 1.1,GEN,thermostat # tag version, format, zone name
*date Mon Jan 28 13:40:46 2019  # latest file modification 
thermostat standard honeywell CM707 thermos
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,6.90000,2.80000,1.40000  #   1
*vertex,6.90000,2.67000,1.40000  #   2
*vertex,6.92300,2.67000,1.40000  #   3
*vertex,6.92300,2.80000,1.40000  #   4
*vertex,6.90000,2.80000,1.48700  #   5
*vertex,6.90000,2.67000,1.48700  #   6
*vertex,6.92300,2.67000,1.48700  #   7
*vertex,6.92300,2.80000,1.48700  #   8
*vertex,6.90000,2.77600,1.43000  #   9
*vertex,6.90000,2.69500,1.43000  #  10
*vertex,6.90000,2.77600,1.48300  #  11
*vertex,6.90000,2.69500,1.48300  #  12
*vertex,6.90500,2.79000,1.41200  #  13
*vertex,6.90500,2.69000,1.41200  #  14
*vertex,6.91700,2.69000,1.41200  #  15
*vertex,6.91700,2.79000,1.41200  #  16
*vertex,6.90600,2.79600,1.41600  #  17
*vertex,6.90600,2.67600,1.41600  #  18
*vertex,6.90600,2.67600,1.48100  #  19
*vertex,6.90600,2.79600,1.48100  #  20
*vertex,6.90600,2.69100,1.48100  #  21
*vertex,6.90600,2.67600,1.47100  #  22
*vertex,6.90600,2.69100,1.47100  #  23
# 
# tag, number of vertices followed by list of associated vert
*edges,10,1,2,6,5,1,9,11,12,10,9  #   1
*edges,4,2,3,7,6  #   2
*edges,4,3,4,8,7  #   3
*edges,4,4,1,5,8  #   4
*edges,4,5,6,7,8  #   5
*edges,4,1,4,3,2  #   6
*edges,4,9,10,12,11  #   7
*edges,4,13,14,15,16  #   8
*edges,4,14,13,16,15  #   9
*edges,6,17,18,22,23,21,20  #  10
*edges,6,18,17,20,21,23,22  #  11
*edges,4,23,22,19,21  #  12
*edges,4,22,23,21,19  #  13
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,acase_front,VERT,-,WALL,-,sensor_case,OPAQUE,ANOTHER,02,086  #   1 ||< acase_front:living
*surf,acase_right,VERT,-,WALL,-,sensor_case,OPAQUE,ANOTHER,02,087  #   2 ||< acase_right:living
*surf,acase_back,VERT,-,WALL,-,sensor_case,OPAQUE,ANOTHER,02,088  #   3 ||< acase_back:living
*surf,aleft_case,VERT,-,WALL,-,sensor_case,OPAQUE,ANOTHER,02,089  #   4 ||< aleft_case:living
*surf,acase_top,CEIL,-,WALL,-,sensor_case,OPAQUE,ANOTHER,02,090  #   5 ||< acase_top:living
*surf,acase_base,FLOR,-,WALL,-,sensor_case,OPAQUE,ANOTHER,02,091  #   6 ||< acase_base:living
*surf,adisplay,VERT,acase_front,WALL,-,circuit_bd,OPAQUE,ANOTHER,02,092  #   7 ||< adisplay:living
*surf,abattery,CEIL,-,FURNI,-,NiMH_battery,OPAQUE,ANOTHER,46,009  #   8 ||< abattery_:thermostat
*surf,abattery_,FLOR,-,FURNI,-,NiMH_battery,OPAQUE,ANOTHER,46,008  #   9 ||< abattery:thermostat
*surf,acircuit,VERT,-,FURNI,-,circuit_bd,OPAQUE,ANOTHER,46,011  #  10 ||< acircuit_:thermostat
*surf,acircuit_,VERT,-,FURNI,-,circuit_bd,OPAQUE,ANOTHER,46,010  #  11 ||< acircuit:thermostat
*surf,asen_a,VERT,-,FURNI,-,circuit_bd,OPAQUE,ANOTHER,46,013  #  12 ||< axsen_a:thermostat
*surf,axsen_a,VERT,-,FURNI,-,circuit_bd,OPAQUE,ANOTHER,46,012  #  13 ||< asen_a:thermostat
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.00,0  # zone base
# 
# visual entities:
#  *vis = visual blocks
#  *vis3 = visual 3 axis
#  *visp = visual polys
*visual_start
*vis,6.8970,2.7850,1.4080,0.0100,0.0050,0.0100,-90.00,1.00,abutton circuit_bd  # visual   1
*vis,6.8970,2.7650,1.4080,0.0100,0.0050,0.0100,-90.00,1.00,abutton-off circuit_bd  # visual   2
*end_visual
