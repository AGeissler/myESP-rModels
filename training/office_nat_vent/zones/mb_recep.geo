*Geometry 1.1,GEN,mb_recep # tag version, format, zone name
*date Tue Apr  7 15:00:36 2020  # latest file modification 
mb_recep is hvac mixer for reception
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,4.00000,9.00000,3.10000  #   1
*vertex,5.00000,9.00000,3.10000  #   2
*vertex,5.00000,9.60000,3.10000  #   3
*vertex,4.00000,9.60000,3.10000  #   4
*vertex,4.00000,9.00000,3.40000  #   5
*vertex,5.00000,9.00000,3.40000  #   6
*vertex,5.00000,9.60000,3.40000  #   7
*vertex,4.00000,9.60000,3.40000  #   8
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
*surf,mb_o_front,VERT,-,-,-,hvac_case,OPAQUE,ANOTHER,05,030  #   1 ||< mb_r_front:ceil_void
*surf,mb_o_right,VERT,-,-,-,hvac_case,OPAQUE,ANOTHER,05,031  #   2 ||< mb_r_right:ceil_void
*surf,mb_o_back,VERT,-,-,-,hvac_case,OPAQUE,ANOTHER,05,032  #   3 ||< mb_r_back:ceil_void
*surf,mb_o_left,VERT,-,GRILL,OPEN,hvac_case,OPAQUE,ANOTHER,05,033  #   4 ||< mb_r_left:ceil_void
*surf,mb_o_top,CEIL,-,-,-,hvac_case,OPAQUE,ANOTHER,05,034  #   5 ||< mb_r_top:ceil_void
*surf,mb_o_base,FLOR,-,-,-,hvac_case,OPAQUE,ANOTHER,05,035  #   6 ||< mb_r_base:ceil_void
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,1,6,     0.60 0  # zone base list
