*Geometry 1.1,GEN,trombe_mid # tag version, format, zone name
*date Tue Feb  5 11:38:40 2019  # latest file modification 
trombe_mid describes 2nd level of air gap in trombe wall
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,0.00000,1.00000,0.75000  #   1
*vertex,4.00000,1.00000,0.75000  #   2
*vertex,4.00000,1.20000,0.75000  #   3
*vertex,0.00000,1.20000,0.75000  #   4
*vertex,0.00000,1.00000,1.50000  #   5
*vertex,4.00000,1.00000,1.50000  #   6
*vertex,4.00000,1.20000,1.50000  #   7
*vertex,0.00000,1.20000,1.50000  #   8
# 
# tag, number of vertices followed by list of associated vert
*edges,4,1,2,6,5  #   1
*edges,4,2,3,7,6  #   2
*edges,4,3,4,8,7  #   3
*edges,4,4,1,5,8  #   4
*edges,4,5,6,7,8  #   5
*edges,4,1,4,3,2  #   6
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,front,VERT,-,-,-,single_glz,SCF8477_10nb,EXTERIOR,00,000  #   1 ||< external
*surf,right,VERT,-,-,-,insul_mtl_p,OPAQUE,SIMILAR,00,000  #   2 ||< identical environment
*surf,trombe_face,VERT,-,-,-,trombe_mas_a,OPAQUE,ANOTHER,06,007  #   3 ||< wall_tmid:office
*surf,fict_left,VERT,-,-,-,fictitious,SC_fictit,ANOTHER,05,007  #   4 ||< fict_mid:bypass
*surf,fict_up,CEIL,-,GRILL,OPEN,fictitious,SC_fictit,ANOTHER,03,006  #   5 ||< fict_base:trombe_mid2
*surf,fict_base,FLOR,-,GRILL,OPEN,fictitious,SC_fictit,ANOTHER,01,005  #   6 ||< fict_up:trombe_low
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,all_applicable   1 # list of surfs
  1
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
