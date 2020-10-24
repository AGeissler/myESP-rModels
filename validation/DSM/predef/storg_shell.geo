*Geometry 1.1,GEN,storg_shell # tag version, format, zone name
*date Mon Jun  8 09:17:42 2020  # latest file modification 
storg_shell describes shell of storage heater QM100
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,0.00000,0.00000,0.06000  #   1
*vertex,0.86500,0.00000,0.06000  #   2
*vertex,0.86500,0.18500,0.06000  #   3
*vertex,0.00000,0.18500,0.06000  #   4
*vertex,0.00000,0.00000,0.73000  #   5
*vertex,0.86500,0.00000,0.73000  #   6
*vertex,0.86500,0.18500,0.73000  #   7
*vertex,0.00000,0.18500,0.73000  #   8
*vertex,0.00000,0.00000,0.12000  #   9
*vertex,0.86500,0.00000,0.12000  #  10
*vertex,0.00000,0.09500,0.06000  #  11
*vertex,0.00000,0.06200,0.06000  #  12
*vertex,0.00000,0.06200,0.16000  #  13
*vertex,0.00000,0.09500,0.16000  #  14
*vertex,0.05000,0.05000,0.12000  #  15
*vertex,0.68000,0.05000,0.12000  #  16
*vertex,0.68000,0.05000,0.65000  #  17
*vertex,0.05000,0.05000,0.65000  #  18
*vertex,0.68000,0.14000,0.12000  #  19
*vertex,0.68000,0.14000,0.65000  #  20
*vertex,0.05000,0.14000,0.12000  #  21
*vertex,0.05000,0.14000,0.65000  #  22
*vertex,0.08000,0.08000,0.65000  #  23
*vertex,0.08000,0.11000,0.65000  #  24
*vertex,0.65000,0.11000,0.65000  #  25
*vertex,0.65000,0.08000,0.65000  #  26
*vertex,0.08000,0.11000,0.12000  #  27
*vertex,0.08000,0.08000,0.12000  #  28
*vertex,0.65000,0.08000,0.12000  #  29
*vertex,0.65000,0.11000,0.12000  #  30
# 
# tag, number of vertices followed by list of associated vert
*edges,4,10,6,5,9  #   1
*edges,5,2,3,7,6,10  #   2
*edges,4,3,4,8,7  #   3
*edges,9,4,11,14,13,12,1,9,5,8  #   4
*edges,4,5,6,7,8  #   5
*edges,6,1,12,11,4,3,2  #   6
*edges,4,1,2,10,9  #   7
*edges,4,11,12,13,14  #   8
*edges,4,16,15,18,17  #   9
*edges,4,19,16,17,20  #  10
*edges,4,21,19,20,22  #  11
*edges,4,15,21,22,18  #  12
*edges,10,23,18,22,20,17,18,23,26,25,24  #  13
*edges,10,21,15,16,19,21,27,30,29,28,27  #  14
*edges,4,26,23,24,25  #  15
*edges,4,27,28,29,30  #  16
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,case_fr,VERT,-,-,-,store_heater_shell->room,OPAQUE,EXTERIOR,000,000  #   1 ||< external
*surf,case_rt,VERT,-,-,-,store_heater_shell->room,OPAQUE,EXTERIOR,000,000  #   2 ||< external
*surf,case_bk,VERT,-,-,-,store_heater_shell->room,OPAQUE,EXTERIOR,000,000  #   3 ||< external
*surf,case_lft,VERT,-,-,-,store_heater_shell->room,OPAQUE,EXTERIOR,000,000  #   4 ||< external
*surf,case_top,CEIL,-,-,-,store_heater_shell->room,OPAQUE,EXTERIOR,000,000  #   5 ||< external
*surf,case_base,FLOR,-,-,-,store_heater_shell->room,OPAQUE,EXTERIOR,000,000  #   6 ||< external
*surf,fr_grill,VERT,case_fr,GRILL,OPEN,steel_gr_3mm,OPAQUE,EXTERIOR,000,000  #   7 ||< external
*surf,lft_grill,VERT,case_lft,GRILL,OPEN,steel_gr_3mm,OPAQUE,EXTERIOR,000,000  #   8 ||< external
*surf,front,VERT,-,-,-,magnitite_shell->core,OPAQUE,ANOTHER,001,000  #   9 ||< front:cells
*surf,right,VERT,-,-,-,magnitite_shell->core,OPAQUE,ANOTHER,002,000  #  10 ||< right:cells
*surf,back,VERT,-,-,-,magnitite_shell->core,OPAQUE,ANOTHER,003,000  #  11 ||< back:cells
*surf,left,VERT,-,-,-,magnitite_shell->core,OPAQUE,ANOTHER,004,000  #  12 ||< left:cells
*surf,top,FLOR,-,F-FRAME,CLOSED,magnitite_shell->core,OPAQUE,ANOTHER,005,000  #  13 ||< top:cells
*surf,base,CEIL,-,-,-,magnitite_shell->core,OPAQUE,ANOTHER,006,000  #  14 ||< base:cells
*surf,upper_vent,FLOR,top,GRILL,OPEN,steel_gr_3mm,OPAQUE,ANOTHER,007,000  #  15 ||< upper_vent:cells
*surf,low_vent,CEIL,base,GRILL,OPEN,steel_gr_3mm,OPAQUE,ANOTHER,008,000  #  16 ||< low_vent:cells
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.22,0  # zone base
