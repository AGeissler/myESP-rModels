*Geometry 1.1,GEN,collec_low # tag version, format, zone name
*date Thu Jan 17 15:39:19 2019  # latest file modification 
collec_low describes lower portion of collector
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,3.65254,0.88131,5.44738  #   1
*vertex,4.85247,0.86898,5.44738  #   2
*vertex,4.85962,1.56472,5.90595  #   3
*vertex,3.65969,1.57680,5.90578  #   4
*vertex,4.85239,0.86073,5.45990  #   5
*vertex,3.65246,0.87306,5.45990  #   6
*vertex,3.65961,1.56855,5.91830  #   7
*vertex,4.85954,1.55647,5.91847  #   8
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
*surf,to_roof,SLOP,-,FRAME,CLOSED,tank_w_100m,OPAQUE,ANOTHER,10,016  #   1 ||< base_col:attic
*surf,low_plate,SLOP,-,-,-,collector_pl,OPAQUE,ANOTHER,28,001  #   2 ||< low_plate:air_low
*surf,to_mid,SLOP,-,-,-,collector_pl,OPAQUE,ANOTHER,26,005  #   3 ||< to_low:collec_mid
*surf,edg_left,VERT,-,-,-,tank_i_50mmi,OPAQUE,EXTERIOR,00,000  #   4 ||< external
*surf,base_edge,SLOP,-,-,-,tank_i_50mmi,OPAQUE,EXTERIOR,00,000  #   5 ||< external
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
