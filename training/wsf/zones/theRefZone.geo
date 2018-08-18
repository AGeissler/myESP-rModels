*Geometry 1.1,GEN,theRefZone # tag version, format, zone name
*date Fri Jan 22 20:16:56 2016  # latest file modification 
theRefZone describes the reference zone w/o moisture modelling
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,5.00000,0.00000,0.00000  #   1
*vertex,9.00000,0.00000,0.00000  #   2
*vertex,9.00000,6.00000,0.00000  #   3
*vertex,5.00000,6.00000,0.00000  #   4
*vertex,5.00000,0.00000,3.00000  #   5
*vertex,9.00000,0.00000,3.00000  #   6
*vertex,9.00000,6.00000,3.00000  #   7
*vertex,5.00000,6.00000,3.00000  #   8
*vertex,6.00000,0.00000,0.00000  #   9
*vertex,7.00000,0.00000,0.00000  #  10
*vertex,8.00000,0.00000,0.00000  #  11
*vertex,8.00000,0.00000,3.00000  #  12
*vertex,7.00000,0.00000,3.00000  #  13
*vertex,6.00000,0.00000,3.00000  #  14
# 
# tag, number of vertices followed by list of associated vert
*edges,4,1,9,14,5  #  1
*edges,4,2,3,7,6  #  2
*edges,4,3,4,8,7  #  3
*edges,4,4,1,5,8  #  4
*edges,7,5,14,13,12,6,7,8  #  5
*edges,7,1,4,3,2,11,10,9  #  6
*edges,4,9,10,13,14  #  7
*edges,4,10,11,12,13  #  8
*edges,4,11,2,6,12  #  9
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,Wall-1a,VERT,-,-,-,w_unins,OPAQUE,EXTERIOR,0,0  #   1 ||< external
*surf,Wall-2,VERT,-,-,-,mass_part,OPAQUE,SIMILAR,00,00  #   2 ||< identical environment
*surf,Wall-3,VERT,-,-,-,mass_part,OPAQUE,SIMILAR,00,00  #   3 ||< identical environment
*surf,Wall-4,VERT,-,-,-,mass_part,OPAQUE,SIMILAR,00,00  #   4 ||< identical environment
*surf,Top-5,CEIL,-,-,-,ceiling,OPAQUE,SIMILAR,00,00  #   5 ||< identical environment
*surf,Base-6,FLOR,-,-,-,ceiling_rev,OPAQUE,SIMILAR,00,00  #   6 ||< identical environment
*surf,Wall-1b,VERT,-,-,-,w_int_ins,OPAQUE,EXTERIOR,0,0  #   7 ||< external
*surf,Wall-1c,VERT,-,-,-,w_int_ins_vb,OPAQUE,EXTERIOR,0,0  #   8 ||< external
*surf,Wall-1d,VERT,-,-,-,w_unins,OPAQUE,EXTERIOR,0,0  #   9 ||< external
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,24.00,0  # zone base
