*Geometry 1.1,GEN,Lab_Env # tag version, format, zone name
*date Thu Jan 24 09:55:04 2019  # latest file modification 
Lab_Env describes a lab environment
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,0.00000,0.00000,0.00000  #   1
*vertex,15.00000,0.00000,0.00000  #   2
*vertex,15.00000,15.00000,0.00000  #   3
*vertex,0.00000,15.00000,0.00000  #   4
*vertex,0.00000,0.00000,5.00000  #   5
*vertex,15.00000,0.00000,5.00000  #   6
*vertex,15.00000,15.00000,5.00000  #   7
*vertex,0.00000,15.00000,5.00000  #   8
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
*surf,Wall-1,VERT,-,-,-,Brk_sip2013,OPAQUE,ADIABATIC,00,000  #   1 ||< adiabatic
*surf,Wall-2,VERT,-,-,-,Brk_sip2013,OPAQUE,EXTERIOR,00,000  #   2 ||< external
*surf,Wall-3,VERT,-,-,-,Brk_sip2013,OPAQUE,EXTERIOR,00,000  #   3 ||< external
*surf,Wall-4,VERT,-,-,-,Brk_sip2013,OPAQUE,EXTERIOR,00,000  #   4 ||< external
*surf,Top-5,CEIL,-,-,-,roof,OPAQUE,ADIABATIC,00,000  #   5 ||< adiabatic
*surf,Base-6,FLOR,-,-,-,grnd_floor,OPAQUE,GROUND,01,0  #   6 ||< ground profile  1
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,750.00,0  # zone base
