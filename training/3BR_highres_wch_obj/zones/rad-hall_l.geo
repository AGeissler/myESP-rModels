*Geometry 1.1,GEN,rad-hall_l # tag version, format, zone name
*date Thu Jan 17 15:42:54 2019  # latest file modification 
rad-hall_l describes low section of radiator in hall
*previous_rotate    90.00,   0.000,   0.000  # prior rotation angle X Y
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,3.30000,3.70000,0.30000  #   1
*vertex,3.30000,2.60000,0.30000  #   2
*vertex,3.31500,2.60000,0.30000  #   3
*vertex,3.31500,2.70000,0.30000  #   4
*vertex,3.33500,2.70000,0.30000  #   5
*vertex,3.33500,3.60000,0.30000  #   6
*vertex,3.32500,3.60000,0.30000  #   7
*vertex,3.32500,2.75000,0.30000  #   8
*vertex,3.31500,2.75000,0.30000  #   9
*vertex,3.31500,3.70000,0.30000  #  10
*vertex,3.30000,3.70000,0.50000  #  11
*vertex,3.30000,2.60000,0.50000  #  12
*vertex,3.31500,2.60000,0.50000  #  13
*vertex,3.31500,2.70000,0.50000  #  14
*vertex,3.33500,2.70000,0.50000  #  15
*vertex,3.33500,3.60000,0.50000  #  16
*vertex,3.32500,3.60000,0.50000  #  17
*vertex,3.32500,2.75000,0.50000  #  18
*vertex,3.31500,2.75000,0.50000  #  19
*vertex,3.31500,3.70000,0.50000  #  20
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
*surf,face_l,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,042  #   1 ||< face_l:hall
*surf,right_l,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,043  #   2 ||< right_l:hall
*surf,back_al,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,044  #   3 ||< back_al:hall
*surf,back_bl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,045  #   4 ||< back_bl:hall
*surf,fin_al,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,046  #   5 ||< fin_al:hall
*surf,fin_bl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,047  #   6 ||< fin_bl:hall
*surf,fin_cl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,048  #   7 ||< fin_cl:hall
*surf,fin_dl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,049  #   8 ||< fin_dl:hall
*surf,back_cl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,050  #   9 ||< back_cl:hall
*surf,left_l,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,051  #  10 ||< left_l:hall
*surf,rad_top_l,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,38,012  #  11 ||< rad_base_m:rad-hall_m
*surf,rad_base_l,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,01,052  #  12 ||< rad_base_l:hall
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.03,0  # zone base
