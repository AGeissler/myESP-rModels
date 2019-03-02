*Geometry 1.1,GEN,rad-hall_h # tag version, format, zone name
*date Thu Jan 17 15:39:08 2019  # latest file modification 
rad-hall_h describes upper portion of radiator in hall
*previous_rotate    90.00,   0.000,   0.000  # prior rotation angle X Y
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,3.30000,3.70000,0.65000  #   1
*vertex,3.30000,2.60000,0.65000  #   2
*vertex,3.31500,2.60000,0.65000  #   3
*vertex,3.31500,2.70000,0.65000  #   4
*vertex,3.33500,2.70000,0.65000  #   5
*vertex,3.33500,3.60000,0.65000  #   6
*vertex,3.32500,3.60000,0.65000  #   7
*vertex,3.32500,2.75000,0.65000  #   8
*vertex,3.31500,2.75000,0.65000  #   9
*vertex,3.31500,3.70000,0.65000  #  10
*vertex,3.30000,3.70000,0.80000  #  11
*vertex,3.30000,2.60000,0.80000  #  12
*vertex,3.31500,2.60000,0.80000  #  13
*vertex,3.31500,2.70000,0.80000  #  14
*vertex,3.33500,2.70000,0.80000  #  15
*vertex,3.33500,3.60000,0.80000  #  16
*vertex,3.32500,3.60000,0.80000  #  17
*vertex,3.32500,2.75000,0.80000  #  18
*vertex,3.31500,2.75000,0.80000  #  19
*vertex,3.31500,3.70000,0.80000  #  20
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
*surf,face_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,021  #   1 ||< face_h:hall
*surf,right_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,022  #   2 ||< right_h:hall
*surf,back_ah,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,023  #   3 ||< back_ah:hall
*surf,back_bh,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,024  #   4 ||< back_bh:hall
*surf,fin_ah,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,025  #   5 ||< fin_ah:hall
*surf,fin_bh,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,026  #   6 ||< fin_bh:hall
*surf,fin_ch,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,027  #   7 ||< fin_ch:hall
*surf,fin_dh,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,028  #   8 ||< fin_dh:hall
*surf,back_ch,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,029  #   9 ||< back_ch:hall
*surf,left_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,030  #  10 ||< left_h:hall
*surf,rad_top_h,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,031  #  11 ||< rad_top_h:hall
*surf,rad_base_h,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,38,011  #  12 ||< rad_top_m:rad-hall_m
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.03,0  # zone base
