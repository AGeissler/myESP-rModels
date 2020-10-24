*Geometry 1.1,GEN,floor_void # tag version, format, zone name
*date Tue Apr  7 14:59:27 2020  # latest file modification 
floor_void is a 200mm floor void
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,0.00000,0.00000,0.00000  #   1
*vertex,0.00000,4.50000,0.00000  #   2
*vertex,1.00000,4.50000,0.00000  #   3
*vertex,3.00000,4.50000,0.00000  #   4
*vertex,3.00000,0.00000,0.00000  #   5
*vertex,0.00000,6.00000,0.00000  #   6
*vertex,3.00000,6.00000,0.00000  #   7
*vertex,9.00000,6.00000,0.00000  #   8
*vertex,12.00000,6.00000,0.00000  #   9
*vertex,12.00000,3.00000,0.00000  #  10
*vertex,12.00000,0.00000,0.00000  #  11
*vertex,9.00000,0.00000,0.00000  #  12
*vertex,6.00000,0.00000,0.00000  #  13
*vertex,3.00000,13.50000,0.00000  #  14
*vertex,3.00000,18.00000,0.00000  #  15
*vertex,6.00000,18.00000,0.00000  #  16
*vertex,9.00000,18.00000,0.00000  #  17
*vertex,12.00000,18.00000,0.00000  #  18
*vertex,12.00000,15.00000,0.00000  #  19
*vertex,12.00000,12.00000,0.00000  #  20
*vertex,9.00000,12.00000,0.00000  #  21
*vertex,6.00000,13.50000,0.00000  #  22
*vertex,12.00000,9.00000,0.00000  #  23
*vertex,0.00000,0.00000,-0.20000  #  24
*vertex,3.00000,0.00000,-0.20000  #  25
*vertex,12.00000,0.00000,-0.20000  #  26
*vertex,12.00000,6.00000,-0.20000  #  27
*vertex,12.00000,12.00000,-0.20000  #  28
*vertex,12.00000,18.00000,-0.20000  #  29
*vertex,3.00000,18.00000,-0.20000  #  30
*vertex,3.00000,13.50000,-0.20000  #  31
*vertex,3.00000,6.00000,-0.20000  #  32
*vertex,0.00000,6.00000,-0.20000  #  33
*vertex,0.00000,4.50000,-0.20000  #  34
# 
# tag, number of vertices followed by list of associated vert
*edges,5,2,1,5,4,3  #   1
*edges,12,6,2,3,4,5,13,12,11,10,9,8,7  #   2
*edges,9,15,14,22,21,20,19,18,17,16  #   3
*edges,8,8,9,23,20,21,22,14,7  #   4
*edges,8,25,26,11,12,13,5,1,24  #   5
*edges,11,28,29,18,19,20,23,9,10,11,26,27  #   6
*edges,6,29,30,15,16,17,18  #   7
*edges,6,31,32,7,14,15,30  #   8
*edges,4,32,33,6,7  #   9
*edges,6,34,24,1,2,6,33  #  10
*edges,11,26,25,24,34,33,32,31,30,29,28,27  #  11
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,man_floor,CEIL,-,-,-,top_pln,OPAQUE,ANOTHER,01,06  #   1 ||< floor:manager
*surf,gen_floor,CEIL,-,-,-,top_pln,OPAQUE,ANOTHER,02,08  #   2 ||< floor:general
*surf,conf_floor,CEIL,-,-,-,top_pln,OPAQUE,ANOTHER,03,06  #   3 ||< floor:conference
*surf,recep_floor,CEIL,-,-,-,top_pln,OPAQUE,ANOTHER,04,16  #   4 ||< floor:reception
*surf,front,VERT,-,-,-,extern_wall,OPAQUE,EXTERIOR,00,000  #   5 ||< external
*surf,right,VERT,-,-,-,extern_wall,OPAQUE,EXTERIOR,00,000  #   6 ||< external
*surf,back,VERT,-,F-FRAME,VENT,extern_wall,OPAQUE,EXTERIOR,00,000  #   7 ||< external
*surf,left_a,VERT,-,-,-,gyp_gyp_ptn,OPAQUE,SIMILAR,00,00  #   8 ||< identical environment
*surf,back_a,VERT,-,-,-,gyp_gyp_ptn,OPAQUE,SIMILAR,00,00  #   9 ||< identical environment
*surf,left_b,VERT,-,-,-,gyp_gyp_ptn,OPAQUE,SIMILAR,00,00  #  10 ||< identical environment
*surf,Base,FLOR,-,-,-,conc_250,OPAQUE,ANOTHER,08,01  #  11 ||< structure:ceiling_belo
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,180.00,0  # zone base
