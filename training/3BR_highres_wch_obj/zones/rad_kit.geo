*Geometry 1.1,GEN,rad_kit # tag version, format, zone name
*date Thu Jan 17 15:38:52 2019  # latest file modification 
rad_kit describes a radiator in kitchen
*previous_rotate    90.00,   0.000,   0.000  # prior rotation angle X Y
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,2.55000,8.36500,0.40000  #   1
*vertex,2.55000,8.35000,0.40000  #   2
*vertex,3.25000,8.35000,0.40000  #   3
*vertex,3.25000,8.36500,0.40000  #   4
*vertex,3.17000,8.36500,0.40000  #   5
*vertex,3.15000,8.40000,0.40000  #   6
*vertex,3.15000,8.36500,0.40000  #   7
*vertex,3.07000,8.36500,0.40000  #   8
*vertex,3.05000,8.40000,0.40000  #   9
*vertex,3.05000,8.36500,0.40000  #  10
*vertex,2.97000,8.36500,0.40000  #  11
*vertex,2.95000,8.40000,0.40000  #  12
*vertex,2.95000,8.36500,0.40000  #  13
*vertex,2.87000,8.36500,0.40000  #  14
*vertex,2.85000,8.40000,0.40000  #  15
*vertex,2.85000,8.36500,0.40000  #  16
*vertex,2.77000,8.36500,0.40000  #  17
*vertex,2.75000,8.40000,0.40000  #  18
*vertex,2.75000,8.36500,0.40000  #  19
*vertex,2.67000,8.36500,0.40000  #  20
*vertex,2.65000,8.40000,0.40000  #  21
*vertex,2.65000,8.36500,0.40000  #  22
*vertex,2.65000,8.40000,1.00000  #  23
*vertex,2.65000,8.36500,1.00000  #  24
*vertex,2.55000,8.36500,1.00000  #  25
*vertex,2.55000,8.35000,1.00000  #  26
*vertex,3.25000,8.35000,1.00000  #  27
*vertex,3.25000,8.36500,1.00000  #  28
*vertex,3.17000,8.36500,1.00000  #  29
*vertex,3.15000,8.40000,1.00000  #  30
*vertex,3.15000,8.36500,1.00000  #  31
*vertex,3.07000,8.36500,1.00000  #  32
*vertex,3.05000,8.40000,1.00000  #  33
*vertex,3.05000,8.36500,1.00000  #  34
*vertex,2.97000,8.36500,1.00000  #  35
*vertex,2.95000,8.40000,1.00000  #  36
*vertex,2.95000,8.36500,1.00000  #  37
*vertex,2.87000,8.36500,1.00000  #  38
*vertex,2.85000,8.40000,1.00000  #  39
*vertex,2.85000,8.36500,1.00000  #  40
*vertex,2.77000,8.36500,1.00000  #  41
*vertex,2.75000,8.40000,1.00000  #  42
*vertex,2.75000,8.36500,1.00000  #  43
*vertex,2.67000,8.36500,1.00000  #  44
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
*surf,base_rad,FLOR,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,029  #   1 ||< base_rad:kitchen
*surf,top_rad,CEIL,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,030  #   2 ||< top_rad:kitchen
*surf,edg_2rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,031  #   3 ||< edg_2rad:kitchen
*surf,edg_3rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,032  #   4 ||< edg_3rad:kitchen
*surf,edg_4rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,033  #   5 ||< edg_4rad:kitchen
*surf,edg_5rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,034  #   6 ||< edg_5rad:kitchen
*surf,edg_6rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,035  #   7 ||< edg_6rad:kitchen
*surf,edg_7rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,036  #   8 ||< edg_7rad:kitchen
*surf,edg_8rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,037  #   9 ||< edg_8rad:kitchen
*surf,edg_9rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,038  #  10 ||< edg_9rad:kitchen
*surf,edg_10rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,039  #  11 ||< edg_10rad:kitchen
*surf,edg_11rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,040  #  12 ||< edg_11rad:kitchen
*surf,edg_12rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,041  #  13 ||< edg_12rad:kitchen
*surf,edg_13rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,042  #  14 ||< edg_13rad:kitchen
*surf,edg_14rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,043  #  15 ||< edg_14rad:kitchen
*surf,edg_15rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,044  #  16 ||< edg_15rad:kitchen
*surf,edg_16rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,045  #  17 ||< edg_16rad:kitchen
*surf,edg_17rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,046  #  18 ||< edg_17rad:kitchen
*surf,edg_18rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,047  #  19 ||< edg_18rad:kitchen
*surf,edg_19rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,048  #  20 ||< edg_19rad:kitchen
*surf,edg_20rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,049  #  21 ||< edg_20rad:kitchen
*surf,edg_21rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,050  #  22 ||< edg_21rad:kitchen
*surf,edg_22rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,051  #  23 ||< edg_22rad:kitchen
*surf,edg_23rad,VERT,-,-,-,steel_pl_3mm,OPAQUE,ANOTHER,04,052  #  24 ||< edg_23rad:kitchen
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.01,0  # zone base
