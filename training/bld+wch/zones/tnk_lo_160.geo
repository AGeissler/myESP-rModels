*Geometry 1.1,GEN,tnk_lo_160 # tag version, format, zone name
*date Sun Apr  5 19:03:09 2015  # latest file modification 
tnk_lo_160 describes 160 litre accummulator tank 700mm diam
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,4.60000,5.50000,5.50000  #   1
*vertex,4.77500,5.45311,5.50000  #   2
*vertex,4.90311,5.32500,5.50000  #   3
*vertex,4.95000,5.15000,5.50000  #   4
*vertex,4.90311,4.97500,5.50000  #   5
*vertex,4.77500,4.84689,5.50000  #   6
*vertex,4.60000,4.80000,5.50000  #   7
*vertex,4.42500,4.84689,5.50000  #   8
*vertex,4.29689,4.97500,5.50000  #   9
*vertex,4.25000,5.15000,5.50000  #  10
*vertex,4.29689,5.32500,5.50000  #  11
*vertex,4.42500,5.45311,5.50000  #  12
*vertex,4.60000,5.50000,5.95000  #  13
*vertex,4.77500,5.45311,5.95000  #  14
*vertex,4.90311,5.32500,5.95000  #  15
*vertex,4.95000,5.15000,5.95000  #  16
*vertex,4.90311,4.97500,5.95000  #  17
*vertex,4.77500,4.84689,5.95000  #  18
*vertex,4.60000,4.80000,5.95000  #  19
*vertex,4.42500,4.84689,5.95000  #  20
*vertex,4.29689,4.97500,5.95000  #  21
*vertex,4.25000,5.15000,5.95000  #  22
*vertex,4.29689,5.32500,5.95000  #  23
*vertex,4.42500,5.45311,5.95000  #  24
# 
# tag, number of vertices followed by list of associated vert
*edges,12,1,2,3,4,5,6,7,8,9,10,11,12  #  1
*edges,12,24,23,22,21,20,19,18,17,16,15,14,13  #  2
*edges,4,12,11,23,24  #  3
*edges,4,11,10,22,23  #  4
*edges,4,10,9,21,22  #  5
*edges,4,9,8,20,21  #  6
*edges,4,8,7,19,20  #  7
*edges,4,7,6,18,19  #  8
*edges,4,6,5,17,18  #  9
*edges,4,5,4,16,17  # 10
*edges,4,4,3,15,16  # 11
*edges,4,3,2,14,15  # 12
*edges,4,2,1,13,14  # 13
*edges,4,1,12,24,13  # 14
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,tnk,FLOR,-,-,-,tank_w_100m,OPAQUE,ANOTHER,10,19  #   1 ||< tnk:attic
*surf,t_tnk,CEIL,-,-,-,collector_pl,OPAQUE,ANOTHER,14,01  #   2 ||< tnk:tnk_md_160
*surf,edg_2tnk,VERT,-,-,-,tank_w_100m,OPAQUE,ANOTHER,10,20  #   3 ||< edg_2tnk:attic
*surf,edg_3tnk,VERT,-,-,-,tank_w_100m,OPAQUE,ANOTHER,10,21  #   4 ||< edg_3tnk:attic
*surf,edg_4tnk,VERT,-,-,-,tank_w_100m,OPAQUE,ANOTHER,10,22  #   5 ||< edg_4tnk:attic
*surf,edg_5tnk,VERT,-,-,-,tank_w_100m,OPAQUE,ANOTHER,10,23  #   6 ||< edg_5tnk:attic
*surf,edg_6tnk,VERT,-,-,-,tank_w_100m,OPAQUE,ANOTHER,10,24  #   7 ||< edg_6tnk:attic
*surf,edg_7tnk,VERT,-,-,-,tank_w_100m,OPAQUE,ANOTHER,10,25  #   8 ||< edg_7tnk:attic
*surf,edg_8tnk,VERT,-,-,-,tank_w_100m,OPAQUE,ANOTHER,10,26  #   9 ||< edg_8tnk:attic
*surf,edg_9tnk,VERT,-,-,-,tank_w_100m,OPAQUE,ANOTHER,10,27  #  10 ||< edg_9tnk:attic
*surf,edg_10tnk,VERT,-,-,-,tank_w_100m,OPAQUE,ANOTHER,10,28  #  11 ||< edg_10tnk:attic
*surf,edg_11tnk,VERT,-,-,-,tank_w_100m,OPAQUE,ANOTHER,10,29  #  12 ||< edg_11tnk:attic
*surf,edg_12tnk,VERT,-,-,-,tank_w_100m,OPAQUE,ANOTHER,10,30  #  13 ||< edg_12tnk:attic
*surf,edg_13tnk,VERT,-,-,-,tank_w_100m,OPAQUE,ANOTHER,10,31  #  14 ||< edg_13tnk:attic
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.37,0  # zone base
