*Geometry 1.1,GEN,ceiling_slb # tag version, format, zone name
*date Thu Aug 23 19:31:15 2007  # latest file modification 
ceiling_slb represents zone for heating at ceiling level
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,0.00000,0.00000,3.20000  #   1
*vertex,6.10000,0.00000,3.20000  #   2
*vertex,6.10000,5.55000,3.20000  #   3
*vertex,0.00000,5.55000,3.20000  #   4
*vertex,0.00000,0.00000,3.00000  #   5
*vertex,6.10000,0.00000,3.00000  #   6
*vertex,6.10000,5.55000,3.00000  #   7
*vertex,0.00000,5.55000,3.00000  #   8
*vertex,0.00000,2.35000,3.00000  #   9
*vertex,0.00000,2.50000,3.00000  #  10
*vertex,0.00000,4.50000,3.00000  #  11
*vertex,3.00000,4.50000,3.00000  #  12
*vertex,3.00000,0.00000,3.00000  #  13
*vertex,6.10000,2.35000,3.00000  #  14
*vertex,3.10000,0.00000,3.00000  #  15
*vertex,3.10000,4.50000,3.00000  #  16
*vertex,6.10000,4.50000,3.00000  #  17
*vertex,6.10000,2.50000,3.00000  #  18
*vertex,0.00000,4.55000,3.00000  #  19
*vertex,6.10000,4.55000,3.00000  #  20
# 
# tag, number of vertices followed by list of associated vert
*edges,6,2,1,5,13,15,6  #  1
*edges,8,3,2,6,14,18,17,20,7  #  2
*edges,4,4,3,7,8  #  3
*edges,8,1,4,8,19,11,10,9,5  #  4
*edges,4,4,1,2,3  #  5
*edges,6,5,9,10,11,12,13  #  6
*edges,6,14,6,15,16,17,18  #  7
*edges,4,19,8,7,20  #  8
*edges,8,15,13,12,11,19,20,17,16  #  9
# 
# surf attributes:
#  surf name, surf position VERT/CIIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,edge_s,VERT,-,-,-,brk_aer_block_wall,OPAQUE,SIMILAR,00,00  #   1 ||< identical environment
*surf,edge_e,VERT,-,-,-,structure100mm,OPAQUE,SIMILAR,00,00  #   2 ||< identical environment
*surf,edge_n,VERT,-,-,-,structure100mm,OPAQUE,SIMILAR,00,00  #   3 ||< identical environment
*surf,edge_w,VERT,-,-,-,structure100mm,OPAQUE,SIMILAR,00,00  #   4 ||< identical environment
*surf,upper,CEIL,-,-,-,slate_screed_rev,OPAQUE,CONSTANT,20,00  #   5 ||< constant @ 20dC &   0W rad
*surf,floor_ma,FLOR,-,-,-,upper_scrd,OPAQUE,ANOTHER,01,05  #   6 ||< ceiling:manager_a
*surf,floor_mb,FLOR,-,-,-,upper_scrd,OPAQUE,ANOTHER,02,05  #   7 ||< ceiling:manager_b
*surf,floor_cor,FLOR,-,-,-,upper_scrd,OPAQUE,ANOTHER,03,04  #   8 ||< ceiling:corridor
*surf,filler,FLOR,-,-,-,slate_screed_rev,OPAQUE,ADIABATIC,0,0  #   9 ||< adiabatic
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,5,6,5,7,8,9,    67.71 0  # zone base list
