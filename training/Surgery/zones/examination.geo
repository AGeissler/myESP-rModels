*Geometry 1.1,GEN,examination # tag version, format, zone name
*date Thu May  7 15:21:20 2020  # latest file modification 
examination for one doctor and one visitor
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,0.00000,0.00000,0.00000  #   1
*vertex,4.00000,0.00000,0.00000  #   2
*vertex,4.00000,4.00000,0.00000  #   3
*vertex,0.00000,4.00000,0.00000  #   4
*vertex,0.00000,0.00000,3.00000  #   5
*vertex,4.00000,0.00000,3.00000  #   6
*vertex,4.00000,4.00000,4.50000  #   7
*vertex,0.00000,4.00000,4.50000  #   8
*vertex,4.00000,4.00000,3.00000  #   9
*vertex,0.00000,4.00000,3.00000  #  10
*vertex,4.00000,2.50000,0.00000  #  11
*vertex,4.00000,2.50000,2.10000  #  12
*vertex,4.00000,1.50000,2.10000  #  13
*vertex,4.00000,1.50000,0.00000  #  14
*vertex,3.78885,4.00000,3.07918  #  15
*vertex,0.21115,4.00000,3.07918  #  16
*vertex,0.21115,4.00000,4.42082  #  17
*vertex,3.78885,4.00000,4.42082  #  18
*vertex,0.50000,0.00000,2.00000  #  19
*vertex,3.50000,0.00000,2.00000  #  20
*vertex,3.50000,0.00000,2.75000  #  21
*vertex,0.50000,0.00000,2.75000  #  22
*vertex,0.60000,0.00000,2.10000  #  23
*vertex,3.40000,0.00000,2.10000  #  24
*vertex,3.40000,0.00000,2.65000  #  25
*vertex,0.60000,0.00000,2.65000  #  26
*vertex,4.00000,3.00000,3.50000  #  27
*vertex,4.00000,3.30000,3.50000  #  28
*vertex,4.00000,3.30000,3.80000  #  29
*vertex,4.00000,3.00000,3.80000  #  30
# 
# tag, number of vertices followed by list of associated vert
*edges,10,1,2,6,5,1,19,22,21,20,19  #   1
*edges,5,4,1,5,8,10  #   2
*edges,4,5,6,7,8  #   3
*edges,6,1,4,3,11,14,2  #   4
*edges,4,3,4,10,9  #   5
*edges,8,11,3,9,6,2,14,13,12  #   6
*edges,4,14,11,12,13  #   7
*edges,9,6,9,28,27,30,29,28,9,7  #   8
*edges,10,9,10,8,7,9,15,18,17,16,15  #   9
*edges,4,15,16,17,18  #  10
*edges,10,19,23,26,25,24,23,19,20,21,22  #  11
*edges,4,23,24,25,26  #  12
*edges,4,27,28,29,30  #  13
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,south_wall,VERT,-,WALL,-,extern_wall,OPAQUE,EXTERIOR,00,000  #   1 ||< external
*surf,west_wall,VERT,-,WALL,-,extern_wall,OPAQUE,EXTERIOR,00,000  #   2 ||< external
*surf,ceiling,SLOP,-,ROOF,-,roof_1,OPAQUE,EXTERIOR,00,000  #   3 ||< external
*surf,floor,FLOR,-,-,-,grnd_floor,OPAQUE,GROUND,01,00  #   4 ||< ground profile  1
*surf,partn_a,VERT,-,-,-,mass_part,OPAQUE,ANOTHER,01,01  #   5 ||< partn_a:reception
*surf,partn_b,VERT,-,-,-,mass_part,OPAQUE,ANOTHER,01,02  #   6 ||< partn_b:reception
*surf,door,VERT,partn_b,DOOR,UNDERCUT,int_doors,OPAQUE,ANOTHER,01,12  #   7 ||< door:reception
*surf,triang_wall,VERT,-,WALL,-,extern_wall,OPAQUE,EXTERIOR,00,000  #   8 ||< external
*surf,north_wall,VERT,-,F-FRAME,VENT,extern_wall,OPAQUE,EXTERIOR,00,000  #   9 ||< external
*surf,north_glz,VERT,north_wall,C-WINDOW,CRACK,dbl_glz,DCF7671_06nb,EXTERIOR,00,000  #  10 ||< external
*surf,south_frame,VERT,south_wall,F-FRAME,VENT,sash_fr92mm,OPAQUE,EXTERIOR,00,000  #  11 ||< external
*surf,south_glaze,VERT,south_frame,C-WINDOW,CRACK,dbl_glz,TRAN,EXTERIOR,00,000  #  12 ||< external
*surf,grill,VERT,triang_wall,GRILL,EXTRACT,steel_gr_3mm,OPAQUE,EXTERIOR,00,000  #  13 ||< external
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,all_applicable   2 # insolation sources
 10 11
# 
*base_list,2,6,4,    25.90 0  # zone base list
