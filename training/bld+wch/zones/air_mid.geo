*Geometry 1.1,GEN,air_mid # tag version, format, zone name
*date Tue Oct  3 12:28:11 2017  # latest file modification 
air_mid describes air above middle collector
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,4.86669,2.25221,6.37704  #   1
*vertex,3.66675,2.26404,6.37670  #   2
*vertex,3.65961,1.56855,5.91830  #   3
*vertex,4.85954,1.55647,5.91847  #   4
*vertex,3.66647,2.23653,6.41845  #   5
*vertex,4.86641,2.22470,6.41879  #   6
*vertex,4.85926,1.52896,5.96022  #   7
*vertex,3.65933,1.54104,5.96005  #   8
# 
# tag, number of vertices followed by list of associated vert
*edges,4,2,1,4,3  #   1
*edges,4,8,7,6,5  #   2
*edges,4,3,4,7,8  #   3
*edges,4,4,1,6,7  #   4
*edges,4,1,2,5,6  #   5
*edges,4,2,3,8,5  #   6
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,mid_plate,SLOP,-,-,-,collector_pl,OPAQUE,UNKNOWN,00,000  #   1 ||< not yet defined
*surf,glass,SLOP,-,-,-,single_glaz,SCF8783_06nb,EXTERIOR,00,000  #   2 ||< external
*surf,to_low,SLOP,-,-,-,fictitious,SC_fictit,UNKNOWN,0,0  #   3 ||< not yet defined
*surf,right,VERT,-,-,-,tank_i_50mmi,OPAQUE,EXTERIOR,00,000  #   4 ||< external
*surf,to-top,SLOP,-,-,-,fictitious,SC_fictit,ANOTHER,30,05  #   5 ||< to-mid:air_hi
*surf,left,VERT,-,-,-,tank_i_50mmi,OPAQUE,EXTERIOR,00,000  #   6 ||< external
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.00,0  # zone base
