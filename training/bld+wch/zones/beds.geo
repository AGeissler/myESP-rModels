*Geometry 1.1,GEN,beds # tag version, format, zone name
*date Fri Apr  3 11:08:36 2015  # latest file modification 
beds describes form of all beds in the house
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,3.50000,6.00000,3.20000  #   1
*vertex,5.50000,6.00000,3.20000  #   2
*vertex,5.50000,7.40000,3.20000  #   3
*vertex,3.50000,7.40000,3.20000  #   4
*vertex,3.50000,6.00000,3.55000  #   5
*vertex,5.50000,6.00000,3.55000  #   6
*vertex,5.50000,7.40000,3.55000  #   7
*vertex,3.50000,7.40000,3.55000  #   8
*vertex,4.60000,2.70000,3.20000  #   9
*vertex,6.00000,2.70000,3.20000  #  10
*vertex,6.00000,4.70000,3.20000  #  11
*vertex,4.60000,4.70000,3.20000  #  12
*vertex,6.00000,2.70000,3.55000  #  13
*vertex,4.60000,2.70000,3.55000  #  14
*vertex,4.60000,4.70000,3.55000  #  15
*vertex,6.00000,4.70000,3.55000  #  16
*vertex,1.35000,1.35000,3.20000  #  17
*vertex,2.05000,1.35000,3.20000  #  18
*vertex,2.05000,3.25000,3.20000  #  19
*vertex,1.35000,3.25000,3.20000  #  20
*vertex,2.05000,1.35000,3.55000  #  21
*vertex,1.35000,1.35000,3.55000  #  22
*vertex,1.35000,3.25000,3.55000  #  23
*vertex,2.05000,3.25000,3.55000  #  24
*vertex,6.30000,4.00000,0.40000  #  25
*vertex,4.20000,4.00000,0.40000  #  26
*vertex,4.20000,4.70000,0.40000  #  27
*vertex,6.30000,4.70000,0.40000  #  28
*vertex,6.30000,4.50000,0.65000  #  29
*vertex,4.20000,4.50000,0.65000  #  30
*vertex,4.20000,4.00000,0.65000  #  31
*vertex,6.30000,4.00000,0.65000  #  32
*vertex,4.20000,4.70000,1.10000  #  33
*vertex,6.30000,4.70000,1.10000  #  34
*vertex,3.50000,1.90000,0.40000  #  35
*vertex,4.20000,1.90000,0.40000  #  36
*vertex,4.20000,1.90000,0.65000  #  37
*vertex,3.70000,1.90000,0.65000  #  38
*vertex,3.50000,1.90000,1.10000  #  39
*vertex,3.50000,2.70000,1.10000  #  40
*vertex,3.70000,2.70000,0.65000  #  41
*vertex,4.20000,2.70000,0.65000  #  42
*vertex,4.20000,2.70000,0.40000  #  43
*vertex,3.50000,2.70000,0.40000  #  44
# 
# tag, number of vertices followed by list of associated vert
*edges,4,1,2,6,5  #  1
*edges,4,2,3,7,6  #  2
*edges,4,3,4,8,7  #  3
*edges,4,4,1,5,8  #  4
*edges,4,5,6,7,8  #  5
*edges,4,1,4,3,2  #  6
*edges,4,10,9,12,11  #  7
*edges,4,16,15,14,13  #  8
*edges,4,11,12,15,16  #  9
*edges,4,12,9,14,15  # 10
*edges,4,9,10,13,14  # 11
*edges,4,10,11,16,13  # 12
*edges,4,18,17,20,19  # 13
*edges,4,24,23,22,21  # 14
*edges,4,19,20,23,24  # 15
*edges,4,20,17,22,23  # 16
*edges,4,17,18,21,22  # 17
*edges,4,18,19,24,21  # 18
*edges,4,26,25,28,27  # 19
*edges,4,30,29,32,31  # 20
*edges,4,27,28,34,33  # 21
*edges,5,26,27,33,30,31  # 22
*edges,4,25,26,31,32  # 23
*edges,5,28,25,32,29,34  # 24
*edges,4,29,30,33,34  # 25
*edges,5,36,35,39,38,37  # 26
*edges,5,41,40,44,43,42  # 27
*edges,4,38,39,40,41  # 28
*edges,4,37,38,41,42  # 29
*edges,4,36,37,42,43  # 30
*edges,4,35,36,43,44  # 31
*edges,4,39,35,44,40  # 32
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,left,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #   1 ||< not yet defined
*surf,foot,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #   2 ||< not yet defined
*surf,right,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #   3 ||< not yet defined
*surf,head,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #   4 ||< not yet defined
*surf,top,CEIL,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #   5 ||< not yet defined
*surf,base,FLOR,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #   6 ||< not yet defined
*surf,mbr_bed_base,FLOR,-,PARTN,-,upholstery,OPAQUE,UNKNOWN,0,0  #   7 ||< not yet defined
*surf,t_mbr_bed_ba,CEIL,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #   8 ||< not yet defined
*surf,edg_2mbr_bed,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #   9 ||< not yet defined
*surf,edg_3mbr_bed,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  10 ||< not yet defined
*surf,edg_4mbr_bed,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  11 ||< not yet defined
*surf,edg_5mbr_bed,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  12 ||< not yet defined
*surf,b1_b,FLOR,-,PARTN,-,upholstery,OPAQUE,UNKNOWN,0,0  #  13 ||< not yet defined
*surf,t_b1_b,CEIL,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  14 ||< not yet defined
*surf,edg_2b1_b,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  15 ||< not yet defined
*surf,edg_3b1_b,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  16 ||< not yet defined
*surf,edg_4b1_b,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  17 ||< not yet defined
*surf,edg_5b1_b,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  18 ||< not yet defined
*surf,sofa_b,CEIL,-,PARTN,-,upholstery,OPAQUE,UNKNOWN,0,0  #  19 ||< not yet defined
*surf,t_sofa_b,FLOR,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  20 ||< not yet defined
*surf,edg_2sofa_b,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  21 ||< not yet defined
*surf,edg_3sofa_b,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  22 ||< not yet defined
*surf,edg_4sofa_b,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  23 ||< not yet defined
*surf,edg_5sofa_b,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  24 ||< not yet defined
*surf,sofa_bk,SLOP,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  25 ||< not yet defined
*surf,chair,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  26 ||< not yet defined
*surf,t_chair,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  27 ||< not yet defined
*surf,edg_2chair,SLOP,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  28 ||< not yet defined
*surf,edg_3chair,FLOR,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  29 ||< not yet defined
*surf,edg_4chair,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  30 ||< not yet defined
*surf,edg_5chair,CEIL,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  31 ||< not yet defined
*surf,edg_6chair,VERT,-,-,-,upholstery,OPAQUE,UNKNOWN,0,0  #  32 ||< not yet defined
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,8.38,0  # zone base
