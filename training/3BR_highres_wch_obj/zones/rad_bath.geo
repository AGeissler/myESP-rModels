*Geometry 1.1,GEN,rad_bath # tag version, format, zone name
*date Thu Jan 17 15:33:44 2019  # latest file modification 
radiator describes 700mm x 600mm x 15mm with fins zone
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,1.80000,8.31500,3.00000  #   1
*vertex,1.80000,8.30000,3.00000  #   2
*vertex,2.50000,8.30000,3.00000  #   3
*vertex,2.50000,8.31500,3.00000  #   4
*vertex,2.42000,8.31500,3.00000  #   5
*vertex,2.40000,8.35000,3.00000  #   6
*vertex,2.40000,8.31500,3.00000  #   7
*vertex,2.32000,8.31500,3.00000  #   8
*vertex,2.30000,8.35000,3.00000  #   9
*vertex,2.30000,8.31500,3.00000  #  10
*vertex,2.22000,8.31500,3.00000  #  11
*vertex,2.20000,8.35000,3.00000  #  12
*vertex,2.20000,8.31500,3.00000  #  13
*vertex,2.12000,8.31500,3.00000  #  14
*vertex,2.10000,8.35000,3.00000  #  15
*vertex,2.10000,8.31500,3.00000  #  16
*vertex,2.02000,8.31500,3.00000  #  17
*vertex,2.00000,8.35000,3.00000  #  18
*vertex,2.00000,8.31500,3.00000  #  19
*vertex,1.92000,8.31500,3.00000  #  20
*vertex,1.90000,8.35000,3.00000  #  21
*vertex,1.90000,8.31500,3.00000  #  22
*vertex,1.90000,8.35000,3.60000  #  23
*vertex,1.90000,8.31500,3.60000  #  24
*vertex,1.80000,8.31500,3.60000  #  25
*vertex,1.80000,8.30000,3.60000  #  26
*vertex,2.50000,8.30000,3.60000  #  27
*vertex,2.50000,8.31500,3.60000  #  28
*vertex,2.42000,8.31500,3.60000  #  29
*vertex,2.40000,8.35000,3.60000  #  30
*vertex,2.40000,8.31500,3.60000  #  31
*vertex,2.32000,8.31500,3.60000  #  32
*vertex,2.30000,8.35000,3.60000  #  33
*vertex,2.30000,8.31500,3.60000  #  34
*vertex,2.22000,8.31500,3.60000  #  35
*vertex,2.20000,8.35000,3.60000  #  36
*vertex,2.20000,8.31500,3.60000  #  37
*vertex,2.12000,8.31500,3.60000  #  38
*vertex,2.10000,8.35000,3.60000  #  39
*vertex,2.10000,8.31500,3.60000  #  40
*vertex,2.02000,8.31500,3.60000  #  41
*vertex,2.00000,8.35000,3.60000  #  42
*vertex,2.00000,8.31500,3.60000  #  43
*vertex,1.92000,8.31500,3.60000  #  44
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
*surf,base_rad,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,018  #   1 ||< base_rad:bath
*surf,top_rad,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,019  #   2 ||< top_rad:bath
*surf,edg_2rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,020  #   3 ||< edg_2rad:bath
*surf,edg_3rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,021  #   4 ||< edg_3rad:bath
*surf,edg_4rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,022  #   5 ||< edg_4rad:bath
*surf,edg_5rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,023  #   6 ||< edg_5rad:bath
*surf,edg_6rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,024  #   7 ||< edg_6rad:bath
*surf,edg_7rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,025  #   8 ||< edg_7rad:bath
*surf,edg_8rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,026  #   9 ||< edg_8rad:bath
*surf,edg_9rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,027  #  10 ||< edg_9rad:bath
*surf,edg_10rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,028  #  11 ||< edg_10rad:bath
*surf,edg_11rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,029  #  12 ||< edg_11rad:bath
*surf,edg_12rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,030  #  13 ||< edg_12rad:bath
*surf,edg_13rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,031  #  14 ||< edg_13rad:bath
*surf,edg_14rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,032  #  15 ||< edg_14rad:bath
*surf,edg_15rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,033  #  16 ||< edg_15rad:bath
*surf,edg_16rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,034  #  17 ||< edg_16rad:bath
*surf,edg_17rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,035  #  18 ||< edg_17rad:bath
*surf,edg_18rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,036  #  19 ||< edg_18rad:bath
*surf,edg_19rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,037  #  20 ||< edg_19rad:bath
*surf,edg_20rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,038  #  21 ||< edg_20rad:bath
*surf,edg_21rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,039  #  22 ||< edg_21rad:bath
*surf,edg_22rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,040  #  23 ||< edg_22rad:bath
*surf,edg_23rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,09,041  #  24 ||< edg_23rad:bath
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.01,0  # zone base
