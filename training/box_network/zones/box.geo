*Geometry 1.1,GEN,box # tag version, format, zone name
*date Tue Apr 24 15:13:46 2018  # latest file modification 
box describes a leaky room
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,1.00000,1.00000,0.00000  #   1
*vertex,4.00000,1.00000,0.00000  #   2
*vertex,4.00000,4.00000,0.00000  #   3
*vertex,1.00000,4.00000,0.00000  #   4
*vertex,1.00000,1.00000,2.70000  #   5
*vertex,4.00000,1.00000,2.70000  #   6
*vertex,4.00000,4.00000,2.70000  #   7
*vertex,1.00000,4.00000,2.70000  #   8
*vertex,1.50000,1.00000,0.00000  #   9
*vertex,2.30000,1.00000,0.00000  #  10
*vertex,2.30000,1.00000,2.10000  #  11
*vertex,1.50000,1.00000,2.10000  #  12
*vertex,3.00000,4.00000,2.00000  #  13
*vertex,2.80000,4.00000,2.00000  #  14
*vertex,2.80000,4.00000,2.20000  #  15
*vertex,3.00000,4.00000,2.20000  #  16
*vertex,4.00000,1.15000,0.15000  #  17
*vertex,4.00000,3.85000,0.15000  #  18
*vertex,4.00000,3.85000,2.55000  #  19
*vertex,4.00000,1.15000,2.55000  #  20
# 
# tag, number of vertices followed by list of associated vert
*edges,8,1,9,12,11,10,2,6,5  #   1
*edges,10,2,3,7,6,2,17,20,19,18,17  #   2
*edges,10,3,4,8,7,3,13,16,15,14,13  #   3
*edges,4,4,1,5,8  #   4
*edges,4,5,6,7,8  #   5
*edges,6,1,4,3,2,10,9  #   6
*edges,4,9,10,11,12  #   7
*edges,4,13,14,15,16  #   8
*edges,4,17,18,19,20  #   9
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,front,VERT,-,-,-,extern_wall,OPAQUE,EXTERIOR,00,000  #   1 ||< external
*surf,right_frm,VERT,-,-,-,extern_wall,OPAQUE,EXTERIOR,00,000  #   2 ||< external
*surf,back,VERT,-,-,-,extern_wall,OPAQUE,EXTERIOR,00,000  #   3 ||< external
*surf,left,VERT,-,-,-,extern_wall,OPAQUE,EXTERIOR,00,000  #   4 ||< external
*surf,top,CEIL,-,-,-,roof_1,OPAQUE,EXTERIOR,00,000  #   5 ||< external
*surf,floor,FLOR,-,-,-,grnd_floor,OPAQUE,GROUND,01,0  #   6 ||< ground profile  1
*surf,door,VERT,front,DOOR,UNDERCUT,door,OPAQUE,EXTERIOR,00,000  #   7 ||< external
*surf,grill,VERT,back,GRILL,EXTRACT,insul_mtl_p,OPAQUE,EXTERIOR,00,000  #   8 ||< external
*surf,glazing,VERT,right_frm,C-WINDOW,CRACK,dbl_glz,DCF7671_06nb,EXTERIOR,00,000  #   9 ||< external
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,9.00,0  # zone base
