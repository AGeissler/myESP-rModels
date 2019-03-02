*Geometry 1.1,GEN,rad-mbr_l # tag version, format, zone name
*date Thu Jan 17 15:43:23 2019  # latest file modification 
rad-mbr_l describes lower portion of a radiator in MBR
*previous_rotate    90.00,   0.000,   0.000  # prior rotation angle X Y
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,6.00000,0.75000,2.90000  #   1
*vertex,4.80000,0.75000,2.90000  #   2
*vertex,4.80000,0.73500,2.90000  #   3
*vertex,5.00000,0.73500,2.90000  #   4
*vertex,5.00000,0.71300,2.90000  #   5
*vertex,5.90000,0.71300,2.90000  #   6
*vertex,5.90000,0.72300,2.90000  #   7
*vertex,5.05000,0.72300,2.90000  #   8
*vertex,5.05000,0.73500,2.90000  #   9
*vertex,6.00000,0.73500,2.90000  #  10
*vertex,6.00000,0.75000,3.10000  #  11
*vertex,4.80000,0.75000,3.10000  #  12
*vertex,4.80000,0.73500,3.10000  #  13
*vertex,5.00000,0.73500,3.10000  #  14
*vertex,5.00000,0.71300,3.10000  #  15
*vertex,5.90000,0.71300,3.10000  #  16
*vertex,5.90000,0.72300,3.10000  #  17
*vertex,5.05000,0.72300,3.10000  #  18
*vertex,5.05000,0.73500,3.10000  #  19
*vertex,6.00000,0.73500,3.10000  #  20
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
*surf,face_l,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,061  #   1 ||< face_l:master_br
*surf,right_l,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,062  #   2 ||< right_l:master_br
*surf,back_al,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,063  #   3 ||< back_al:master_br
*surf,back_bl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,064  #   4 ||< back_bl:master_br
*surf,fin_al,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,065  #   5 ||< fin_al:master_br
*surf,fin_bl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,066  #   6 ||< fin_bl:master_br
*surf,fin_cl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,067  #   7 ||< fin_cl:master_br
*surf,fin_dl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,068  #   8 ||< fin_dl:master_br
*surf,back_cl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,069  #   9 ||< back_cl:master_br
*surf,left_l,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,070  #  10 ||< left_l:master_br
*surf,rad_top_l,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,40,012  #  11 ||< rad_base_m:rad-mbr_m
*surf,rad_base_l,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,071  #  12 ||< rad_base_l:master_br
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.03,0  # zone base
