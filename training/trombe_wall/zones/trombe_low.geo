*Geometry 1.1,GEN,trombe_low # tag version, format, zone name
*date Tue Feb  5 11:37:56 2019  # latest file modification 
trombe_low describes lower section of trombe air gap
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,0.00000,1.00000,0.00000  #   1
*vertex,4.00000,1.00000,0.00000  #   2
*vertex,4.00000,1.20000,0.00000  #   3
*vertex,0.00000,1.20000,0.00000  #   4
*vertex,0.00000,1.00000,0.75000  #   5
*vertex,4.00000,1.00000,0.75000  #   6
*vertex,4.00000,1.20000,0.75000  #   7
*vertex,0.00000,1.20000,0.75000  #   8
*vertex,2.00000,1.00000,0.00000  #   9
*vertex,2.20000,1.00000,0.00000  #  10
*vertex,2.20000,1.00000,0.20000  #  11
*vertex,2.00000,1.00000,0.20000  #  12
*vertex,1.00000,1.20000,0.00000  #  13
*vertex,0.80000,1.20000,0.00000  #  14
*vertex,0.80000,1.20000,0.20000  #  15
*vertex,1.00000,1.20000,0.20000  #  16
# 
# tag, number of vertices followed by list of associated vert
*edges,8,1,9,12,11,10,2,6,5  #   1
*edges,4,2,3,7,6  #   2
*edges,8,3,13,16,15,14,4,8,7  #   3
*edges,4,4,1,5,8  #   4
*edges,4,5,6,7,8  #   5
*edges,8,1,4,14,13,3,2,10,9  #   6
*edges,4,9,10,11,12  #   7
*edges,4,13,14,15,16  #   8
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,front,VERT,-,C-WINDOW,CRACK,single_glz,SCF8477_10nb,EXTERIOR,00,000  #   1 ||< external
*surf,right,VERT,-,-,-,insul_mtl_p,OPAQUE,SIMILAR,00,000  #   2 ||< identical environment
*surf,trombe_face,VERT,-,-,-,trombe_mas_a,OPAQUE,ANOTHER,06,001  #   3 ||< wall_tlow:office
*surf,fict_left,VERT,-,GRILL,OPEN,fictitious,SC_fictit,ANOTHER,05,006  #   4 ||< fict_low:bypass
*surf,fict_up,CEIL,-,GRILL,OPEN,fictitious,SC_fictit,ANOTHER,02,006  #   5 ||< fict_base:trombe_mid
*surf,base,FLOR,-,-,-,insul_mtl_p,OPAQUE,GROUND,01,000  #   6 ||< ground profile  1
*surf,out_vent,VERT,front,GRILL,OPEN,int_doors,OPAQUE,EXTERIOR,00,000  #   7 ||< external
*surf,low_in_vent,VERT,trombe_face,GRILL,OPEN,int_doors,OPAQUE,ANOTHER,06,010  #   8 ||< low_in_vent:office
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,all_applicable   2 # list of surfs
  1  7
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
