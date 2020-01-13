*Geometry 1.1,GEN,loft # tag version, format, zone name
*date Tue Oct 22 09:11:31 2019  # latest file modification 
roof space
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,0.00000,0.00000,4.80000  #   1
*vertex,5.52000,0.00000,4.80000  #   2
*vertex,5.52000,8.24000,4.80000  #   3
*vertex,0.00000,8.24000,4.80000  #   4
*vertex,0.00000,8.24000,8.38000  #   5
*vertex,5.52000,8.24000,8.38000  #   6
*vertex,2.60000,0.00000,4.80000  #   7
*vertex,5.52000,3.20000,4.80000  #   8
*vertex,2.12000,3.20000,4.80000  #   9
*vertex,2.12000,1.40000,4.80000  #  10
*vertex,2.60000,1.40000,4.80000  #  11
*vertex,0.00000,3.20000,4.80000  #  12
*vertex,5.52000,4.70000,4.80000  #  13
*vertex,4.52000,4.70000,4.80000  #  14
*vertex,3.92000,4.20000,4.80000  #  15
*vertex,2.12000,4.20000,4.80000  #  16
*vertex,2.12000,8.24000,4.80000  #  17
*vertex,2.12000,5.64000,4.80000  #  18
*vertex,0.00000,5.64000,4.80000  #  19
*vertex,-1.00000,5.64000,4.80000  #  20
*vertex,-1.00000,3.20000,4.80000  #  21
*vertex,0.00000,3.20000,5.20000  #  22
*vertex,0.00000,5.64000,5.20000  #  23
*vertex,0.28500,0.09172,4.83985  #  24
*vertex,5.23500,0.09172,4.83985  #  25
*vertex,5.23500,6.18910,7.48896  #  26
*vertex,0.28500,6.18910,7.48896  #  27
*vertex,0.28500,6.28265,7.52961  #  28
*vertex,5.23500,6.28265,7.52961  #  29
*vertex,5.23500,8.11700,8.32658  #  30
*vertex,0.28500,8.11700,8.32658  #  31
# 
# tag, number of vertices followed by list of associated vert
*edges,17,1,7,2,6,29,28,31,30,29,6,5,1,24,27,26,25,24  #   1
*edges,5,2,8,13,3,6  #   2
*edges,7,4,19,23,22,12,1,5  #   3
*edges,5,5,6,3,17,4  #   4
*edges,6,2,7,11,10,9,8  #   5
*edges,6,7,1,12,9,10,11  #   6
*edges,6,8,9,16,15,14,13  #   7
*edges,7,15,16,18,17,3,13,14  #   8
*edges,4,18,19,4,17  #   9
*edges,7,20,19,18,16,9,12,21  #  10
*edges,3,21,12,22  #  11
*edges,3,19,20,23  #  12
*edges,4,20,21,22,23  #  13
*edges,4,24,25,26,27  #  14
*edges,4,28,29,30,31  #  15
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,roof_s,SLOP,-,-,-,slate_rf,OPAQUE,EXTERIOR,00,000  #   1 ||< external
*surf,loft_w_e,VERT,-,-,-,AWI_06,OPAQUE,EXTERIOR,00,000  #   2 ||< external
*surf,loft_w_w,VERT,-,-,-,AWI_06,OPAQUE,EXTERIOR,00,000  #   3 ||< external
*surf,roof_n,VERT,-,-,-,slate_rf,OPAQUE,EXTERIOR,00,000  #   4 ||< external
*surf,br2_ceil,FLOR,-,-,-,attic_PHmm,OPAQUE,ANOTHER,02,034  #   5 ||< br2_ceil:non_living
*surf,br3_ceil,FLOR,-,-,-,attic_PHmm,OPAQUE,ANOTHER,02,035  #   6 ||< br3_ceil:non_living
*surf,ensuite_ceil,FLOR,-,-,-,attic_PHmm,OPAQUE,ANOTHER,02,036  #   7 ||< ensuite_ceil:non_living
*surf,br1_ceiling,FLOR,-,-,-,attic_PHmm,OPAQUE,ANOTHER,02,037  #   8 ||< br1_ceiling:non_living
*surf,up_bath_ceil,FLOR,-,-,-,attic_PHmm,OPAQUE,ANOTHER,02,038  #   9 ||< up_bath_ceil:non_living
*surf,nliv_roof,FLOR,-,-,-,attic_PHmm,OPAQUE,ANOTHER,02,003  #  10 ||< stair_ceil:non_living
*surf,stair_a,VERT,-,-,-,AWI_06,OPAQUE,EXTERIOR,00,000  #  11 ||< external
*surf,stair_c,VERT,-,-,-,AWI_06,OPAQUE,EXTERIOR,00,000  #  12 ||< external
*surf,stair_roof,SLOP,-,-,-,slate_rf,OPAQUE,EXTERIOR,00,000  #  13 ||< external
*surf,PV_array,SLOP,-,-,-,slate_rf_pv,PV_Kyocera,EXTERIOR,00,000  #  14 ||< external
*surf,sol_therm,SLOP,-,-,-,slate_rf,OPAQUE,EXTERIOR,00,000  #  15 ||< external
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,6,5,6,7,8,9,10,    47.92 2  # zone base list
