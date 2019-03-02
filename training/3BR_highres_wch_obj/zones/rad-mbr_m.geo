*Geometry 1.1,GEN,rad-mbr_m # tag version, format, zone name
*date Thu Jan 17 15:43:09 2019  # latest file modification 
rad-mbr_m describes centre part of a radiator in MBR
*previous_rotate    90.00,   0.000,   0.000  # prior rotation angle X Y
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,6.00000,0.75000,3.10000  #   1
*vertex,4.80000,0.75000,3.10000  #   2
*vertex,4.80000,0.73500,3.10000  #   3
*vertex,5.00000,0.73500,3.10000  #   4
*vertex,5.00000,0.71300,3.10000  #   5
*vertex,5.90000,0.71300,3.10000  #   6
*vertex,5.90000,0.72300,3.10000  #   7
*vertex,5.05000,0.72300,3.10000  #   8
*vertex,5.05000,0.73500,3.10000  #   9
*vertex,6.00000,0.73500,3.10000  #  10
*vertex,6.00000,0.75000,3.25000  #  11
*vertex,4.80000,0.75000,3.25000  #  12
*vertex,4.80000,0.73500,3.25000  #  13
*vertex,5.00000,0.73500,3.25000  #  14
*vertex,5.00000,0.71300,3.25000  #  15
*vertex,5.90000,0.71300,3.25000  #  16
*vertex,5.90000,0.72300,3.25000  #  17
*vertex,5.05000,0.72300,3.25000  #  18
*vertex,5.05000,0.73500,3.25000  #  19
*vertex,6.00000,0.73500,3.25000  #  20
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
*surf,face_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,051  #   1 ||< face_m:master_br
*surf,right_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,052  #   2 ||< right_m:master_br
*surf,back_am,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,053  #   3 ||< back_am:master_br
*surf,back_bm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,054  #   4 ||< back_bm:master_br
*surf,fin_am,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,055  #   5 ||< fin_am:master_br
*surf,fin_bm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,056  #   6 ||< fin_bm:master_br
*surf,fin_cm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,057  #   7 ||< fin_cm:master_br
*surf,fin_dm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,058  #   8 ||< fin_dm:master_br
*surf,back_cm,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,059  #   9 ||< back_cm:master_br
*surf,left_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,060  #  10 ||< left_m:master_br
*surf,rad_top_m,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,21,012  #  11 ||< rad_base_h:rad-mbr_h
*surf,rad_base_m,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,41,011  #  12 ||< rad_top_l:rad-mbr_l
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.03,0  # zone base
