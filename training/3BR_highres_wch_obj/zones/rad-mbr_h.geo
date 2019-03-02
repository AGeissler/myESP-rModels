*Geometry 1.1,GEN,rad-mbr_h # tag version, format, zone name
*date Thu Jan 17 15:38:10 2019  # latest file modification 
rad-mbr_h describes upper portion of a radiator in MBR
*previous_rotate    90.00,   0.000,   0.000  # prior rotation angle X Y
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,6.00000,0.75000,3.25000  #   1
*vertex,4.80000,0.75000,3.25000  #   2
*vertex,4.80000,0.73500,3.25000  #   3
*vertex,5.00000,0.73500,3.25000  #   4
*vertex,5.00000,0.71300,3.25000  #   5
*vertex,5.90000,0.71300,3.25000  #   6
*vertex,5.90000,0.72300,3.25000  #   7
*vertex,5.05000,0.72300,3.25000  #   8
*vertex,5.05000,0.73500,3.25000  #   9
*vertex,6.00000,0.73500,3.25000  #  10
*vertex,6.00000,0.75000,3.40000  #  11
*vertex,4.80000,0.75000,3.40000  #  12
*vertex,4.80000,0.73500,3.40000  #  13
*vertex,5.00000,0.73500,3.40000  #  14
*vertex,5.00000,0.71300,3.40000  #  15
*vertex,5.90000,0.71300,3.40000  #  16
*vertex,5.90000,0.72300,3.40000  #  17
*vertex,5.05000,0.72300,3.40000  #  18
*vertex,5.05000,0.73500,3.40000  #  19
*vertex,6.00000,0.73500,3.40000  #  20
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
*surf,face_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,040  #   1 ||< face_h:master_br
*surf,right_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,041  #   2 ||< right_h:master_br
*surf,back_ah,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,042  #   3 ||< back_ah:master_br
*surf,back_bh,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,043  #   4 ||< back_bh:master_br
*surf,fin_ah,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,044  #   5 ||< fin_ah:master_br
*surf,fin_bh,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,045  #   6 ||< fin_bh:master_br
*surf,fin_ch,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,046  #   7 ||< fin_ch:master_br
*surf,fin_dh,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,047  #   8 ||< fin_dh:master_br
*surf,back_ch,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,048  #   9 ||< back_ch:master_br
*surf,left_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,049  #  10 ||< left_h:master_br
*surf,rad_top_h,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,050  #  11 ||< rad_top_h:master_br
*surf,rad_base_h,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,40,011  #  12 ||< rad_top_m:rad-mbr_m
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.03,0  # zone base
