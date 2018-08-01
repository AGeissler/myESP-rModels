*Geometry 1.1,GEN,mixer # tag version, format, zone name
*date Mon Apr 13 16:41:38 2015  # latest file modification 
mixer describes a mixing valve box 5 litres
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,1.42000,5.42000,1.20000  #   1
*vertex,1.62000,5.42000,1.20000  #   2
*vertex,1.62000,5.62000,1.20000  #   3
*vertex,1.42000,5.62000,1.20000  #   4
*vertex,1.42000,5.42000,1.40000  #   5
*vertex,1.62000,5.42000,1.40000  #   6
*vertex,1.62000,5.62000,1.40000  #   7
*vertex,1.42000,5.62000,1.40000  #   8
# 
# tag, number of vertices followed by list of associated vert
*edges,4,1,2,6,5  #  1
*edges,4,2,3,7,6  #  2
*edges,4,3,4,8,7  #  3
*edges,4,4,1,5,8  #  4
*edges,4,5,6,7,8  #  5
*edges,4,1,4,3,2  #  6
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,Wall-1,VERT,-,-,-,tank_i_100mi,OPAQUE,CONSTANT,20,00  #   1 ||< constant @ 20dC &   0W rad
*surf,Wall-2,VERT,-,-,-,tank_i_100mi,OPAQUE,CONSTANT,20,00  #   2 ||< constant @ 20dC &   0W rad
*surf,Wall-3,VERT,-,-,-,tank_i_100mi,OPAQUE,CONSTANT,20,00  #   3 ||< constant @ 20dC &   0W rad
*surf,Wall-4,VERT,-,-,-,tank_i_100mi,OPAQUE,CONSTANT,20,00  #   4 ||< constant @ 20dC &   0W rad
*surf,Top-5,CEIL,-,-,-,tank_i_100mi,OPAQUE,CONSTANT,20,00  #   5 ||< constant @ 20dC &   0W rad
*surf,Base-6,FLOR,-,-,-,tank_i_100mi,OPAQUE,CONSTANT,20,00  #   6 ||< constant @ 20dC &   0W rad
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.04,0  # zone base
