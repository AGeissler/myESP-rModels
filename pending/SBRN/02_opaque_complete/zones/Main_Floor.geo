*Geometry 1.1,GEN,Main_Floor # tag version, format, zone name
*date Tue Oct 22 09:14:35 2019  # latest file modification 
Main_Floor describes a demonstration zone.
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,5.00000,0.00000,0.00000  #   1
*vertex,10.00000,0.00000,0.00000  #   2
*vertex,10.00000,5.00000,0.00000  #   3
*vertex,10.00000,10.00000,0.00000  #   4
*vertex,0.00000,10.00000,0.00000  #   5
*vertex,0.00000,5.00000,0.00000  #   6
*vertex,5.00000,5.00000,0.00000  #   7
*vertex,5.00000,0.00000,2.50000  #   8
*vertex,10.00000,0.00000,2.50000  #   9
*vertex,10.00000,5.00000,2.50000  #  10
*vertex,10.00000,10.00000,2.50000  #  11
*vertex,0.00000,10.00000,2.50000  #  12
*vertex,0.00000,5.00000,2.50000  #  13
*vertex,5.00000,5.00000,2.50000  #  14
# 
# tag, number of vertices followed by list of associated vert
*edges,4,1,2,9,8  #   1
*edges,4,2,3,10,9  #   2
*edges,4,3,4,11,10  #   3
*edges,4,4,5,12,11  #   4
*edges,4,5,6,13,12  #   5
*edges,4,6,7,14,13  #   6
*edges,4,7,1,8,14  #   7
*edges,7,8,9,10,11,12,13,14  #   8
*edges,7,1,7,6,5,4,3,2  #   9
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,Wall-1,VERT,-,-,-,Exterior_wal,OPAQUE,UNKNOWN,00,000  #   1 ||< not yet defined
*surf,Wall-2,VERT,-,-,-,Exterior_wal,OPAQUE,UNKNOWN,00,000  #   2 ||< not yet defined
*surf,Wall-3,VERT,-,-,-,Exterior_wal,OPAQUE,UNKNOWN,00,000  #   3 ||< not yet defined
*surf,Wall-4,VERT,-,-,-,Exterior_wal,OPAQUE,UNKNOWN,00,000  #   4 ||< not yet defined
*surf,Wall-5,VERT,-,-,-,Exterior_wal,OPAQUE,UNKNOWN,00,000  #   5 ||< not yet defined
*surf,Wall-6,VERT,-,-,-,Exterior_wal,OPAQUE,UNKNOWN,00,000  #   6 ||< not yet defined
*surf,Wall-7,VERT,-,-,-,Exterior_wal,OPAQUE,UNKNOWN,00,000  #   7 ||< not yet defined
*surf,Top-8,CEIL,-,-,-,Ceiling,OPAQUE,UNKNOWN,00,000  #   8 ||< not yet defined
*surf,Base-9,FLOR,-,-,-,Floor,OPAQUE,UNKNOWN,00,000  #   9 ||< not yet defined
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,1,9,    75.00 0  # zone base list
