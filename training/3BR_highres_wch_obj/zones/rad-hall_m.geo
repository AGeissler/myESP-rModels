*Geometry 1.1,GEN,rad-hall_m # tag version, format, zone name
*date Thu Jan 17 15:55:06 2019  # latest file modification 
rad-hall_m describes centre section of radiator in hall
*previous_rotate    90.00,   0.000,   0.000  # prior rotation angle X Y
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,3.30000,3.70000,0.50000  #   1
*vertex,3.30000,2.60000,0.50000  #   2
*vertex,3.31500,2.60000,0.50000  #   3
*vertex,3.31500,2.70000,0.50000  #   4
*vertex,3.33500,2.70000,0.50000  #   5
*vertex,3.33500,3.60000,0.50000  #   6
*vertex,3.32500,3.60000,0.50000  #   7
*vertex,3.32500,2.75000,0.50000  #   8
*vertex,3.31500,2.75000,0.50000  #   9
*vertex,3.31500,3.70000,0.50000  #  10
*vertex,3.30000,3.70000,0.65000  #  11
*vertex,3.30000,2.60000,0.65000  #  12
*vertex,3.31500,2.60000,0.65000  #  13
*vertex,3.31500,2.70000,0.65000  #  14
*vertex,3.33500,2.70000,0.65000  #  15
*vertex,3.33500,3.60000,0.65000  #  16
*vertex,3.32500,3.60000,0.65000  #  17
*vertex,3.32500,2.75000,0.65000  #  18
*vertex,3.31500,2.75000,0.65000  #  19
*vertex,3.31500,3.70000,0.65000  #  20
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
*surf,face_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,032  #   1 ||< face_m:hall
*surf,right_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,033  #   2 ||< right_m:hall
*surf,back_am,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,034  #   3 ||< back_am:hall
*surf,back_bm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,035  #   4 ||< back_bm:hall
*surf,fin_am,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,036  #   5 ||< fin_am:hall
*surf,fin_bm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,037  #   6 ||< fin_bm:hall
*surf,fin_cm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,038  #   7 ||< fin_cm:hall
*surf,fin_dm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,039  #   8 ||< fin_dm:hall
*surf,back_cm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,040  #   9 ||< back_cm:hall
*surf,left_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,041  #  10 ||< left_m:hall
*surf,rad_top_m,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,24,012  #  11 ||< rad_base_h:rad-hall_h
*surf,rad_base_m,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,39,011  #  12 ||< rad_top_l:rad-hall_l
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.03,0  # zone base
