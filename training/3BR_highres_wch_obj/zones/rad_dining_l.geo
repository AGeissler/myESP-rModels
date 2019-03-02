*Geometry 1.1,GEN,rad_dining_l # tag version, format, zone name
*date Thu Jan 17 15:42:26 2019  # latest file modification 
rad_dining describes low portion of radiator in dining room
*previous_rotate    90.00,   0.000,   0.000  # prior rotation angle X Y
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,4.00000,7.00000,0.40000  #   1
*vertex,4.00000,8.10000,0.40000  #   2
*vertex,3.98500,8.10000,0.40000  #   3
*vertex,3.98500,8.00000,0.40000  #   4
*vertex,3.96000,8.00000,0.40000  #   5
*vertex,3.96000,7.10000,0.40000  #   6
*vertex,3.97200,7.10000,0.40000  #   7
*vertex,3.97200,7.95000,0.40000  #   8
*vertex,3.98500,7.95000,0.40000  #   9
*vertex,3.98500,7.00000,0.40000  #  10
*vertex,4.00000,7.00000,0.60000  #  11
*vertex,4.00000,8.10000,0.60000  #  12
*vertex,3.98500,8.10000,0.60000  #  13
*vertex,3.98500,8.00000,0.60000  #  14
*vertex,3.96000,8.00000,0.60000  #  15
*vertex,3.96000,7.10000,0.60000  #  16
*vertex,3.97200,7.10000,0.60000  #  17
*vertex,3.97200,7.95000,0.60000  #  18
*vertex,3.98500,7.95000,0.60000  #  19
*vertex,3.98500,7.00000,0.60000  #  20
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
*surf,face_l,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,050  #   1 ||< face_l:dining
*surf,right_l,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,051  #   2 ||< right_l:dining
*surf,back_al,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,052  #   3 ||< back_al:dining
*surf,back_bl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,053  #   4 ||< back_bl:dining
*surf,fin_al,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,054  #   5 ||< fin_al:dining
*surf,fin_bl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,055  #   6 ||< fin_bl:dining
*surf,fin_cl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,056  #   7 ||< fin_cl:dining
*surf,fin_dl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,057  #   8 ||< fin_dl:dining
*surf,back_cl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,058  #   9 ||< back_cl:dining
*surf,left_l,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,059  #  10 ||< left_l:dining
*surf,rad_top_l,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,36,012  #  11 ||< rad_base_m:rad_dining_m
*surf,rad_base_l,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,03,060  #  12 ||< rad_base_l:dining
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.03,0  # zone base
