*Geometry 1.1,GEN,rad_br2_l # tag version, format, zone name
*date Thu Jan 17 15:43:52 2019  # latest file modification 
rad_br2_l describes lower portion of water filled radiator in be
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
*vertex,4.80000,8.40000,3.20000  #  11
*vertex,5.90000,8.40000,3.20000  #  12
*vertex,5.90000,8.41500,3.20000  #  13
*vertex,5.80000,8.41500,3.20000  #  14
*vertex,5.80000,8.44000,3.20000  #  15
*vertex,4.90000,8.44000,3.20000  #  16
*vertex,4.90000,8.42800,3.20000  #  17
*vertex,5.75000,8.42800,3.20000  #  18
*vertex,5.75000,8.41500,3.20000  #  19
*vertex,4.80000,8.41500,3.20000  #  20
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
*surf,face_l,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,051  #   1 ||< face_l:bedroom2
*surf,right_l,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,052  #   2 ||< right_l:bedroom2
*surf,back_al,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,053  #   3 ||< back_al:bedroom2
*surf,back_bl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,054  #   4 ||< back_bl:bedroom2
*surf,fin_al,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,055  #   5 ||< fin_al:bedroom2
*surf,fin_bl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,056  #   6 ||< fin_bl:bedroom2
*surf,fin_cl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,057  #   7 ||< fin_cl:bedroom2
*surf,fin_dl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,058  #   8 ||< fin_dl:bedroom2
*surf,back_cl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,059  #   9 ||< back_cl:bedroom2
*surf,leftl,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,060  #  10 ||< leftl:bedroom2
*surf,rad_top_l,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,42,012  #  11 ||< rad_base_m:rad_br2_m
*surf,rad_base_l,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,08,061  #  12 ||< rad_base_l:bedroom2
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.03,0  # zone base
