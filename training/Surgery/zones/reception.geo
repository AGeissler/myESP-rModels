*Geometry 1.1,GEN,reception # tag version, format, zone name
*date Thu May  7 15:15:45 2020  # latest file modification 
reception has one staff and up to 4 visitors
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,0.00000,4.00000,0.00000  #   1
*vertex,4.00000,4.00000,0.00000  #   2
*vertex,4.00000,0.00000,0.00000  #   3
*vertex,8.00000,0.00000,0.00000  #   4
*vertex,8.00000,7.00000,0.00000  #   5
*vertex,4.00000,7.00000,0.00000  #   6
*vertex,0.00000,7.00000,0.00000  #   7
*vertex,0.00000,4.00000,3.00000  #   8
*vertex,4.00000,4.00000,3.00000  #   9
*vertex,4.00000,0.00000,3.00000  #  10
*vertex,8.00000,0.00000,3.00000  #  11
*vertex,8.00000,7.00000,3.00000  #  12
*vertex,4.00000,7.00000,3.00000  #  13
*vertex,0.00000,7.00000,3.00000  #  14
*vertex,4.50000,0.00000,2.00000  #  15
*vertex,7.50000,0.00000,2.00000  #  16
*vertex,7.50000,0.00000,2.75000  #  17
*vertex,4.50000,0.00000,2.75000  #  18
*vertex,7.50000,7.00000,2.00000  #  19
*vertex,4.50000,7.00000,2.00000  #  20
*vertex,4.50000,7.00000,2.75000  #  21
*vertex,7.50000,7.00000,2.75000  #  22
*vertex,4.00000,2.50000,0.00000  #  23
*vertex,4.00000,1.50000,0.00000  #  24
*vertex,4.00000,1.50000,2.10000  #  25
*vertex,4.00000,2.50000,2.10000  #  26
*vertex,8.00000,1.00000,0.00000  #  27
*vertex,8.00000,1.80000,0.00000  #  28
*vertex,8.00000,1.80000,2.10000  #  29
*vertex,8.00000,1.00000,2.10000  #  30
*vertex,4.60000,0.00000,2.10000  #  31
*vertex,7.40000,0.00000,2.10000  #  32
*vertex,7.40000,0.00000,2.65000  #  33
*vertex,4.60000,0.00000,2.65000  #  34
*vertex,7.40000,7.00000,2.10000  #  35
*vertex,4.60000,7.00000,2.10000  #  36
*vertex,4.60000,7.00000,2.65000  #  37
*vertex,7.40000,7.00000,2.65000  #  38
# 
# tag, number of vertices followed by list of associated vert
*edges,4,1,2,9,8  #   1
*edges,8,2,23,26,25,24,3,10,9  #   2
*edges,10,3,4,11,10,3,15,18,17,16,15  #   3
*edges,8,4,27,30,29,28,5,12,11  #   4
*edges,10,5,6,13,12,5,19,22,21,20,19  #   5
*edges,4,6,7,14,13  #   6
*edges,4,7,1,8,14  #   7
*edges,7,8,9,10,11,12,13,14  #   8
*edges,11,1,7,6,5,28,27,4,3,24,23,2  #   9
*edges,10,15,31,34,33,32,31,15,16,17,18  #  10
*edges,10,19,35,38,37,36,35,19,20,21,22  #  11
*edges,4,23,24,25,26  #  12
*edges,4,27,28,29,30  #  13
*edges,4,31,32,33,34  #  14
*edges,4,35,36,37,38  #  15
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,partn_a,VERT,-,-,-,mass_part,OPAQUE,ANOTHER,02,05  #   1 ||< partn_a:examination
*surf,partn_b,VERT,-,-,-,mass_part,OPAQUE,ANOTHER,02,06  #   2 ||< partn_b:examination
*surf,south_wall,VERT,-,WALL,-,extern_wall,OPAQUE,EXTERIOR,00,000  #   3 ||< external
*surf,east_wall,VERT,-,WALL,-,extern_wall,OPAQUE,EXTERIOR,00,000  #   4 ||< external
*surf,north_wall,VERT,-,WALL,-,extern_wall,OPAQUE,EXTERIOR,00,000  #   5 ||< external
*surf,partn_c,VERT,-,-,-,mass_part,OPAQUE,SIMILAR,00,00  #   6 ||< identical environment
*surf,west_wall,VERT,-,WALL,-,extern_wall,OPAQUE,EXTERIOR,00,000  #   7 ||< external
*surf,ceiling,CEIL,-,ROOF,FLAT,roof_1,OPAQUE,EXTERIOR,00,000  #   8 ||< external
*surf,floor,FLOR,-,-,-,grnd_floor,OPAQUE,GROUND,01,00  #   9 ||< ground profile  1
*surf,south_frame,VERT,south_wall,F-FRAME,VENT,sash_fr92mm,OPAQUE,EXTERIOR,00,000  #  10 ||< external
*surf,north_frane,VERT,north_wall,F-FRAME,VENT,sash_fr92mm,OPAQUE,EXTERIOR,00,000  #  11 ||< external
*surf,door,VERT,partn_b,DOOR,UNDERCUT,int_doors,OPAQUE,ANOTHER,02,07  #  12 ||< door:examination
*surf,entr_door,VERT,east_wall,DOOR,UNDERCUT,door,OPAQUE,EXTERIOR,00,000  #  13 ||< external
*surf,south_glaze,VERT,south_frame,C-WINDOW,CRACK,dbl_glz,TRAN,EXTERIOR,00,000  #  14 ||< external
*surf,north_glaze,VERT,north_frane,C-WINDOW,CRACK,dbl_glz,TRAN,EXTERIOR,00,000  #  15 ||< external
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,all_applicable   2 # insolation sources
 10 11
# 
*base_list,1,9,    40.00 0  # zone base list
