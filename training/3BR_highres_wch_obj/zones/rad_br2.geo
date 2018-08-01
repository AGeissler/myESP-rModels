*Geometry 1.1,GEN,rad_br2 # tag version, format, zone name
*date Tue Oct  3 14:36:00 2017  # latest file modification 
rad_br2 describes water filled radiator in bedroom 2
*previous_rotate   180.00,   0.000,   1.015  # prior rotation angle X Y
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,4.80000,8.40000,3.00000  #   1
*vertex,5.90000,8.40000,3.00000  #   2
*vertex,5.90000,8.41500,3.00000  #   3
*vertex,5.80000,8.41500,3.00000  #   4
*vertex,5.80000,8.44000,3.00000  #   5
*vertex,4.90000,8.44000,3.00000  #   6
*vertex,4.90000,8.42800,3.00000  #   7
*vertex,5.75000,8.42800,3.00000  #   8
*vertex,5.75000,8.41500,3.00000  #   9
*vertex,4.80000,8.41500,3.00000  #  10
*vertex,4.80000,8.40000,3.50000  #  11
*vertex,5.90000,8.40000,3.50000  #  12
*vertex,5.90000,8.41500,3.50000  #  13
*vertex,5.80000,8.41500,3.50000  #  14
*vertex,5.80000,8.44000,3.50000  #  15
*vertex,4.90000,8.44000,3.50000  #  16
*vertex,4.90000,8.42800,3.50000  #  17
*vertex,5.75000,8.42800,3.50000  #  18
*vertex,5.75000,8.41500,3.50000  #  19
*vertex,4.80000,8.41500,3.50000  #  20
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
*surf,face,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,18  #   1 ||< face:bedroom2
*surf,right,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,19  #   2 ||< right_r:bedroom2
*surf,back_a,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,20  #   3 ||< back_a:bedroom2
*surf,back_b,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,21  #   4 ||< back_b:bedroom2
*surf,fin_a,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,22  #   5 ||< fin_a:bedroom2
*surf,fin_b,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,23  #   6 ||< fin_b:bedroom2
*surf,fin_c,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,24  #   7 ||< fin_c:bedroom2
*surf,fin_d,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,25  #   8 ||< fin_d:bedroom2
*surf,back_c,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,26  #   9 ||< back_c:bedroom2
*surf,left,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,27  #  10 ||< left_rad:bedroom2
*surf,rad_top,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,28  #  11 ||< rad_top:bedroom2
*surf,rad_base,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,29  #  12 ||< rad_base:bedroom2
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.03,0  # zone base
