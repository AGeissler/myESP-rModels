*Geometry 1.1,GEN,main_1 # tag version, format, zone name
*date Wed Sep 26 13:35:51 2018  # latest file modification 
This file describes the main_1
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,0.00000,0.00000,2.21000  #   1
*vertex,13.00000,0.00000,2.21000  #   2
*vertex,13.00000,7.97000,2.21000  #   3
*vertex,0.00000,7.97000,2.21000  #   4
*vertex,0.00000,0.00000,4.65000  #   5
*vertex,12.00000,0.00000,4.65000  #   6
*vertex,13.00000,0.00000,4.65000  #   7
*vertex,13.00000,7.97000,4.65000  #   8
*vertex,12.00000,7.97000,4.65000  #   9
*vertex,0.00000,7.97000,4.65000  #  10
*vertex,1.81000,0.00000,2.80000  #  11
*vertex,7.05000,0.00000,2.80000  #  12
*vertex,7.80000,0.00000,2.80000  #  13
*vertex,7.80000,0.00000,4.06000  #  14
*vertex,7.05000,0.00000,4.06000  #  15
*vertex,1.81000,0.00000,4.06000  #  16
*vertex,9.51000,0.00000,2.31000  #  17
*vertex,10.32000,0.00000,2.31000  #  18
*vertex,10.32000,0.00000,4.34000  #  19
*vertex,9.51000,0.00000,4.34000  #  20
*vertex,13.00000,2.38000,2.98000  #  21
*vertex,13.00000,4.11000,2.98000  #  22
*vertex,13.00000,4.68000,2.98000  #  23
*vertex,13.00000,4.68000,3.88000  #  24
*vertex,13.00000,4.11000,3.88000  #  25
*vertex,13.00000,2.38000,3.88000  #  26
*vertex,13.00000,6.96000,2.31000  #  27
*vertex,13.00000,7.87000,2.31000  #  28
*vertex,13.00000,7.87000,4.32000  #  29
*vertex,13.00000,6.96000,4.32000  #  30
*vertex,5.28000,7.97000,2.84000  #  31
*vertex,2.92000,7.97000,2.84000  #  32
*vertex,2.14000,7.97000,2.84000  #  33
*vertex,2.14000,7.97000,4.02000  #  34
*vertex,2.92000,7.97000,4.02000  #  35
*vertex,5.28000,7.97000,4.02000  #  36
# 
# tag, number of vertices followed by list of associated vert
*edges,4,1,4,3,2  #   1
*edges,4,5,6,9,10  #   2
*edges,4,6,7,8,9  #   3
*edges,23,1,2,7,6,5,1,11,16,15,12,11,1,12,15,14,13,12,1,17,20,19,18,17  #   4
*edges,4,11,12,15,16  #   5
*edges,4,12,13,14,15  #   6
*edges,4,17,18,19,20  #   7
*edges,22,2,3,8,7,2,21,26,25,22,21,2,22,25,24,23,22,2,27,30,29,28,27  #   8
*edges,4,21,22,25,26  #   9
*edges,4,22,23,24,25  #  10
*edges,4,27,28,29,30  #  11
*edges,17,3,4,10,9,8,3,31,36,35,32,31,3,32,35,34,33,32  #  12
*edges,4,31,32,35,36  #  13
*edges,4,32,33,34,35  #  14
*edges,4,4,1,5,10  #  15
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,floor,FLOR,-,-,-,M->B,OPAQUE,ANOTHER,03,002  #   1 ||< ceiling:bsmt
*surf,ceiling,CEIL,-,-,-,M->M,OPAQUE,ANOTHER,02,001  #   2 ||< floor:main_2
*surf,ceiling-expo,UNKN,-,-,-,M_ceil_exp,OPAQUE,EXTERIOR,00,000  #   3 ||< external
*surf,front,VERT,-,-,-,M_wall,OPAQUE,EXTERIOR,00,000  #   4 ||< external
*surf,front-aper,VERT,-,-,-,WNDW_200,Optic_20,EXTERIOR,00,000  #   5 ||< external
*surf,front-frame,VERT,-,-,-,FRM_Vnl,OPAQUE,EXTERIOR,00,000  #   6 ||< external
*surf,front-door,VERT,front,-,-,D_mtl_EPS,OPAQUE,EXTERIOR,00,000  #   7 ||< external
*surf,right,VERT,-,-,-,M_wall,OPAQUE,EXTERIOR,00,000  #   8 ||< external
*surf,right-aper,VERT,-,-,-,WNDW_200,Optic_20,EXTERIOR,00,000  #   9 ||< external
*surf,right-frame,VERT,-,-,-,FRM_Vnl,OPAQUE,EXTERIOR,00,000  #  10 ||< external
*surf,right-door,VERT,right,-,-,D_mtl_EPS,OPAQUE,EXTERIOR,00,000  #  11 ||< external
*surf,back,VERT,-,-,-,M_wall,OPAQUE,EXTERIOR,00,000  #  12 ||< external
*surf,back-aper,VERT,-,-,-,WNDW_200,Optic_20,EXTERIOR,00,000  #  13 ||< external
*surf,back-frame,VERT,-,-,-,FRM_Vnl,OPAQUE,EXTERIOR,00,000  #  14 ||< external
*surf,left,VERT,-,-,-,M_wall_adb,OPAQUE,ADIABATIC,00,000  #  15 ||< adiabatic
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,all_applicable   3 # insolation sources
  5  9 13
# 
*base_list,1,1,   103.61 0  # zone base list
