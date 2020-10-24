*Geometry 1.1,GEN,main # tag version, format, zone name
*date Thu Oct 15 21:19:48 2020  # latest file modification 
main describes a zone
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,0.00000,0.00000,1.00000  #   1
*vertex,3.50000,0.00000,1.00000  #   2
*vertex,3.50000,2.00000,1.00000  #   3
*vertex,0.00000,2.00000,1.00000  #   4
*vertex,0.00000,0.00000,3.40000  #   5
*vertex,3.50000,0.00000,3.40000  #   6
*vertex,3.50000,2.00000,3.40000  #   7
*vertex,0.00000,2.00000,3.40000  #   8
*vertex,2.50000,0.00000,1.00000  #   9
*vertex,2.50000,0.00000,3.00000  #  10
*vertex,3.30000,0.00000,3.00000  #  11
*vertex,3.30000,0.00000,1.00000  #  12
*vertex,0.35000,0.00000,1.00000  #  13
*vertex,0.35000,0.00000,3.40000  #  14
*vertex,0.00000,1.75000,1.00000  #  15
*vertex,0.00000,1.75000,3.40000  #  16
*vertex,3.50000,1.75000,1.00000  #  17
*vertex,3.50000,1.75000,3.40000  #  18
*vertex,0.35000,2.00000,1.00000  #  19
*vertex,0.35000,2.00000,3.40000  #  20
*vertex,0.40000,0.00000,1.00000  #  21
*vertex,0.40000,0.00000,3.40000  #  22
*vertex,0.40000,1.70000,1.10000  #  23
*vertex,2.80000,1.70000,1.10000  #  24
*vertex,2.80000,1.70000,2.00000  #  25
*vertex,0.40000,1.70000,2.00000  #  26
# 
# tag, number of vertices followed by list of associated vert
*edges,8,21,9,10,11,12,2,6,22  #   1
*edges,4,2,17,18,6  #   2
*edges,4,3,19,20,7  #   3
*edges,4,15,1,5,16  #   4
*edges,6,14,22,6,18,7,20  #   5
*edges,8,13,19,3,17,2,12,9,21  #   6
*edges,6,1,13,21,22,14,5  #   7
*edges,4,4,15,16,8  #   8
*edges,4,17,3,7,18  #   9
*edges,4,19,4,8,20  #  10
*edges,5,5,14,20,8,16  #  11
*edges,5,13,1,15,4,19  #  12
*edges,4,9,12,11,10  #  13
*edges,4,23,24,25,26  #  14
*edges,4,24,23,26,25  #  15
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,front,VERT,-,-,-,polydouble,DC_8074_04nb,EXTERIOR,00,000  #   1 ||< external
*surf,left,VERT,-,-,-,wallrefl2,OPAQUE,EXTERIOR,00,000  #   2 ||< external
*surf,back,VERT,-,-,-,wallrefl2,OPAQUE,EXTERIOR,00,000  #   3 ||< external
*surf,right,VERT,-,-,-,wallrefl2,OPAQUE,EXTERIOR,00,000  #   4 ||< external
*surf,roof,CEIL,-,-,-,roofrefl2,OPAQUE,EXTERIOR,00,000  #   5 ||< external
*surf,floor,FLOR,-,-,-,floorrefl2,OPAQUE,EXTERIOR,00,000  #   6 ||< external
*surf,framefront,VERT,-,-,-,wallrefl2stu,OPAQUE,EXTERIOR,00,000  #   7 ||< external
*surf,fromeright,VERT,-,-,-,wallrefl2stu,OPAQUE,EXTERIOR,00,000  #   8 ||< external
*surf,frameleft,VERT,-,-,-,wallrefl2stu,OPAQUE,EXTERIOR,00,000  #   9 ||< external
*surf,frameback,VERT,-,-,-,wallrefl2stu,OPAQUE,EXTERIOR,00,000  #  10 ||< external
*surf,frameroof,CEIL,-,-,-,wallrefl2stu,OPAQUE,EXTERIOR,00,000  #  11 ||< external
*surf,framefloor,FLOR,-,-,-,wallrefl2stu,OPAQUE,EXTERIOR,00,000  #  12 ||< external
*surf,door,VERT,front,-,-,wallrefl2,OPAQUE,EXTERIOR,00,000  #  13 ||< external
*surf,indoorfront,VERT,-,-,-,waterbin,OPAQUE,ANOTHER,015,000  #  14 ||< indoorback:main
*surf,indoorback,VERT,-,-,-,waterbin,OPAQUE,ANOTHER,01,014  #  15 ||< indoorfront:main
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,all_applicable  13 # list of surfs
  1  2  3  4  5  6  7  8  9 10 11 12 13
# 
*insol_calc,all_applicable   1 # insolation sources
  1
# 
*base_list,0,7.00,0  # zone base
# 
# block entities:
#  *obs = obstructions
*block_start, 20 20 # geometric blocks
*obs,-1.0000,-5.0000,0.0000,0.1000,10.0000,10.0000,0.00,1.00,wallrefl reflector  # block   1
*obs,0.0000,-3.1000,1.0000,2.5000,3.0000,0.1000,0.00,1.00,sillrefl reflector  # block   2
*end_block
