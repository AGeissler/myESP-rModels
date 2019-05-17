*Geometry 1.1,GEN,air_low # tag version, format, zone name
*date Tue Oct  3 12:26:47 2017  # latest file modification 
air_low describes air above low collector
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,4.85954,1.55647,5.91847  #   1
*vertex,3.65961,1.56855,5.91830  #   2
*vertex,3.65246,0.87306,5.45990  #   3
*vertex,4.85239,0.86073,5.45990  #   4
*vertex,3.65933,1.54104,5.96005  #   5
*vertex,4.85926,1.52896,5.96022  #   6
*vertex,4.85211,0.83322,5.50165  #   7
*vertex,3.65218,0.84555,5.50165  #   8
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
*surf,low_plate,SLOP,-,-,-,collector_pl,OPAQUE,UNKNOWN,0,0  #   1 ||< not yet defined
*surf,glass,SLOP,-,-,-,single_glaz,SCF8783_06nb,EXTERIOR,00,000  #   2 ||< external
*surf,low_edge,SLOP,-,-,-,tank_i_50mmi,OPAQUE,EXTERIOR,00,000  #   3 ||< external
*surf,right,VERT,-,-,-,tank_i_50mmi,OPAQUE,EXTERIOR,00,000  #   4 ||< external
*surf,to-mid,SLOP,-,-,-,fictitious,SC_fictit,ANOTHER,29,03  #   5 ||< to_low:air_mid
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
