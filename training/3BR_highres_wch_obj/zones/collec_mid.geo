*Geometry 1.1,GEN,collec_mid # tag version, format, zone name
*date Thu Jan 17 15:39:30 2019  # latest file modification 
collec_mid describes middle section of collector
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,3.65969,1.57680,5.90578  #   1
*vertex,4.85962,1.56472,5.90595  #   2
*vertex,4.86678,2.26046,6.36452  #   3
*vertex,3.66683,2.27229,6.36418  #   4
*vertex,4.85954,1.55647,5.91847  #   5
*vertex,3.65961,1.56855,5.91830  #   6
*vertex,3.66675,2.26404,6.37670  #   7
*vertex,4.86669,2.25221,6.37704  #   8
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
*surf,mid_to_roof,SLOP,-,-,-,tank_w_100m,OPAQUE,ANOTHER,10,017  #   1 ||< mid_col:attic
*surf,mid_plate,SLOP,-,-,-,collector_pl,OPAQUE,ANOTHER,29,001  #   2 ||< mid_plate:air_mid
*surf,to_top,SLOP,-,-,-,collector_pl,OPAQUE,ANOTHER,27,005  #   3 ||< to_mid:collec_hi
*surf,left,VERT,-,-,-,tank_i_50mmi,OPAQUE,EXTERIOR,00,000  #   4 ||< external
*surf,to_low,SLOP,-,-,-,collector_pl,OPAQUE,ANOTHER,25,003  #   5 ||< to_mid:collec_low
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
