*Geometry 1.1,GEN,attic # tag version, format, zone name
*date Tue Oct  3 12:33:58 2017  # latest file modification 
attic describes roof space
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,1.30000,1.30000,5.30000  #   1
*vertex,3.40000,1.30000,5.30000  #   2
*vertex,4.40000,1.30000,5.30000  #   3
*vertex,6.20000,1.30000,5.30000  #   4
*vertex,7.20000,1.30000,5.30000  #   5
*vertex,7.20000,4.80000,5.30000  #   6
*vertex,7.20000,8.50000,5.30000  #   7
*vertex,3.40000,8.50000,5.30000  #   8
*vertex,1.30000,8.50000,5.30000  #   9
*vertex,1.30000,6.00000,5.30000  #  10
*vertex,4.25000,3.57000,7.20000  #  11
*vertex,4.25000,6.20000,7.20000  #  12
*vertex,7.85000,9.15000,5.30000  #  13
*vertex,0.65000,9.15000,5.30000  #  14
*vertex,0.65000,0.65000,5.30000  #  15
*vertex,7.85000,0.65000,5.30000  #  16
*vertex,3.40000,0.65000,5.30000  #  17
*vertex,6.20000,0.65000,5.30000  #  18
*vertex,4.40000,0.65000,5.30000  #  19
*vertex,6.20000,0.70000,5.30000  #  20
*vertex,7.20000,2.30000,5.30000  #  21
*vertex,7.00000,2.30000,5.30000  #  22
*vertex,7.00000,3.80000,5.30000  #  23
*vertex,7.20000,3.80000,5.30000  #  24
*vertex,3.40000,4.80000,5.30000  #  25
*vertex,7.20000,5.90000,5.30000  #  26
*vertex,6.90000,5.90000,5.30000  #  27
*vertex,6.90000,7.30000,5.30000  #  28
*vertex,7.20000,7.30000,5.30000  #  29
*vertex,6.10000,8.50000,5.30000  #  30
*vertex,4.40000,8.50000,5.30000  #  31
*vertex,3.40000,6.00000,5.30000  #  32
*vertex,2.00000,1.30000,5.30000  #  33
*vertex,2.90000,1.30000,5.30000  #  34
*vertex,3.40000,3.70000,5.30000  #  35
*vertex,2.30000,3.70000,5.30000  #  36
*vertex,2.30000,2.98571,5.30000  #  37
*vertex,1.30000,2.98571,5.30000  #  38
*vertex,1.30000,3.70000,5.30000  #  39
*vertex,3.65254,0.88131,5.44738  #  40
*vertex,4.85247,0.86898,5.44738  #  41
*vertex,4.87393,2.95628,6.82314  #  42
*vertex,3.67399,2.96862,6.82314  #  43
*vertex,3.65969,1.57680,5.90578  #  44
*vertex,3.66683,2.27229,6.36418  #  45
*vertex,4.85962,1.56472,5.90595  #  46
*vertex,4.86678,2.26046,6.36452  #  47
# 
# tag, number of vertices followed by list of associated vert
*edges,17,18,20,16,11,15,17,19,18,40,44,45,43,42,47,46,41,40  #   1
*edges,4,16,13,12,11  #   2
*edges,3,13,14,12  #   3
*edges,4,14,15,11,12  #   4
*edges,12,13,16,20,18,4,5,21,24,6,26,29,7  #   5
*edges,7,14,13,7,30,31,8,9  #   6
*edges,13,15,14,9,10,39,38,1,33,34,2,3,19,17  #   7
*edges,13,3,2,35,25,6,24,23,22,21,5,4,18,19  #   8
*edges,11,6,25,32,8,31,30,7,29,28,27,26  #   9
*edges,4,10,9,8,32  #  10
*edges,4,24,21,22,23  #  11
*edges,4,29,26,27,28  #  12
*edges,8,33,1,38,37,36,35,2,34  #  13
*edges,4,37,38,39,36  #  14
*edges,6,35,36,39,10,32,25  #  15
*edges,4,40,41,46,44  #  16
*edges,4,44,46,47,45  #  17
*edges,4,45,47,42,43  #  18
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,fr_slope,SLOP,base_col,-,-,tile_rfcold,OPAQUE,EXTERIOR,00,000  #   1 ||< external
*surf,right_slope,SLOP,-,-,-,tile_rfcold,OPAQUE,EXTERIOR,00,000  #   2 ||< external
*surf,bk_slope,SLOP,-,-,-,tile_rfcold,OPAQUE,EXTERIOR,00,000  #   3 ||< external
*surf,left_slope,SLOP,-,-,-,tile_rfcold,OPAQUE,EXTERIOR,00,000  #   4 ||< external
*surf,soffit_right,FLOR,ceil_br1,-,-,susp_ceil,OPAQUE,EXTERIOR,00,000  #   5 ||< external
*surf,soffit_bk,FLOR,-,-,-,susp_ceil,OPAQUE,EXTERIOR,00,000  #   6 ||< external
*surf,soffit_left,FLOR,-,-,-,susp_ceil,OPAQUE,EXTERIOR,00,000  #   7 ||< external
*surf,ceil_br1,FLOR,-,-,-,ceiling_rev,OPAQUE,ANOTHER,06,15  #   8 ||< ceil_br1:bedroom1
*surf,ceil_br2,FLOR,-,-,-,ceiling_rev,OPAQUE,ANOTHER,08,11  #   9 ||< ceil_br2:bedroom2
*surf,ceil_bath,FLOR,-,-,-,ceiling_rev,OPAQUE,ANOTHER,09,06  #  10 ||< ceil_bath:bath
*surf,fill_br1,FLOR,ceil_br1,-,-,ceiling_rev,OPAQUE,ADIABATIC,00,000  #  11 ||< adiabatic
*surf,fill_br2,FLOR,ceil_br2,-,-,ceiling_rev,OPAQUE,ADIABATIC,00,000  #  12 ||< adiabatic
*surf,ceil_br3,FLOR,soffit_left,-,-,ceiling_rev,OPAQUE,ANOTHER,07,04  #  13 ||< Top-9:bedroom3
*surf,Top-stor,FLOR,-,-,-,ceiling_rev,OPAQUE,ANOTHER,07,11  #  14 ||< Top-stor:bedroom3
*surf,stair_ceil,FLOR,-,-,-,ceiling_rev,OPAQUE,ANOTHER,05,08  #  15 ||< stair_ceil:upper_hall
*surf,base_col,SLOP,fr_slope,FRAME,CLOSED,tank_i_100mi,OPAQUE,EXTERIOR,00,000  #  16 ||< external
*surf,mid_col,SLOP,fr_slope,-,-,tank_i_100mi,OPAQUE,EXTERIOR,00,000  #  17 ||< external
*surf,top_col,SLOP,fr_slope,-,-,tank_i_100mi,OPAQUE,EXTERIOR,00,000  #  18 ||< external
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,6,5,6,17,7,8,9,    62.16 0  # zone base list
