*Geometry 1.1,GEN,manager_b # tag version, format, zone name
*date Mon Oct 23 06:54:39 2017  # latest file modification 
manager_b describes right office
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,6.10000,0.00000,0.00000  #   1
*vertex,3.10000,0.00000,0.00000  #   2
*vertex,3.10000,4.50000,0.00000  #   3
*vertex,4.90000,4.50000,0.00000  #   4
*vertex,6.10000,4.50000,0.00000  #   5
*vertex,6.10000,0.00000,3.00000  #   6
*vertex,3.10000,0.00000,3.00000  #   7
*vertex,3.10000,4.50000,3.00000  #   8
*vertex,4.90000,4.50000,3.00000  #   9
*vertex,6.10000,4.50000,3.00000  #  10
*vertex,6.10000,0.00000,0.90000  #  11
*vertex,3.10000,0.00000,0.90000  #  12
*vertex,6.00000,0.00000,1.00000  #  13
*vertex,3.20000,0.00000,1.00000  #  14
*vertex,3.20000,0.00000,2.90000  #  15
*vertex,6.00000,0.00000,2.90000  #  16
*vertex,3.20000,4.50000,0.10000  #  17
*vertex,4.80000,4.50000,0.10000  #  18
*vertex,4.80000,4.50000,2.90000  #  19
*vertex,3.20000,4.50000,2.90000  #  20
*vertex,5.70000,4.50000,0.00000  #  21
*vertex,5.70000,4.50000,3.00000  #  22
*vertex,6.10000,2.50000,0.00000  #  23
*vertex,6.10000,2.35000,0.00000  #  24
*vertex,6.10000,2.50000,3.00000  #  25
*vertex,6.10000,2.35000,3.00000  #  26
*vertex,4.90000,4.50000,2.90000  #  27
*vertex,5.70000,4.50000,2.90000  #  28
# 
# tag, number of vertices followed by list of associated vert
*edges,5,3,2,12,7,8  #   1
*edges,11,4,3,8,9,27,4,18,19,20,17,18  #   2
*edges,4,21,4,27,28  #   3
*edges,4,23,5,10,25  #   4
*edges,8,7,6,26,25,10,22,9,8  #   5
*edges,8,24,1,2,3,4,21,5,23  #   6
*edges,4,2,1,11,12  #   7
*edges,10,12,11,6,7,12,14,15,16,13,14  #   8
*edges,4,14,13,16,15  #   9
*edges,4,18,17,20,19  #  10
*edges,7,5,21,28,27,9,22,10  #  11
*edges,4,24,23,25,26  #  12
*edges,5,1,24,26,6,11  #  13
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,pt_general,VERT,-,-,-,gyp_gyp_ptn,OPAQUE,ANOTHER,01,01  #   1 ||< pt_general:manager_a
*surf,part_frame,VERT,-,-,-,sash_fr92mm,OPAQUE,ANOTHER,03,10  #   2 ||< part_frameb:corridor
*surf,door,VERT,-,-,-,door,OPAQUE,ANOTHER,03,11  #   3 ||< door_b:corridor
*surf,pt_other,VERT,-,-,-,gyp_gyp_ptn,OPAQUE,SIMILAR,00,00  #   4 ||< identical environment
*surf,ceiling,CEIL,-,-,-,ceiling,OPAQUE,SIMILAR,00,00  #   5 ||< identical environment
*surf,floor,FLOR,-,-,-,susp_flr_re,OPAQUE,SIMILAR,00,00  #   6 ||< identical environment
*surf,spandral,VERT,-,-,-,insul_frc_facade,OPAQUE,EXTERIOR,00,000  #   7 ||< external
*surf,frame,VERT,-,-,-,sash_fr92mm,OPAQUE,EXTERIOR,00,000  #   8 ||< external
*surf,glazing,VERT,frame,-,-,dbl_glz,DCF7671_06nb,EXTERIOR,00,000  #   9 ||< external
*surf,part_glaz,VERT,part_frame,-,-,dbl_glz,DCF7671_06nb,ANOTHER,03,13  #  10 ||< part_glazb:corridor
*surf,ptn_corid,VERT,-,-,-,gyp_gyp_ptn,OPAQUE,ANOTHER,03,12  #  11 ||< ptn_coridb:corridor
*surf,pt_other_a,VERT,-,-,-,gyp_gyp_ptn,OPAQUE,SIMILAR,00,00  #  12 ||< identical environment
*surf,pt_other_b,VERT,-,-,-,gyp_gyp_ptn,OPAQUE,SIMILAR,00,00  #  13 ||< identical environment
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,all_applicable   3 # list of surfs
  7  8  9
# 
*insol_calc,all_applicable   1 # insolation sources
  9
# 
*base_list,1,6,    13.50 0  # zone base list
# 
# block entities:
#  *obs = obstructions
*block_start, 20 20 # geometric blocks
*obs,0.0000,-0.1000,3.1000,6.0000,0.0200,0.3000,0.00,1.00,ob1 door  # block   1
*obs,0.0000,-0.3000,3.1000,6.0000,0.0200,0.2500,0.00,1.00,ob2 door  # block   2
*obs,0.0000,-0.5000,3.1000,6.0000,0.0200,0.2200,0.00,1.00,ob3 door  # block   3
*obs,0.0000,-0.7000,3.1000,6.0000,0.0200,0.2000,0.00,1.00,ob4 door  # block   4
*obs,0.0000,-0.9000,3.1000,6.0000,0.0200,0.2000,0.00,1.00,ob5 door  # block   5
*obs,0.0000,-1.1000,3.1000,6.0000,0.0200,0.2000,0.00,1.00,ob6 door  # block   6
*end_block
