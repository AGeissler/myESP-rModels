*Geometry 1.1,GEN,tnk_hi_160 # tag version, format, zone name
*date Mon Jan 21 08:57:49 2019  # latest file modification 
tnk_hi_160 describes top portion of 500 litre accumulator
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,4.60000,5.50000,6.40000  #   1
*vertex,4.77500,5.45311,6.40000  #   2
*vertex,4.90311,5.32500,6.40000  #   3
*vertex,4.95000,5.15000,6.40000  #   4
*vertex,4.90311,4.97500,6.40000  #   5
*vertex,4.77500,4.84689,6.40000  #   6
*vertex,4.60000,4.80000,6.40000  #   7
*vertex,4.42500,4.84689,6.40000  #   8
*vertex,4.29689,4.97500,6.40000  #   9
*vertex,4.25000,5.15000,6.40000  #  10
*vertex,4.29689,5.32500,6.40000  #  11
*vertex,4.42500,5.45311,6.40000  #  12
*vertex,4.60000,5.50000,6.85000  #  13
*vertex,4.77500,5.45311,6.85000  #  14
*vertex,4.90311,5.32500,6.85000  #  15
*vertex,4.95000,5.15000,6.85000  #  16
*vertex,4.90311,4.97500,6.85000  #  17
*vertex,4.77500,4.84689,6.85000  #  18
*vertex,4.60000,4.80000,6.85000  #  19
*vertex,4.42500,4.84689,6.85000  #  20
*vertex,4.29689,4.97500,6.85000  #  21
*vertex,4.25000,5.15000,6.85000  #  22
*vertex,4.29689,5.32500,6.85000  #  23
*vertex,4.42500,5.45311,6.85000  #  24
# 
# tag, number of vertices followed by list of associated vert
*edges,12,1,2,3,4,5,6,7,8,9,10,11,12  #   1
*edges,12,24,23,22,21,20,19,18,17,16,15,14,13  #   2
*edges,4,12,11,23,24  #   3
*edges,4,11,10,22,23  #   4
*edges,4,10,9,21,22  #   5
*edges,4,9,8,20,21  #   6
*edges,4,8,7,19,20  #   7
*edges,4,7,6,18,19  #   8
*edges,4,6,5,17,18  #   9
*edges,4,5,4,16,17  #  10
*edges,4,4,3,15,16  #  11
*edges,4,3,2,14,15  #  12
*edges,4,2,1,13,14  #  13
*edges,4,1,12,24,13  #  14
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,tnk,FLOR,-,PARTN,-,collector_pl,OPAQUE,ANOTHER,14,002  #   1 ||< t_tnk:tnk_md_160
*surf,t_tnk,CEIL,-,PARTN,-,collector_pl,OPAQUE,ANOTHER,10,044  #   2 ||< t_tnk:attic
*surf,edg_2tnk,VERT,-,PARTN,-,tank_w_100m,OPAQUE,ANOTHER,10,045  #   3 ||< edg_2ttnk:attic
*surf,edg_3tnk,VERT,-,PARTN,-,tank_w_100m,OPAQUE,ANOTHER,10,046  #   4 ||< edg_3ttnk:attic
*surf,edg_4tnk,VERT,-,PARTN,-,tank_w_100m,OPAQUE,ANOTHER,10,047  #   5 ||< edg_4ttnk:attic
*surf,edg_5tnk,VERT,-,PARTN,-,tank_w_100m,OPAQUE,ANOTHER,10,048  #   6 ||< edg_5ttnk:attic
*surf,edg_6tnk,VERT,-,PARTN,-,tank_w_100m,OPAQUE,ANOTHER,10,049  #   7 ||< edg_6ttnk:attic
*surf,edg_7tnk,VERT,-,PARTN,-,tank_w_100m,OPAQUE,ANOTHER,10,050  #   8 ||< edg_7ttnk:attic
*surf,edg_8tnk,VERT,-,PARTN,-,tank_w_100m,OPAQUE,ANOTHER,10,051  #   9 ||< edg_8ttnk:attic
*surf,edg_9tnk,VERT,-,PARTN,-,tank_w_100m,OPAQUE,ANOTHER,10,052  #  10 ||< edg_9ttnk:attic
*surf,edg_10tnk,VERT,-,PARTN,-,tank_w_100m,OPAQUE,ANOTHER,10,053  #  11 ||< edg_10ttnk:attic
*surf,edg_11tnk,VERT,-,PARTN,-,tank_w_100m,OPAQUE,ANOTHER,10,054  #  12 ||< edg_11ttnk:attic
*surf,edg_12tnk,VERT,-,PARTN,-,tank_w_100m,OPAQUE,ANOTHER,10,055  #  13 ||< edg_12ttnk:attic
*surf,edg_13tnk,VERT,-,PARTN,-,tank_w_100m,OPAQUE,ANOTHER,10,056  #  14 ||< edg_13ttnk:attic
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.37,0  # zone base
