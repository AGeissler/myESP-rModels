*Geometry 1.1,GEN,rad_br2_h # tag version, format, zone name
*date Thu Jan 17 15:34:41 2019  # latest file modification 
rad_br2_h describes upper portion of water filled radiator in be
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,4.80000,8.40000,3.35000  #   1
*vertex,5.90000,8.40000,3.35000  #   2
*vertex,5.90000,8.41500,3.35000  #   3
*vertex,5.80000,8.41500,3.35000  #   4
*vertex,5.80000,8.44000,3.35000  #   5
*vertex,4.90000,8.44000,3.35000  #   6
*vertex,4.90000,8.42800,3.35000  #   7
*vertex,5.75000,8.42800,3.35000  #   8
*vertex,5.75000,8.41500,3.35000  #   9
*vertex,4.80000,8.41500,3.35000  #  10
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
*surf,face_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,030  #   1 ||< face_h:bedroom2
*surf,right_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,031  #   2 ||< right_h:bedroom2
*surf,back_ah,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,032  #   3 ||< back_ah:bedroom2
*surf,back_bh,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,033  #   4 ||< back_bh:bedroom2
*surf,fin_ah,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,034  #   5 ||< fin_ah:bedroom2
*surf,fin_bh,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,035  #   6 ||< fin_bh:bedroom2
*surf,fin_ch,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,036  #   7 ||< fin_ch:bedroom2
*surf,fin_dh,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,037  #   8 ||< fin_dh:bedroom2
*surf,back_ch,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,038  #   9 ||< back_ch:bedroom2
*surf,left_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,039  #  10 ||< left_h:bedroom2
*surf,rad_top_h,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,040  #  11 ||< rad_top_h:bedroom2
*surf,rad_base_h,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,42,011  #  12 ||< rad_top_m:rad_br2_m
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.03,0  # zone base
