*Geometry 1.1,GEN,rad-mbr # tag version, format, zone name
*date Tue Oct  3 14:36:27 2017  # latest file modification 
rad-mbr describes a radiator in MBR
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
*surf,face,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,26  #   1 ||< face:bedroom1
*surf,right,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,27  #   2 ||< right:bedroom1
*surf,back_a,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,28  #   3 ||< back_a:bedroom1
*surf,back_b,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,29  #   4 ||< back_b:bedroom1
*surf,fin_a,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,30  #   5 ||< fin_a:bedroom1
*surf,fin_b,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,31  #   6 ||< fin_b:bedroom1
*surf,fin_c,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,32  #   7 ||< fin_c:bedroom1
*surf,fin_d,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,33  #   8 ||< fin_d:bedroom1
*surf,back_c,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,34  #   9 ||< back_c:bedroom1
*surf,left,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,35  #  10 ||< left:bedroom1
*surf,rad_top,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,36  #  11 ||< rad_top:bedroom1
*surf,rad_base,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,06,37  #  12 ||< rad_base:bedroom1
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.03,0  # zone base
