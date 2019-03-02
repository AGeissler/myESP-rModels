*Geometry 1.1,GEN,bypass # tag version, format, zone name
*date Tue Feb  5 10:39:04 2019  # latest file modification 
bypass describes a vertical air channel for circulation
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,-0.20000,1.00000,0.00000  #   1
*vertex,0.00000,1.00000,0.00000  #   2
*vertex,0.00000,1.20000,0.00000  #   3
*vertex,-0.20000,1.20000,0.00000  #   4
*vertex,-0.20000,1.00000,3.00000  #   5
*vertex,0.00000,1.00000,3.00000  #   6
*vertex,0.00000,1.20000,3.00000  #   7
*vertex,-0.20000,1.20000,3.00000  #   8
*vertex,0.00000,1.00000,0.75000  #   9
*vertex,0.00000,1.20000,0.75000  #  10
*vertex,0.00000,1.00000,1.50000  #  11
*vertex,0.00000,1.20000,1.50000  #  12
*vertex,0.00000,1.00000,2.25000  #  13
*vertex,0.00000,1.20000,2.25000  #  14
# 
# tag, number of vertices followed by list of associated vert
*edges,7,1,2,9,11,13,6,5  #   1
*edges,7,3,4,8,7,14,12,10  #   2
*edges,4,4,1,5,8  #   3
*edges,4,5,6,7,8  #   4
*edges,4,1,4,3,2  #   5
*edges,4,2,3,10,9  #   6
*edges,4,9,10,12,11  #   7
*edges,4,11,12,14,13  #   8
*edges,4,13,14,7,6  #   9
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,front,VERT,-,-,-,insul_mtl_p,OPAQUE,EXTERIOR,00,000  #   1 ||< external
*surf,back,VERT,-,-,-,insul_mtl_p,OPAQUE,ADIABATIC,00,000  #   2 ||< adiabatic
*surf,left,VERT,-,F-FRAME,CRACK,insul_mtl_p,OPAQUE,ADIABATIC,00,000  #   3 ||< adiabatic
*surf,top,CEIL,-,-,-,insul_mtl_p,OPAQUE,ADIABATIC,00,000  #   4 ||< adiabatic
*surf,base,FLOR,-,-,-,insul_mtl_p,OPAQUE,ADIABATIC,00,000  #   5 ||< adiabatic
*surf,fict_low,VERT,-,GRILL,OPEN,fictitious,SC_fictit,ANOTHER,01,004  #   6 ||< fict_left:trombe_low
*surf,fict_mid,VERT,-,-,-,fictitious,SC_fictit,ANOTHER,02,004  #   7 ||< fict_left:trombe_mid
*surf,fict_mid2,VERT,-,-,-,fictitious,SC_fictit,ANOTHER,03,004  #   8 ||< fict_left:trombe_mid2
*surf,fict_up,VERT,-,GRILL,OPEN,fictitious,SC_fictit,ANOTHER,04,004  #   9 ||< fict_left:trombe_up
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,2,6,5,     0.19 0  # zone base list
