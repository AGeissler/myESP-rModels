*Geometry 1.1,GEN,Main_Floor # tag version, format, zone name
*date Tue Oct 22 09:15:27 2019  # latest file modification 
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
*vertex,6.50000,0.00000,0.50000  #  15
*vertex,8.50000,0.00000,0.50000  #  16
*vertex,8.50000,0.00000,2.00000  #  17
*vertex,6.50000,0.00000,2.00000  #  18
*vertex,10.00000,1.50000,0.50000  #  19
*vertex,10.00000,3.50000,0.50000  #  20
*vertex,10.00000,3.50000,2.00000  #  21
*vertex,10.00000,1.50000,2.00000  #  22
*vertex,10.00000,6.50000,0.50000  #  23
*vertex,10.00000,8.50000,0.50000  #  24
*vertex,10.00000,8.50000,2.00000  #  25
*vertex,10.00000,6.50000,2.00000  #  26
*vertex,8.50000,10.00000,0.50000  #  27
*vertex,6.50000,10.00000,0.50000  #  28
*vertex,6.50000,10.00000,2.00000  #  29
*vertex,8.50000,10.00000,2.00000  #  30
*vertex,0.00000,8.50000,0.50000  #  31
*vertex,0.00000,6.50000,0.50000  #  32
*vertex,0.00000,6.50000,2.00000  #  33
*vertex,0.00000,8.50000,2.00000  #  34
*vertex,1.50000,5.00000,0.50000  #  35
*vertex,3.50000,5.00000,0.50000  #  36
*vertex,3.50000,5.00000,2.00000  #  37
*vertex,1.50000,5.00000,2.00000  #  38
*vertex,5.00000,3.50000,0.50000  #  39
*vertex,5.00000,1.50000,0.50000  #  40
*vertex,5.00000,1.50000,2.00000  #  41
*vertex,5.00000,3.50000,2.00000  #  42
# 
# tag, number of vertices followed by list of associated vert
*edges,10,1,2,9,8,1,15,18,17,16,15  #   1
*edges,10,2,3,10,9,2,19,22,21,20,19  #   2
*edges,10,3,4,11,10,3,23,26,25,24,23  #   3
*edges,10,4,5,12,11,4,27,30,29,28,27  #   4
*edges,10,5,6,13,12,5,31,34,33,32,31  #   5
*edges,10,6,7,14,13,6,35,38,37,36,35  #   6
*edges,10,7,1,8,14,7,39,42,41,40,39  #   7
*edges,7,8,9,10,11,12,13,14  #   8
*edges,7,1,7,6,5,4,3,2  #   9
*edges,4,15,16,17,18  #  10
*edges,4,19,20,21,22  #  11
*edges,4,23,24,25,26  #  12
*edges,4,27,28,29,30  #  13
*edges,4,31,32,33,34  #  14
*edges,4,35,36,37,38  #  15
*edges,4,39,40,41,42  #  16
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
*surf,Window-1,VERT,-,-,-,Window,SC_8985_04nb,UNKNOWN,00,000  #  10 ||< not yet defined
*surf,Window-2,VERT,-,-,-,Window,SC_8985_04nb,UNKNOWN,00,000  #  11 ||< not yet defined
*surf,Window-3,VERT,-,-,-,Window,SC_8985_04nb,UNKNOWN,00,000  #  12 ||< not yet defined
*surf,Window-4,VERT,-,-,-,Window,SC_8985_04nb,UNKNOWN,00,000  #  13 ||< not yet defined
*surf,Window-5,VERT,-,-,-,Window,SC_8985_04nb,UNKNOWN,00,000  #  14 ||< not yet defined
*surf,Window-6,VERT,-,-,-,Window,SC_8985_04nb,UNKNOWN,00,000  #  15 ||< not yet defined
*surf,Window-7,VERT,-,-,-,Window,SC_8985_04nb,UNKNOWN,00,000  #  16 ||< not yet defined
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,1,9,    75.00 0  # zone base list
