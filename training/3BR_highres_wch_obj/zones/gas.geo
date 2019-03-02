*Geometry 1.1,GEN,gas # tag version, format, zone name
*date Thu Jan 17 15:41:08 2019  # latest file modification 
gas describes chamber for gas flame
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,1.42000,5.44000,1.40000  #   1
*vertex,1.67000,5.44000,1.40000  #   2
*vertex,1.67000,5.69000,1.40000  #   3
*vertex,1.42000,5.69000,1.40000  #   4
*vertex,1.42000,5.44000,1.90000  #   5
*vertex,1.67000,5.44000,1.90000  #   6
*vertex,1.67000,5.69000,1.90000  #   7
*vertex,1.42000,5.69000,1.90000  #   8
# 
# tag, number of vertices followed by list of associated vert
*edges,4,1,2,6,5  #   1
*edges,4,2,3,7,6  #   2
*edges,4,3,4,8,7  #   3
*edges,4,4,1,5,8  #   4
*edges,4,5,6,7,8  #   5
*edges,4,1,4,3,2  #   6
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,c-left,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,31,007  #   1 ||< c-left:water_jacket
*surf,c_front,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,31,008  #   2 ||< c_front:water_jacket
*surf,c_right,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,31,009  #   3 ||< c_right:water_jacket
*surf,c_back,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,31,010  #   4 ||< c_back:water_jacket
*surf,c_top,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,31,011  #   5 ||< c_top:water_jacket
*surf,c_base,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,31,012  #   6 ||< c_base:water_jacket
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.06,0  # zone base
