*Geometry 1.1,GEN,collec_hi # tag version, format, zone name
*date Tue Oct  3 12:27:18 2017  # latest file modification 
collec_hi describes upper cection of collector
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,3.66683,2.27229,6.36418  #   1
*vertex,4.86678,2.26046,6.36452  #   2
*vertex,4.87393,2.95628,6.82314  #   3
*vertex,3.67399,2.96862,6.82314  #   4
*vertex,4.86669,2.25221,6.37704  #   5
*vertex,3.66675,2.26404,6.37670  #   6
*vertex,3.67391,2.96037,6.83566  #   7
*vertex,4.87385,2.94803,6.83566  #   8
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
*surf,to_roof,SLOP,-,-,-,tank_w_100m,OPAQUE,ANOTHER,10,18  #   1 ||< top_col:attic
*surf,top_plate,SLOP,-,-,-,collector_pl,OPAQUE,ANOTHER,30,01  #   2 ||< top_col:air_hi
*surf,top_edge,SLOP,-,-,-,tank_i_50mmi,OPAQUE,EXTERIOR,00,000  #   3 ||< external
*surf,left,VERT,-,-,-,tank_i_50mmi,OPAQUE,EXTERIOR,00,000  #   4 ||< external
*surf,to_mid,SLOP,-,-,-,collector_pl,OPAQUE,UNKNOWN,0,0  #   5 ||< not yet defined
*surf,right,VERT,-,-,-,tank_i_50mmi,OPAQUE,EXTERIOR,00,000  #   6 ||< external
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.00,0  # zone base
