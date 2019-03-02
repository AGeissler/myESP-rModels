*Geometry 1.1,GEN,rad_br3_h # tag version, format, zone name
*date Thu Jan 17 15:34:11 2019  # latest file modification 
rad_br3_h describes upper portion of 700mm x 600mm x 15mm with f
*previous_rotate   180.00,   0.000,   1.015  # prior rotation angle X Y
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,3.00000,1.40000,3.40000  #   1
*vertex,3.00000,1.41500,3.40000  #   2
*vertex,2.30000,1.41500,3.40000  #   3
*vertex,2.30000,1.40000,3.40000  #   4
*vertex,2.38000,1.40000,3.40000  #   5
*vertex,2.40000,1.36500,3.40000  #   6
*vertex,2.40000,1.40000,3.40000  #   7
*vertex,2.48000,1.40000,3.40000  #   8
*vertex,2.50000,1.36500,3.40000  #   9
*vertex,2.50000,1.40000,3.40000  #  10
*vertex,2.58000,1.40000,3.40000  #  11
*vertex,2.60000,1.36500,3.40000  #  12
*vertex,2.60000,1.40000,3.40000  #  13
*vertex,2.68000,1.40000,3.40000  #  14
*vertex,2.70000,1.36500,3.40000  #  15
*vertex,2.70000,1.40000,3.40000  #  16
*vertex,2.78000,1.40000,3.40000  #  17
*vertex,2.80000,1.36500,3.40000  #  18
*vertex,2.80000,1.40000,3.40000  #  19
*vertex,2.88000,1.40000,3.40000  #  20
*vertex,2.90000,1.36500,3.40000  #  21
*vertex,2.90000,1.40000,3.40000  #  22
*vertex,2.90000,1.36500,3.60000  #  23
*vertex,2.90000,1.40000,3.60000  #  24
*vertex,3.00000,1.40000,3.60000  #  25
*vertex,3.00000,1.41500,3.60000  #  26
*vertex,2.30000,1.41500,3.60000  #  27
*vertex,2.30000,1.40000,3.60000  #  28
*vertex,2.38000,1.40000,3.60000  #  29
*vertex,2.40000,1.36500,3.60000  #  30
*vertex,2.40000,1.40000,3.60000  #  31
*vertex,2.48000,1.40000,3.60000  #  32
*vertex,2.50000,1.36500,3.60000  #  33
*vertex,2.50000,1.40000,3.60000  #  34
*vertex,2.58000,1.40000,3.60000  #  35
*vertex,2.60000,1.36500,3.60000  #  36
*vertex,2.60000,1.40000,3.60000  #  37
*vertex,2.68000,1.40000,3.60000  #  38
*vertex,2.70000,1.36500,3.60000  #  39
*vertex,2.70000,1.40000,3.60000  #  40
*vertex,2.78000,1.40000,3.60000  #  41
*vertex,2.80000,1.36500,3.60000  #  42
*vertex,2.80000,1.40000,3.60000  #  43
*vertex,2.88000,1.40000,3.60000  #  44
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
*surf,base_rad_h,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,44,002  #   1 ||< top_rad_m:rad_br3_m
*surf,top_rad_h,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,019  #   2 ||< top_rad_h:bedroom3
*surf,edg_2rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,020  #   3 ||< edg_2rad_h:bedroom3
*surf,edg_3rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,021  #   4 ||< edg_3rad_h:bedroom3
*surf,edg_4rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,022  #   5 ||< edg_4rad_h:bedroom3
*surf,edg_5rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,023  #   6 ||< edg_5rad_h:bedroom3
*surf,edg_6rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,024  #   7 ||< edg_6rad_h:bedroom3
*surf,edg_7rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,025  #   8 ||< edg_7rad_h:bedroom3
*surf,edg_8rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,026  #   9 ||< edg_8rad_h:bedroom3
*surf,edg_9rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,027  #  10 ||< edg_9rad_h:bedroom3
*surf,edg_10rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,028  #  11 ||< edg_10rad_h:bedroom3
*surf,edg_11rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,029  #  12 ||< edg_11rad_h:bedroom3
*surf,edg_12rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,030  #  13 ||< edg_12rad_h:bedroom3
*surf,edg_13rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,031  #  14 ||< edg_13rad_h:bedroom3
*surf,edg_14rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,032  #  15 ||< edg_14rad_h:bedroom3
*surf,edg_15rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,033  #  16 ||< edg_15rad_h:bedroom3
*surf,edg_16rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,034  #  17 ||< edg_16rad_h:bedroom3
*surf,edg_17rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,035  #  18 ||< edg_17rad_h:bedroom3
*surf,edg_18rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,036  #  19 ||< edg_18rad_h:bedroom3
*surf,edg_19rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,037  #  20 ||< edg_19rad_h:bedroom3
*surf,edg_20rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,038  #  21 ||< edg_20rad_h:bedroom3
*surf,edg_21rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,039  #  22 ||< edg_21rad_h:bedroom3
*surf,edg_22rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,040  #  23 ||< edg_22rad_h:bedroom3
*surf,edg_23rad_h,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,07,041  #  24 ||< edg_23rad_h:bedroom3
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.01,0  # zone base
