*Geometry 1.1,GEN,hall # tag version, format, zone name
*date Fri Mar 23 14:18:53 2018  # latest file modification 
hall describes a...
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,10.58600,9.56900,0.00000  #   1
*vertex,11.43600,11.04100,0.00000  #   2
*vertex,7.97200,13.04200,0.00000  #   3
*vertex,7.12300,11.56900,0.00000  #   4
*vertex,10.58600,9.56900,2.40000  #   5
*vertex,11.43600,11.04100,2.40000  #   6
*vertex,7.97200,13.04200,2.40000  #   7
*vertex,7.12300,11.56900,2.40000  #   8
*vertex,10.93600,10.17500,0.00000  #   9
*vertex,11.33600,10.86800,0.00000  #  10
*vertex,11.33600,10.86800,2.10000  #  11
*vertex,10.93600,10.17500,2.10000  #  12
*vertex,8.75100,12.59100,0.00000  #  13
*vertex,8.75100,12.59100,2.40000  #  14
*vertex,7.22201,11.74320,0.00000  #  15
*vertex,7.57206,12.34939,0.00000  #  16
*vertex,7.57206,12.34939,2.10000  #  17
*vertex,7.22201,11.74320,2.10000  #  18
*vertex,8.92421,12.49101,0.00000  #  19
*vertex,9.53045,12.14104,0.00000  #  20
*vertex,9.53045,12.14104,2.10000  #  21
*vertex,8.92421,12.49101,2.10000  #  22
*vertex,8.05859,12.99098,0.00000  #  23
*vertex,8.66473,12.64084,0.00000  #  24
*vertex,8.66473,12.64084,2.10000  #  25
*vertex,8.05859,12.99098,2.10000  #  26
*vertex,10.15496,9.81895,0.00000  #  27
*vertex,9.46209,10.21887,0.00000  #  28
*vertex,9.46209,10.21887,2.10000  #  29
*vertex,10.15496,9.81895,2.10000  #  30
# 
# tag, number of vertices followed by list of associated vert
*edges,8,1,9,12,11,10,2,6,5  #   1
*edges,8,2,20,21,22,19,13,14,6  #   2
*edges,8,3,16,17,18,15,4,8,7  #   3
*edges,8,4,28,29,30,27,1,5,8  #   4
*edges,5,5,6,14,7,8  #   5
*edges,15,1,27,28,4,15,16,3,23,24,13,19,20,2,10,9  #   6
*edges,4,9,10,11,12  #   7
*edges,8,13,24,25,26,23,3,7,14  #   8
*edges,4,16,15,18,17  #   9
*edges,4,20,19,22,21  #  10
*edges,4,24,23,26,25  #  11
*edges,4,28,27,30,29  #  12
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,s_buf,VERT,-,-,-,int_buf,OPAQUE,ANOTHER,08,07  #   1 ||< s_hall:buf_2
*surf,s_bed1,VERT,-,-,-,int_buf,OPAQUE,ANOTHER,05,04  #   2 ||< s_hall:bed1
*surf,s_bath,VERT,-,-,-,int_buf,OPAQUE,ANOTHER,04,01  #   3 ||< s_hall:bath
*surf,s_liv,VERT,-,-,-,int_buf,OPAQUE,ANOTHER,01,02  #   4 ||< s_hall:kitliv
*surf,ceil,CEIL,-,-,-,int_roof,OPAQUE,ANOTHER,10,03  #   5 ||< hall:roof
*surf,floor,FLOR,-,-,-,house_floor,OPAQUE,GROUND,01,00  #   6 ||< ground profile  1
*surf,door,VERT,s_buf,DOOR,UNDERCUT,door,OPAQUE,ANOTHER,08,08  #   7 ||< door:buf_2
*surf,s_bed2,VERT,-,-,-,door,OPAQUE,ANOTHER,06,08  #   8 ||< s_hall:bed2
*surf,door_bath,VERT,s_bath,DOOR,UNDERCUT,door,OPAQUE,ANOTHER,04,007  #   9 ||< door_bath:bath
*surf,door_b1,VERT,s_bed1,DOOR,UNDERCUT,door,OPAQUE,ANOTHER,05,008  #  10 ||< door_b1:bed1
*surf,door_b2,VERT,s_bed2,DOOR,UNDERCUT,door,OPAQUE,ANOTHER,06,009  #  11 ||< door_b2:bed2
*surf,liv_door,VERT,s_liv,DOOR,UNDERCUT,door,OPAQUE,ANOTHER,01,012  #  12 ||< liv_door:kitliv
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,1,6,     6.80 0  # zone base list
