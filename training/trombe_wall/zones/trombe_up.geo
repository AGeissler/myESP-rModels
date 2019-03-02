*Geometry 1.1,GEN,trombe_up # tag version, format, zone name
*date Tue Feb  5 11:39:40 2019  # latest file modification 
trombe_up is the clear glazing section of trombe wall air gap
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,0.00000,1.00000,2.25000  #   1
*vertex,4.00000,1.00000,2.25000  #   2
*vertex,4.00000,1.20000,2.25000  #   3
*vertex,0.00000,1.20000,2.25000  #   4
*vertex,0.00000,1.00000,3.00000  #   5
*vertex,4.00000,1.00000,3.00000  #   6
*vertex,4.00000,1.20000,3.00000  #   7
*vertex,0.00000,1.20000,3.00000  #   8
*vertex,1.00000,1.20000,2.25000  #   9
*vertex,0.80000,1.20000,2.25000  #  10
*vertex,0.80000,1.20000,2.45000  #  11
*vertex,1.00000,1.20000,2.45000  #  12
*vertex,3.90000,1.20000,2.35000  #  13
*vertex,1.10000,1.20000,2.35000  #  14
*vertex,1.10000,1.20000,2.55000  #  15
*vertex,0.70000,1.20000,2.55000  #  16
*vertex,0.70000,1.20000,2.35000  #  17
*vertex,0.10000,1.20000,2.35000  #  18
*vertex,0.10000,1.20000,2.90000  #  19
*vertex,3.90000,1.20000,2.90000  #  20
*vertex,2.20000,1.00000,3.00000  #  21
*vertex,2.00000,1.00000,3.00000  #  22
*vertex,2.20000,1.00000,2.80000  #  23
*vertex,2.00000,1.00000,2.80000  #  24
# 
# tag, number of vertices followed by list of associated vert
*edges,8,1,2,6,21,23,24,22,5  #   1
*edges,4,2,3,7,6  #   2
*edges,18,3,13,20,19,18,17,16,15,14,13,3,9,12,11,10,4,8,7  #   3
*edges,4,4,1,5,8  #   4
*edges,6,5,22,21,6,7,8  #   5
*edges,6,1,4,10,9,3,2  #   6
*edges,4,9,10,11,12  #   7
*edges,8,13,14,15,16,17,18,19,20  #   8
*edges,4,24,23,21,22  #   9
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,front,VERT,-,-,-,single_glz,SCF8477_10nb,EXTERIOR,00,000  #   1 ||< external
*surf,right,VERT,-,-,-,insul_mtl_p,OPAQUE,SIMILAR,00,000  #   2 ||< identical environment
*surf,frame_open,VERT,-,-,-,door,OPAQUE,ANOTHER,06,011  #   3 ||< frame_open:office
*surf,fict_left,VERT,-,GRILL,OPEN,fictitious,SC_fictit,ANOTHER,05,009  #   4 ||< fict_up:bypass
*surf,top,CEIL,-,-,-,insul_mtl_p,OPAQUE,EXTERIOR,00,000  #   5 ||< external
*surf,fict_base,FLOR,-,GRILL,OPEN,fictitious,SC_fictit,ANOTHER,03,005  #   6 ||< fict_up:trombe_mid2
*surf,up_grill,VERT,frame_open,GRILL,OPEN,int_doors,OPAQUE,ANOTHER,06,012  #   7 ||< up_grill:office
*surf,up_in_glz,VERT,frame_open,WINDOW,CLOSED,single_glz,SCF8477_10nb,ANOTHER,06,013  #   8 ||< up_in_glz:office
*surf,up_out_grill,VERT,front,GRILL,OPEN,int_doors,OPAQUE,EXTERIOR,00,000  #   9 ||< external
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,all_applicable   3 # list of surfs
  1  5  9
# 
*insol_calc,all_applicable   1 # insolation sources
  1
# 
*base_list,1,6,     0.80 0  # zone base list
# 
# block entities:
#  *obs = obstructions
*block_start, 20 20 # geometric blocks
*obs,0.0000,0.0000,3.0000,4.0000,1.0000,0.1000,0.00,1.00,overhang extern_wall  # block   1
*end_block
