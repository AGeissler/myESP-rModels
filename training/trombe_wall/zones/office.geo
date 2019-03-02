*Geometry 1.1,GEN,office # tag version, format, zone name
*date Tue Feb  5 10:53:55 2019  # latest file modification 
office is behind trombe wall with clear story glazing
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,0.00000,1.70000,0.00000  #   1
*vertex,4.00000,1.70000,0.00000  #   2
*vertex,4.00000,5.70000,0.00000  #   3
*vertex,0.00000,5.70000,0.00000  #   4
*vertex,0.00000,1.70000,3.00000  #   5
*vertex,4.00000,1.70000,3.00000  #   6
*vertex,4.00000,5.70000,3.00000  #   7
*vertex,0.00000,5.70000,3.00000  #   8
*vertex,0.00000,1.20000,2.25000  #   9
*vertex,0.00000,1.20000,3.00000  #  10
*vertex,4.00000,1.20000,2.25000  #  11
*vertex,4.00000,1.20000,3.00000  #  12
*vertex,0.00000,1.70000,2.25000  #  13
*vertex,4.00000,1.70000,2.25000  #  14
*vertex,0.00000,1.70000,0.75000  #  15
*vertex,0.00000,1.70000,1.50000  #  16
*vertex,4.00000,1.70000,0.75000  #  17
*vertex,4.00000,1.70000,1.50000  #  18
*vertex,1.00000,1.70000,0.00000  #  19
*vertex,0.80000,1.70000,0.00000  #  20
*vertex,0.80000,1.70000,0.20000  #  21
*vertex,1.00000,1.70000,0.20000  #  22
*vertex,3.90000,1.20000,2.35000  #  23
*vertex,3.90000,1.20000,2.90000  #  24
*vertex,0.10000,1.20000,2.90000  #  25
*vertex,0.10000,1.20000,2.35000  #  26
*vertex,0.70000,1.20000,2.35000  #  27
*vertex,0.70000,1.20000,2.55000  #  28
*vertex,1.10000,1.20000,2.55000  #  29
*vertex,1.10000,1.20000,2.35000  #  30
*vertex,1.00000,1.20000,2.25000  #  31
*vertex,1.00000,1.20000,2.45000  #  32
*vertex,0.80000,1.20000,2.45000  #  33
*vertex,0.80000,1.20000,2.25000  #  34
*vertex,3.80000,5.70000,0.00000  #  35
*vertex,3.00000,5.70000,0.00000  #  36
*vertex,3.00000,5.70000,2.10000  #  37
*vertex,3.80000,5.70000,2.10000  #  38
# 
# tag, number of vertices followed by list of associated vert
*edges,8,1,20,21,22,19,2,17,15  #   1
*edges,9,2,3,7,6,12,11,14,18,17  #   2
*edges,8,3,35,38,37,36,4,8,7  #   3
*edges,9,4,1,15,16,13,9,10,5,8  #   4
*edges,6,10,12,6,7,8,5  #   5
*edges,8,1,4,36,35,3,2,19,20  #   6
*edges,4,15,17,18,16  #   7
*edges,4,16,18,14,13  #   8
*edges,6,11,31,34,9,13,14  #   9
*edges,4,20,19,22,21  #  10
*edges,18,23,11,12,10,9,34,33,32,31,11,23,30,29,28,27,26,25,24  #  11
*edges,4,34,31,32,33  #  12
*edges,8,30,23,24,25,26,27,28,29  #  13
*edges,4,35,36,37,38  #  14
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,wall_tlow,VERT,-,-,-,trombe_mass,OPAQUE,ANOTHER,01,003  #   1 ||< trombe_face:trombe_low
*surf,right_ptn,VERT,-,-,-,gyp_blk_ptn,OPAQUE,SIMILAR,00,000  #   2 ||< identical environment
*surf,back_ptn,VERT,-,-,-,gyp_blk_ptn,OPAQUE,SIMILAR,00,000  #   3 ||< identical environment
*surf,left_ptn,VERT,-,-,-,gyp_blk_ptn,OPAQUE,SIMILAR,00,000  #   4 ||< identical environment
*surf,ceiling,CEIL,-,-,-,trombe_mass,OPAQUE,SIMILAR,00,000  #   5 ||< identical environment
*surf,floor,FLOR,-,-,-,grnd_floor,OPAQUE,GROUND,01,000  #   6 ||< ground profile  1
*surf,wall_tmid,VERT,-,-,-,trombe_mass,OPAQUE,ANOTHER,02,003  #   7 ||< trombe_face:trombe_mid
*surf,wall_tup,VERT,-,-,-,trombe_mass,OPAQUE,ANOTHER,03,003  #   8 ||< trombe_face:trombe_mid2
*surf,top_of_tw,FLOR,-,-,-,trombe_mas_a,OPAQUE,SIMILAR,00,000  #   9 ||< identical environment
*surf,low_in_vent,VERT,wall_tlow,GRILL,OPEN,int_doors,OPAQUE,ANOTHER,01,008  #  10 ||< low_in_vent:trombe_low
*surf,frame_open,VERT,-,-,-,door,OPAQUE,ANOTHER,04,003  #  11 ||< frame_open:trombe_up
*surf,up_grill,VERT,frame_open,GRILL,OPEN,int_doors,OPAQUE,ANOTHER,04,007  #  12 ||< up_grill:trombe_up
*surf,up_in_glz,VERT,frame_open,WINDOW,CLOSED,single_glz,SCF8477_10nb,ANOTHER,04,008  #  13 ||< up_in_glz:trombe_up
*surf,bk_door,VERT,back_ptn,DOOR,UNDERCUT,int_doors,OPAQUE,EXTERIOR,00,000  #  14 ||< external
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,2,6,9,    18.00 0  # zone base list
# 
# visual entities:
#  *vis = visual blocks
#  *vis3 = visual 3 axis
#  *visp = visual polys
*visual_start
*vis,0.0000,1.2000,0.0000,4.0000,0.5000,0.7500,0.00,1.00,low-mass trombe_mas_a  # visual   1
*vis,0.0000,1.2000,0.7500,4.0000,0.5000,0.7500,0.00,1.00,mid-mass trombe_mas_a  # visual   2
*vis,0.0000,1.2000,1.5000,4.0000,0.5000,0.7500,0.00,1.00,high-mass trombe_mas_a  # visual   3
*end_visual
