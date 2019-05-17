*Geometry 1.1,GEN,crawl # tag version, format, zone name
*date Sat Apr  4 17:16:11 2015  # latest file modification 
crawl describes a ventilated crawl space
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,1.30000,1.30000,0.20000  #   1
*vertex,1.30000,2.70000,0.20000  #   2
*vertex,2.30000,2.70000,0.20000  #   3
*vertex,2.30000,6.00000,0.20000  #   4
*vertex,3.40000,6.00000,0.20000  #   5
*vertex,3.40000,4.80000,0.20000  #   6
*vertex,3.40000,1.30000,0.20000  #   7
*vertex,7.20000,4.80000,0.20000  #   8
*vertex,7.20000,3.80000,0.20000  #   9
*vertex,7.00000,3.80000,0.20000  #  10
*vertex,7.00000,2.30000,0.20000  #  11
*vertex,7.20000,2.30000,0.20000  #  12
*vertex,7.20000,1.30000,0.20000  #  13
*vertex,6.20000,1.30000,0.20000  #  14
*vertex,6.20000,0.65000,0.20000  #  15
*vertex,4.40000,0.65000,0.20000  #  16
*vertex,4.40000,1.30000,0.20000  #  17
*vertex,3.40000,8.50000,0.20000  #  18
*vertex,7.20000,8.50000,0.20000  #  19
*vertex,7.20000,7.30000,0.20000  #  20
*vertex,6.90000,7.30000,0.20000  #  21
*vertex,6.90000,5.90000,0.20000  #  22
*vertex,7.20000,5.90000,0.20000  #  23
*vertex,1.30000,6.00000,0.20000  #  24
*vertex,1.30000,8.50000,0.20000  #  25
*vertex,1.30000,1.30000,0.00000  #  26
*vertex,1.30000,2.70000,0.00000  #  27
*vertex,1.30000,6.00000,0.00000  #  28
*vertex,1.30000,8.50000,0.00000  #  29
*vertex,3.40000,8.50000,0.00000  #  30
*vertex,7.20000,8.50000,0.00000  #  31
*vertex,7.20000,7.30000,0.00000  #  32
*vertex,6.90000,7.30000,0.00000  #  33
*vertex,6.90000,5.90000,0.00000  #  34
*vertex,7.20000,5.90000,0.00000  #  35
*vertex,7.20000,4.80000,0.00000  #  36
*vertex,7.20000,3.80000,0.00000  #  37
*vertex,7.00000,3.80000,0.00000  #  38
*vertex,7.00000,2.30000,0.00000  #  39
*vertex,7.20000,2.30000,0.00000  #  40
*vertex,7.20000,1.30000,0.00000  #  41
*vertex,6.20000,1.30000,0.00000  #  42
*vertex,6.20000,0.65000,0.00000  #  43
*vertex,4.40000,0.65000,0.00000  #  44
*vertex,4.40000,1.30000,0.00000  #  45
*vertex,3.40000,1.30000,0.00000  #  46
# 
# tag, number of vertices followed by list of associated vert
*edges,7,2,1,7,6,5,4,3  #  1
*edges,12,7,17,16,15,14,13,12,11,10,9,8,6  #  2
*edges,9,6,8,23,22,21,20,19,18,5  #  3
*edges,5,24,4,5,18,25  #  4
*edges,4,3,4,24,2  #  5
*edges,6,46,45,17,7,1,26  #  6
*edges,4,45,44,16,17  #  7
*edges,4,44,43,15,16  #  8
*edges,4,43,42,14,15  #  9
*edges,4,42,41,13,14  # 10
*edges,4,41,40,12,13  # 11
*edges,4,40,39,11,12  # 12
*edges,6,37,36,35,23,8,9  # 13
*edges,4,39,38,10,11  # 14
*edges,4,38,37,9,10  # 15
*edges,4,35,34,22,23  # 16
*edges,4,34,33,21,22  # 17
*edges,4,33,32,20,21  # 18
*edges,4,32,31,19,20  # 19
*edges,6,30,29,25,18,19,31  # 20
*edges,8,27,26,1,2,24,25,29,28  # 21
*edges,21,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46  # 22
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,floor_entr,CEIL,-,-,-,cpttginscrl,OPAQUE,ANOTHER,01,08  #   1 ||< floor_entr:hall
*surf,floor_liv,CEIL,-,-,-,cpttginscrl,OPAQUE,ANOTHER,02,15  #   2 ||< floor_liv:living
*surf,floor_din,CEIL,-,-,-,cpttginscrl,OPAQUE,ANOTHER,03,13  #   3 ||< floor_din:dining
*surf,floor_kit,CEIL,-,-,-,lino_tg_crwl,OPAQUE,ANOTHER,04,07  #   4 ||< floor_kit:kitchen
*surf,floor_eq,CEIL,-,-,-,lino_tg_crwl,OPAQUE,ANOTHER,11,41  #   5 ||< floor_eq:equipment
*surf,edge_fr_a,VERT,-,-,-,cavity_brick,OPAQUE,EXTERIOR,0,0  #   6 ||< external
*surf,edge_fr_b,VERT,-,-,-,cavity_brick,OPAQUE,EXTERIOR,0,0  #   7 ||< external
*surf,edge_fr_c,VERT,-,-,-,cavity_brick,OPAQUE,EXTERIOR,0,0  #   8 ||< external
*surf,edge_fr_d,VERT,-,-,-,cavity_brick,OPAQUE,EXTERIOR,0,0  #   9 ||< external
*surf,edge_fr_e,VERT,-,-,-,cavity_brick,OPAQUE,EXTERIOR,0,0  #  10 ||< external
*surf,edge_right_a,VERT,-,-,-,cavity_brick,OPAQUE,EXTERIOR,0,0  #  11 ||< external
*surf,edge_right_b,VERT,-,-,-,cavity_brick,OPAQUE,EXTERIOR,0,0  #  12 ||< external
*surf,edge_right_e,VERT,-,-,-,cavity_brick,OPAQUE,EXTERIOR,0,0  #  13 ||< external
*surf,edge_right_c,VERT,-,-,-,cavity_brick,OPAQUE,EXTERIOR,0,0  #  14 ||< external
*surf,edge_right_d,VERT,-,-,-,cavity_brick,OPAQUE,EXTERIOR,0,0  #  15 ||< external
*surf,edge_right_f,VERT,-,-,-,cavity_brick,OPAQUE,EXTERIOR,0,0  #  16 ||< external
*surf,edge_right_g,VERT,-,-,-,cavity_brick,OPAQUE,EXTERIOR,0,0  #  17 ||< external
*surf,edge_right_h,VERT,-,-,-,cavity_brick,OPAQUE,EXTERIOR,0,0  #  18 ||< external
*surf,edge_right_i,VERT,-,-,-,cavity_brick,OPAQUE,EXTERIOR,0,0  #  19 ||< external
*surf,edge_bk,VERT,-,-,-,cavity_brick,OPAQUE,EXTERIOR,0,0  #  20 ||< external
*surf,edge_left,VERT,-,-,-,cavity_brick,OPAQUE,EXTERIOR,0,0  #  21 ||< external
*surf,ground,FLOR,-,-,-,ground_1.6m,OPAQUE,GROUND,01,0  #  22 ||< ground profile  1
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,42.93,0  # zone base
