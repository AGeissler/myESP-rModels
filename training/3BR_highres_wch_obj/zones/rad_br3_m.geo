*Geometry 1.1,GEN,rad_br3_m # tag version, format, zone name
*date Thu Jan 17 15:44:19 2019  # latest file modification 
rad_br3_m describes centre portion of 700mm x 600mm x 15mm with
*previous_rotate   180.00,   0.000,   1.015  # prior rotation angle X Y
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,3.00000,1.40000,3.20000  #   1
*vertex,3.00000,1.41500,3.20000  #   2
*vertex,2.30000,1.41500,3.20000  #   3
*vertex,2.30000,1.40000,3.20000  #   4
*vertex,2.38000,1.40000,3.20000  #   5
*vertex,2.40000,1.36500,3.20000  #   6
*vertex,2.40000,1.40000,3.20000  #   7
*vertex,2.48000,1.40000,3.20000  #   8
*vertex,2.50000,1.36500,3.20000  #   9
*vertex,2.50000,1.40000,3.20000  #  10
*vertex,2.58000,1.40000,3.20000  #  11
*vertex,2.60000,1.36500,3.20000  #  12
*vertex,2.60000,1.40000,3.20000  #  13
*vertex,2.68000,1.40000,3.20000  #  14
*vertex,2.70000,1.36500,3.20000  #  15
*vertex,2.70000,1.40000,3.20000  #  16
*vertex,2.78000,1.40000,3.20000  #  17
*vertex,2.80000,1.36500,3.20000  #  18
*vertex,2.80000,1.40000,3.20000  #  19
*vertex,2.88000,1.40000,3.20000  #  20
*vertex,2.90000,1.36500,3.20000  #  21
*vertex,2.90000,1.40000,3.20000  #  22
*vertex,2.90000,1.36500,3.40000  #  23
*vertex,2.90000,1.40000,3.40000  #  24
*vertex,3.00000,1.40000,3.40000  #  25
*vertex,3.00000,1.41500,3.40000  #  26
*vertex,2.30000,1.41500,3.40000  #  27
*vertex,2.30000,1.40000,3.40000  #  28
*vertex,2.38000,1.40000,3.40000  #  29
*vertex,2.40000,1.36500,3.40000  #  30
*vertex,2.40000,1.40000,3.40000  #  31
*vertex,2.48000,1.40000,3.40000  #  32
*vertex,2.50000,1.36500,3.40000  #  33
*vertex,2.50000,1.40000,3.40000  #  34
*vertex,2.58000,1.40000,3.40000  #  35
*vertex,2.60000,1.36500,3.40000  #  36
*vertex,2.60000,1.40000,3.40000  #  37
*vertex,2.68000,1.40000,3.40000  #  38
*vertex,2.70000,1.36500,3.40000  #  39
*vertex,2.70000,1.40000,3.40000  #  40
*vertex,2.78000,1.40000,3.40000  #  41
*vertex,2.80000,1.36500,3.40000  #  42
*vertex,2.80000,1.40000,3.40000  #  43
*vertex,2.88000,1.40000,3.40000  #  44
# 
# tag, number of vertices followed by list of associated vert
*edges,22,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1  #   1
*edges,22,43,44,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42  #   2
*edges,4,19,20,44,43  #   3
*edges,4,18,19,43,42  #   4
*edges,4,17,18,42,41  #   5
*edges,4,16,17,41,40  #   6
*edges,4,15,16,40,39  #   7
*edges,4,14,15,39,38  #   8
*edges,4,13,14,38,37  #   9
*edges,4,12,13,37,36  #  10
*edges,4,11,12,36,35  #  11
*edges,4,10,11,35,34  #  12
*edges,4,9,10,34,33  #  13
*edges,4,8,9,33,32  #  14
*edges,4,7,8,32,31  #  15
*edges,4,6,7,31,30  #  16
*edges,4,5,6,30,29  #  17
*edges,4,4,5,29,28  #  18
*edges,4,3,4,28,27  #  19
*edges,4,2,3,27,26  #  20
*edges,4,1,2,26,25  #  21
*edges,4,22,1,25,24  #  22
*edges,4,21,22,24,23  #  23
*edges,4,20,21,23,44  #  24
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,base_rad_m,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,45,002  #   1 ||< top_rad_l:rad_br3_l
*surf,top_rad_m,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,17,001  #   2 ||< base_rad_h:rad_br3_h
*surf,edg_2rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,042  #   3 ||< edg_2rad_m:bedroom3
*surf,edg_3rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,043  #   4 ||< edg_3rad_m:bedroom3
*surf,edg_4rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,044  #   5 ||< edg_4rad_m:bedroom3
*surf,edg_5rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,045  #   6 ||< edg_5rad_m:bedroom3
*surf,edg_6rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,046  #   7 ||< edg_6rad_m:bedroom3
*surf,edg_7rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,047  #   8 ||< edg_7rad_m:bedroom3
*surf,edg_8rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,048  #   9 ||< edg_8rad_m:bedroom3
*surf,edg_9rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,049  #  10 ||< edg_9rad_m:bedroom3
*surf,edg_10rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,050  #  11 ||< edg_10rad_m:bedroom3
*surf,edg_11rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,051  #  12 ||< edg_11rad_m:bedroom3
*surf,edg_12rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,052  #  13 ||< edg_12rad_m:bedroom3
*surf,edg_13rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,053  #  14 ||< edg_13rad_m:bedroom3
*surf,edg_14rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,054  #  15 ||< edg_14rad_m:bedroom3
*surf,edg_15rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,055  #  16 ||< edg_15rad_m:bedroom3
*surf,edg_16rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,056  #  17 ||< edg_16rad_m:bedroom3
*surf,edg_17rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,057  #  18 ||< edg_17rad_m:bedroom3
*surf,edg_18rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,058  #  19 ||< edg_18rad_m:bedroom3
*surf,edg_19rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,059  #  20 ||< edg_19rad_m:bedroom3
*surf,edg_20rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,060  #  21 ||< edg_20rad_m:bedroom3
*surf,edg_21rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,061  #  22 ||< edg_21rad_m:bedroom3
*surf,edg_22rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,062  #  23 ||< edg_22rad_m:bedroom3
*surf,edg_23rad_m,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,063  #  24 ||< edg_23rad_m:bedroom3
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.01,0  # zone base
