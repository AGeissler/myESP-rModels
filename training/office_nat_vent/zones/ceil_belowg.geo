*Geometry 1.1,GEN,ceiling_belo # tag version, format, zone name
*date Tue Apr  7 14:59:58 2020  # latest file modification 
ceil_below is ceiling below floor void as boundary condition
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,0.00000,0.00000,-0.20000  #   1
*vertex,0.00000,4.50000,-0.20000  #   2
*vertex,3.00000,0.00000,-0.20000  #   3
*vertex,0.00000,6.00000,-0.20000  #   4
*vertex,3.00000,6.00000,-0.20000  #   5
*vertex,12.00000,6.00000,-0.20000  #   6
*vertex,12.00000,0.00000,-0.20000  #   7
*vertex,3.00000,13.50000,-0.20000  #   8
*vertex,3.00000,18.00000,-0.20000  #   9
*vertex,12.00000,18.00000,-0.20000  #  10
*vertex,12.00000,12.00000,-0.20000  #  11
*vertex,0.00000,0.00000,-0.40000  #  12
*vertex,3.00000,0.00000,-0.40000  #  13
*vertex,12.00000,0.00000,-0.40000  #  14
*vertex,12.00000,6.00000,-0.40000  #  15
*vertex,12.00000,12.00000,-0.40000  #  16
*vertex,12.00000,18.00000,-0.40000  #  17
*vertex,3.00000,18.00000,-0.40000  #  18
*vertex,3.00000,13.50000,-0.40000  #  19
*vertex,3.00000,6.00000,-0.40000  #  20
*vertex,0.00000,6.00000,-0.40000  #  21
*vertex,0.00000,4.50000,-0.40000  #  22
# 
# tag, number of vertices followed by list of associated vert
*edges,11,2,1,3,7,6,11,10,9,8,5,4  #   1
*edges,6,13,14,7,3,1,12  #   2
*edges,8,16,17,10,11,6,7,14,15  #   3
*edges,4,17,18,9,10  #   4
*edges,6,19,20,5,8,9,18  #   5
*edges,4,20,21,4,5  #   6
*edges,6,22,12,1,2,4,21  #   7
*edges,11,14,13,12,22,21,20,19,18,17,16,15  #   8
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,structure,CEIL,-,-,-,conc_250,OPAQUE,ANOTHER,07,11  #   1 ||< Base:floor_void
*surf,front,VERT,-,-,-,extern_wall,OPAQUE,EXTERIOR,00,000  #   2 ||< external
*surf,right,VERT,-,-,-,extern_wall,OPAQUE,EXTERIOR,00,000  #   3 ||< external
*surf,back,VERT,-,F-FRAME,VENT,extern_wall,OPAQUE,EXTERIOR,00,000  #   4 ||< external
*surf,left_a,VERT,-,-,-,gyp_gyp_ptn,OPAQUE,SIMILAR,00,00  #   5 ||< identical environment
*surf,back_a,VERT,-,-,-,gyp_gyp_ptn,OPAQUE,SIMILAR,00,00  #   6 ||< identical environment
*surf,left_b,VERT,-,-,-,gyp_gyp_ptn,OPAQUE,SIMILAR,00,00  #   7 ||< identical environment
*surf,Base,FLOR,-,-,-,ceiling_rev,OPAQUE,SIMILAR,00,00  #   8 ||< identical environment
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,180.00,0  # zone base
