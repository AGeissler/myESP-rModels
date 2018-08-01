*Geometry 1.1,GEN,boiler_case # tag version, format, zone name
*date Fri May  8 08:12:30 2015  # latest file modification 
boiler_case describes the outer case of gas combi boiler
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,1.40000,5.40000,1.20000  #   1
*vertex,1.72000,5.40000,1.20000  #   2
*vertex,1.72000,5.84500,1.20000  #   3
*vertex,1.40000,5.84500,1.20000  #   4
*vertex,1.40000,5.40000,2.00000  #   5
*vertex,1.72000,5.40000,2.00000  #   6
*vertex,1.72000,5.84500,2.00000  #   7
*vertex,1.40000,5.84500,2.00000  #   8
*vertex,1.41000,5.43000,1.39000  #   9
*vertex,1.68000,5.43000,1.39000  #  10
*vertex,1.68000,5.70000,1.39000  #  11
*vertex,1.68000,5.70000,1.91000  #  12
*vertex,1.68000,5.43000,1.91000  #  13
*vertex,1.41000,5.70000,1.39000  #  14
*vertex,1.41000,5.70000,1.91000  #  15
*vertex,1.41000,5.43000,1.91000  #  16
# 
# tag, number of vertices followed by list of associated vert
*edges,4,1,2,6,5  #  1
*edges,4,2,3,7,6  #  2
*edges,4,3,4,8,7  #  3
*edges,4,4,1,5,8  #  4
*edges,4,5,6,7,8  #  5
*edges,4,1,4,3,2  #  6
*edges,4,10,9,16,13  #  7
*edges,4,11,10,13,12  #  8
*edges,4,14,11,12,15  #  9
*edges,4,9,14,15,16  # 10
*edges,4,13,16,15,12  # 11
*edges,4,14,9,10,11  # 12
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,left,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,11,42  #   1 ||< left:equipment
*surf,front,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,11,43  #   2 ||< front:equipment
*surf,right,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,11,44  #   3 ||< right:equipment
*surf,back,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,11,45  #   4 ||< back:equipment
*surf,top,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,11,46  #   5 ||< top:equipment
*surf,base,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,11,47  #   6 ||< base:equipment
*surf,j_left,VERT,-,-,-,tank_w_50mm,OPAQUE,ANOTHER,31,01  #   7 ||< j_left:water_jacket
*surf,j_front,VERT,-,-,-,tank_w_50mm,OPAQUE,ANOTHER,31,02  #   8 ||< j_front:water_jacket
*surf,j_right,VERT,-,-,-,tank_w_50mm,OPAQUE,ANOTHER,31,03  #   9 ||< j_right:water_jacket
*surf,j_back,VERT,-,-,-,tank_w_50mm,OPAQUE,ANOTHER,31,04  #  10 ||< j_back:water_jacket
*surf,j_top,FLOR,-,-,-,tank_w_50mm,OPAQUE,ANOTHER,31,05  #  11 ||< j_top:water_jacket
*surf,j_base,CEIL,-,-,-,tank_w_50mm,OPAQUE,ANOTHER,31,06  #  12 ||< j_base:water_jacket
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.22,0  # zone base
