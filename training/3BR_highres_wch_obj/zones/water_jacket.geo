*Geometry 1.1,GEN,water_jacket # tag version, format, zone name
*date Mon Jan 28 11:56:26 2019  # latest file modification 
water_jacket describes water side of boiler
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,1.41000,5.43000,1.39000  #   1
*vertex,1.68000,5.43000,1.39000  #   2
*vertex,1.68000,5.70000,1.39000  #   3
*vertex,1.41000,5.70000,1.39000  #   4
*vertex,1.41000,5.43000,1.91000  #   5
*vertex,1.68000,5.43000,1.91000  #   6
*vertex,1.68000,5.70000,1.91000  #   7
*vertex,1.41000,5.70000,1.91000  #   8
*vertex,1.42000,5.44000,1.40000  #   9
*vertex,1.67000,5.44000,1.40000  #  10
*vertex,1.67000,5.44000,1.90000  #  11
*vertex,1.42000,5.44000,1.90000  #  12
*vertex,1.67000,5.69000,1.40000  #  13
*vertex,1.67000,5.69000,1.90000  #  14
*vertex,1.42000,5.69000,1.40000  #  15
*vertex,1.42000,5.69000,1.90000  #  16
# 
# tag, number of vertices followed by list of associated vert
*edges,4,1,2,6,5  #   1
*edges,4,2,3,7,6  #   2
*edges,4,3,4,8,7  #   3
*edges,4,4,1,5,8  #   4
*edges,4,5,6,7,8  #   5
*edges,4,1,4,3,2  #   6
*edges,4,10,9,12,11  #   7
*edges,4,13,10,11,14  #   8
*edges,4,15,13,14,16  #   9
*edges,4,9,15,16,12  #  10
*edges,4,11,12,16,14  #  11
*edges,4,15,9,10,13  #  12
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,j_left,VERT,-,-,-,tank_i_20mm,OPAQUE,ANOTHER,18,007  #   1 ||< j_left:boiler_case
*surf,j_front,VERT,-,-,-,tank_i_20mm,OPAQUE,ANOTHER,18,008  #   2 ||< j_front:boiler_case
*surf,j_right,VERT,-,-,-,tank_i_20mm,OPAQUE,ANOTHER,18,009  #   3 ||< j_right:boiler_case
*surf,j_back,VERT,-,-,-,tank_i_20mm,OPAQUE,ANOTHER,18,010  #   4 ||< j_back:boiler_case
*surf,j_top,CEIL,-,-,-,tank_i_20mm,OPAQUE,ANOTHER,18,011  #   5 ||< j_top:boiler_case
*surf,j_base,FLOR,-,-,-,tank_i_20mm,OPAQUE,ANOTHER,18,012  #   6 ||< j_base:boiler_case
*surf,c-left,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,32,001  #   7 ||< c-left:gas
*surf,c_front,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,32,002  #   8 ||< c_front:gas
*surf,c_right,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,32,003  #   9 ||< c_right:gas
*surf,c_back,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,32,004  #  10 ||< c_back:gas
*surf,c_top,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,32,005  #  11 ||< c_top:gas
*surf,c_base,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,32,006  #  12 ||< c_base:gas
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.14,0  # zone base
