*Geometry 1.1,GEN,rad_dining_m # tag version, format, zone name
*date Thu Jan 17 15:42:04 2019  # latest file modification 
rad_dining describes mid section of radiator in dining room
*previous_rotate    90.00,   0.000,   0.000  # prior rotation angle X Y
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,4.00000,7.00000,0.60000  #   1
*vertex,4.00000,8.10000,0.60000  #   2
*vertex,3.98500,8.10000,0.60000  #   3
*vertex,3.98500,8.00000,0.60000  #   4
*vertex,3.96000,8.00000,0.60000  #   5
*vertex,3.96000,7.10000,0.60000  #   6
*vertex,3.97200,7.10000,0.60000  #   7
*vertex,3.97200,7.95000,0.60000  #   8
*vertex,3.98500,7.95000,0.60000  #   9
*vertex,3.98500,7.00000,0.60000  #  10
*vertex,4.00000,7.00000,0.75000  #  11
*vertex,4.00000,8.10000,0.75000  #  12
*vertex,3.98500,8.10000,0.75000  #  13
*vertex,3.98500,8.00000,0.75000  #  14
*vertex,3.96000,8.00000,0.75000  #  15
*vertex,3.96000,7.10000,0.75000  #  16
*vertex,3.97200,7.10000,0.75000  #  17
*vertex,3.97200,7.95000,0.75000  #  18
*vertex,3.98500,7.95000,0.75000  #  19
*vertex,3.98500,7.00000,0.75000  #  20
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
*surf,face_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,040  #   1 ||< face_m:dining
*surf,right_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,041  #   2 ||< right_m:dining
*surf,back_am,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,042  #   3 ||< back_am:dining
*surf,back_bm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,043  #   4 ||< back_bm:dining
*surf,fin_am,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,044  #   5 ||< fin_am:dining
*surf,fin_bm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,045  #   6 ||< fin_bm:dining
*surf,fin_cm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,046  #   7 ||< fin_cm:dining
*surf,fin_dm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,047  #   8 ||< fin_dm:dining
*surf,back_cm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,048  #   9 ||< back_cm:dining
*surf,left_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,049  #  10 ||< left_m:dining
*surf,rad_top_m,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,20,012  #  11 ||< rad_base_h:rad_dining_h
*surf,rad_base_m,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,37,011  #  12 ||< rad_top_l:rad_dining_l
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.03,0  # zone base
