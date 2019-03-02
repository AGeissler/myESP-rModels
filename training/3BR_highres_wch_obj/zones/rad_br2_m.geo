*Geometry 1.1,GEN,rad_br2_m # tag version, format, zone name
*date Thu Jan 17 15:43:38 2019  # latest file modification 
rad_br2_m describes centre section of water filled radiator in b
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,4.80000,8.40000,3.20000  #   1
*vertex,5.90000,8.40000,3.20000  #   2
*vertex,5.90000,8.41500,3.20000  #   3
*vertex,5.80000,8.41500,3.20000  #   4
*vertex,5.80000,8.44000,3.20000  #   5
*vertex,4.90000,8.44000,3.20000  #   6
*vertex,4.90000,8.42800,3.20000  #   7
*vertex,5.75000,8.42800,3.20000  #   8
*vertex,5.75000,8.41500,3.20000  #   9
*vertex,4.80000,8.41500,3.20000  #  10
*vertex,4.80000,8.40000,3.35000  #  11
*vertex,5.90000,8.40000,3.35000  #  12
*vertex,5.90000,8.41500,3.35000  #  13
*vertex,5.80000,8.41500,3.35000  #  14
*vertex,5.80000,8.44000,3.35000  #  15
*vertex,4.90000,8.44000,3.35000  #  16
*vertex,4.90000,8.42800,3.35000  #  17
*vertex,5.75000,8.42800,3.35000  #  18
*vertex,5.75000,8.41500,3.35000  #  19
*vertex,4.80000,8.41500,3.35000  #  20
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
*surf,face_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,041  #   1 ||< face_m:bedroom2
*surf,right_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,042  #   2 ||< right_m:bedroom2
*surf,back_am,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,043  #   3 ||< back_am:bedroom2
*surf,back_bm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,044  #   4 ||< back_bm:bedroom2
*surf,fin_am,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,045  #   5 ||< fin_am:bedroom2
*surf,fin_bm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,046  #   6 ||< fin_bm:bedroom2
*surf,fin_cm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,047  #   7 ||< fin_cm:bedroom2
*surf,fin_dm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,048  #   8 ||< fin_dm:bedroom2
*surf,back_cm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,049  #   9 ||< back_cm:bedroom2
*surf,left_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,050  #  10 ||< left_m:bedroom2
*surf,rad_top_m,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,19,012  #  11 ||< rad_base_h:rad_br2_h
*surf,rad_base_m,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,43,011  #  12 ||< rad_top_l:rad_br2_l
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.03,0  # zone base
