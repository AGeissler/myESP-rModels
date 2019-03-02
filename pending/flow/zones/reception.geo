*Geometry 1.1,GEN,reception # tag version, format, zone name
*date Wed Feb  6 15:09:53 2019  # latest file modification 
reception describes a...
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,1.00000,1.00000,0.00000  #   1
*vertex,9.00000,1.00000,0.00000  #   2
*vertex,9.00000,4.50000,0.00000  #   3
*vertex,9.00000,9.00000,0.00000  #   4
*vertex,5.00000,9.00000,0.00000  #   5
*vertex,5.00000,5.00000,0.00000  #   6
*vertex,1.00000,5.00000,0.00000  #   7
*vertex,1.00000,1.00000,3.00000  #   8
*vertex,9.00000,1.00000,3.00000  #   9
*vertex,9.00000,4.50000,3.00000  #  10
*vertex,9.00000,9.00000,3.00000  #  11
*vertex,5.00000,9.00000,3.00000  #  12
*vertex,5.00000,5.00000,3.00000  #  13
*vertex,1.00000,5.00000,3.00000  #  14
*vertex,2.00000,1.00000,1.00000  #  15
*vertex,8.00000,1.00000,1.00000  #  16
*vertex,8.00000,1.00000,2.25000  #  17
*vertex,2.00000,1.00000,2.25000  #  18
*vertex,9.00000,5.00000,0.00000  #  19
*vertex,9.00000,6.00000,0.00000  #  20
*vertex,9.00000,6.00000,2.50000  #  21
*vertex,9.00000,5.00000,2.50000  #  22
*vertex,5.00000,7.00000,0.00000  #  23
*vertex,5.00000,6.00000,0.00000  #  24
*vertex,5.00000,6.00000,2.50000  #  25
*vertex,5.00000,7.00000,2.50000  #  26
*vertex,1.00000,3.00000,0.00000  #  27
*vertex,1.00000,2.00000,0.00000  #  28
*vertex,1.00000,2.00000,2.50000  #  29
*vertex,1.00000,3.00000,2.50000  #  30
*vertex,9.00000,2.00000,1.00000  #  31
*vertex,9.00000,4.00000,1.00000  #  32
*vertex,9.00000,4.00000,2.25000  #  33
*vertex,9.00000,2.00000,2.25000  #  34
# 
# tag, number of vertices followed by list of associated vert
*edges,10,1,2,9,8,1,15,18,17,16,15  #   1
*edges,10,2,3,10,9,2,31,34,33,32,31  #   2
*edges,8,3,19,22,21,20,4,11,10  #   3
*edges,4,4,5,12,11  #   4
*edges,8,5,23,26,25,24,6,13,12  #   5
*edges,4,6,7,14,13  #   6
*edges,8,7,27,30,29,28,1,8,14  #   7
*edges,7,8,9,10,11,12,13,14  #   8
*edges,13,1,28,27,7,6,24,23,5,4,20,19,3,2  #   9
*edges,4,15,16,17,18  #  10
*edges,4,19,20,21,22  #  11
*edges,4,23,24,25,26  #  12
*edges,4,27,28,29,30  #  13
*edges,4,31,32,33,34  #  14
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,south,VERT,-,WALL,-,extern_wall,OPAQUE,EXTERIOR,00,000  #   1 ||< external
*surf,east,VERT,-,WALL,-,extern_wall,OPAQUE,EXTERIOR,00,000  #   2 ||< external
*surf,pasg,VERT,-,PARTN,-,gyp_blk_ptn,OPAQUE,SIMILAR,00,00  #   3 ||< identical environment
*surf,north,VERT,-,WALL,-,extern_wall,OPAQUE,EXTERIOR,00,000  #   4 ||< external
*surf,part_a,VERT,-,PARTN,-,gyp_gyp_ptn,OPAQUE,ANOTHER,02,02  #   5 ||< part_a:office
*surf,part_b,VERT,-,PARTN,-,gyp_gyp_ptn,OPAQUE,ANOTHER,02,01  #   6 ||< part_b:office
*surf,west,VERT,-,WALL,-,extern_wall,OPAQUE,EXTERIOR,00,000  #   7 ||< external
*surf,ceiling,CEIL,-,PARTN,-,ceiling,OPAQUE,ANOTHER,03,01  #   8 ||< Ceiling_r:roof_space
*surf,floor,FLOR,-,FLOOR,EXTGRND,floor_1,OPAQUE,CONSTANT,20,00  #   9 ||< constant @ 20dC &   0W rad
*surf,glz_s,VERT,-,C-WINDOW,SASH,dbl_glz,DCF7671_06nb,EXTERIOR,00,000  #  10 ||< external
*surf,door_p,VERT,-,DOOR,CLOSED,door,OPAQUE,SIMILAR,00,00  #  11 ||< identical environment
*surf,door_a,VERT,-,DOOR,UNDERCUT,door,OPAQUE,ANOTHER,02,07  #  12 ||< door_a:office
*surf,door_w,VERT,-,DOOR,UNDERCUT,door,OPAQUE,EXTERIOR,00,000  #  13 ||< external
*surf,east_glz,VERT,-,C-WINDOW,SASH,dbl_glz,DCF7671_06nb,EXTERIOR,00,000  #  14 ||< external
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,1,9,    48.00 0  # zone base list
