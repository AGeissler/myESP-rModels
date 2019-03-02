*Geometry 1.1,GEN,bed1 # tag version, format, zone name
*date Wed Feb  6 13:40:19 2019  # latest file modification 
bed1 describes a...
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,11.43600,11.04100,0.00000  #   1
*vertex,12.98600,13.72600,0.00000  #   2
*vertex,10.30100,15.27600,0.00000  #   3
*vertex,8.75100,12.59100,0.00000  #   4
*vertex,11.43600,11.04100,2.40000  #   5
*vertex,12.98600,13.72600,2.40000  #   6
*vertex,10.30100,15.27600,2.40000  #   7
*vertex,8.75100,12.59100,2.40000  #   8
*vertex,11.94700,14.32600,0.60000  #   9
*vertex,11.21000,14.75100,0.60000  #  10
*vertex,11.21000,14.75100,2.10000  #  11
*vertex,11.94700,14.32600,2.10000  #  12
*vertex,8.92421,12.49101,0.00000  #  13
*vertex,9.53045,12.14104,0.00000  #  14
*vertex,9.53045,12.14104,2.10000  #  15
*vertex,8.92421,12.49101,2.10000  #  16
# 
# tag, number of vertices followed by list of associated vert
*edges,4,1,2,6,5  #   1
*edges,10,2,3,7,6,2,9,12,11,10,9  #   2
*edges,4,3,4,8,7  #   3
*edges,8,4,13,16,15,14,1,5,8  #   4
*edges,4,5,6,7,8  #   5
*edges,6,1,14,13,4,3,2  #   6
*edges,4,9,10,11,12  #   7
*edges,4,13,14,15,16  #   8
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,s_buf,VERT,-,-,-,int_buf,OPAQUE,ANOTHER,08,03  #   1 ||< s_bed:buf_2
*surf,ext_east,VERT,-,-,-,ext_east,OPAQUE,EXTERIOR,00,000  #   2 ||< external
*surf,s_bed2,VERT,-,PARTN,-,int_buf,OPAQUE,ANOTHER,06,01  #   3 ||< s_bed1:bed2
*surf,s_hall,VERT,-,-,-,int_buf,OPAQUE,ANOTHER,03,02  #   4 ||< s_bed1:hall
*surf,ceil,CEIL,-,-,-,int_roof,OPAQUE,ANOTHER,10,05  #   5 ||< bed1:roof
*surf,floor,FLOR,-,-,-,house_floor,OPAQUE,GROUND,01,00  #   6 ||< ground profile  1
*surf,win,VERT,ext_east,C-WINDOW,CRACK,doub_glaz,DC_8074_04nb,EXTERIOR,00,000  #   7 ||< external
*surf,door_b1,VERT,s_hall,DOOR,UNDERCUT,door,OPAQUE,ANOTHER,03,010  #   8 ||< door_b1:hall
# 
*insol,1,6,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,all_applicable   2 # list of surfs
  2  7
# 
*insol_calc,all_applicable   1 # insolation sources
  7
# 
*base_list,1,6,     9.61 0  # zone base list
# 
# block entities:
#  *obs = obstructions
*block_start, 20 20 # geometric blocks
*obs,12.0410,14.2950,0.6000,0.6000,0.1000,1.5000,60.00,1.00,S NONE  # block   1
*obs,11.2000,14.8000,0.6000,0.6000,0.1000,1.5000,60.00,1.00,N NONE  # block   2
*obs,12.0410,14.2950,2.1000,0.6000,1.0500,0.1000,60.00,1.00,T NONE  # block   3
*end_block
