*Geometry 1.1,GEN,rad_lounge # tag version, format, zone name
*date Tue Oct  3 14:36:42 2017  # latest file modification 
rad_lounge describes a 1.2m x 0.5m radiator
*previous_rotate    90.00,   0.000,   0.000  # prior rotation angle X Y
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,6.00000,0.75000,0.30000  #   1
*vertex,4.80000,0.75000,0.30000  #   2
*vertex,4.80000,0.73500,0.30000  #   3
*vertex,5.00000,0.73500,0.30000  #   4
*vertex,5.00000,0.71500,0.30000  #   5
*vertex,5.90000,0.71500,0.30000  #   6
*vertex,5.90000,0.72500,0.30000  #   7
*vertex,5.05000,0.72500,0.30000  #   8
*vertex,5.05000,0.73500,0.30000  #   9
*vertex,6.00000,0.73500,0.30000  #  10
*vertex,6.00000,0.75000,0.80000  #  11
*vertex,4.80000,0.75000,0.80000  #  12
*vertex,4.80000,0.73500,0.80000  #  13
*vertex,5.00000,0.73500,0.80000  #  14
*vertex,5.00000,0.71500,0.80000  #  15
*vertex,5.90000,0.71500,0.80000  #  16
*vertex,5.90000,0.72500,0.80000  #  17
*vertex,5.05000,0.72500,0.80000  #  18
*vertex,5.05000,0.73500,0.80000  #  19
*vertex,6.00000,0.73500,0.80000  #  20
# 
# tag, number of vertices followed by list of associated vert
*edges,4,1,2,12,11  #   1
*edges,4,2,3,13,12  #   2
*edges,4,3,4,14,13  #   3
*edges,4,4,5,15,14  #   4
*edges,4,5,6,16,15  #   5
*edges,4,6,7,17,16  #   6
*edges,4,7,8,18,17  #   7
*edges,4,8,9,19,18  #   8
*edges,4,9,10,20,19  #   9
*edges,4,10,1,11,20  #  10
*edges,10,11,12,13,14,15,16,17,18,19,20  #  11
*edges,10,1,10,9,8,7,6,5,4,3,2  #  12
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,face,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,02,26  #   1 ||< face:living
*surf,right,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,02,27  #   2 ||< right:living
*surf,back_a,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,02,28  #   3 ||< back_a:living
*surf,back_b,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,02,29  #   4 ||< back_b:living
*surf,fin_a,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,02,30  #   5 ||< fin_a:living
*surf,fin_b,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,02,31  #   6 ||< fin_b:living
*surf,fin_c,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,02,32  #   7 ||< fin_c:living
*surf,fin_d,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,02,33  #   8 ||< fin_d:living
*surf,back_c,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,02,34  #   9 ||< back_c:living
*surf,left,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,02,35  #  10 ||< left:living
*surf,rad_top,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,02,36  #  11 ||< rad_top:living
*surf,rad_base,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,02,37  #  12 ||< rad_base:living
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.03,0  # zone base
