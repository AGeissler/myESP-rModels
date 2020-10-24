*Geometry 1.1,GEN,cells # tag version, format, zone name
*date Mon Jun  8 09:17:06 2020  # latest file modification 
cells describes the bank of energy cells Quantum heater
# tag, X co-ord, Y co-ord, Z co-ord
*vertex,0.05000,0.05000,0.12000  #   1
*vertex,0.68000,0.05000,0.12000  #   2
*vertex,0.68000,0.14000,0.12000  #   3
*vertex,0.05000,0.14000,0.12000  #   4
*vertex,0.05000,0.05000,0.65000  #   5
*vertex,0.68000,0.05000,0.65000  #   6
*vertex,0.68000,0.14000,0.65000  #   7
*vertex,0.05000,0.14000,0.65000  #   8
*vertex,0.08000,0.08000,0.65000  #   9
*vertex,0.65000,0.08000,0.65000  #  10
*vertex,0.65000,0.11000,0.65000  #  11
*vertex,0.08000,0.11000,0.65000  #  12
*vertex,0.08000,0.08000,0.12000  #  13
*vertex,0.08000,0.11000,0.12000  #  14
*vertex,0.65000,0.11000,0.12000  #  15
*vertex,0.65000,0.08000,0.12000  #  16
# 
# tag, number of vertices followed by list of associated vert
*edges,4,1,2,6,5  #   1
*edges,4,2,3,7,6  #   2
*edges,4,3,4,8,7  #   3
*edges,4,4,1,5,8  #   4
*edges,10,5,9,12,11,10,9,5,6,7,8  #   5
*edges,10,1,4,14,13,16,15,14,4,3,2  #   6
*edges,4,9,10,11,12  #   7
*edges,4,13,14,15,16  #   8
# 
# surf attributes:
#  surf name, surf position VERT/CEIL/FLOR/SLOP/UNKN
#  child of (surface name), useage (pair of tags) 
#  construction name, optical name
#  boundary condition tag followed by two data items
*surf,front,VERT,-,-,-,magnitite_core->shell,OPAQUE,ANOTHER,009,000  #   1 ||< front:storg_shell
*surf,right,VERT,-,-,-,magnitite_core->shell,OPAQUE,ANOTHER,010,000  #   2 ||< right:storg_shell
*surf,back,VERT,-,-,-,magnitite_core->shell,OPAQUE,ANOTHER,011,000  #   3 ||< back:storg_shell
*surf,left,VERT,-,-,-,magnitite_core->shell,OPAQUE,ANOTHER,012,000  #   4 ||< left:storg_shell
*surf,top,CEIL,-,F-FRAME,CLOSED,magnitite_core->shell,OPAQUE,ANOTHER,013,000  #   5 ||< top:storg_shell
*surf,base,FLOR,-,-,-,magnitite_core->shell,OPAQUE,ANOTHER,014,000  #   6 ||< base:storg_shell
*surf,upper_vent,CEIL,top,GRILL,OPEN,steel_gr_3mm,OPAQUE,ANOTHER,015,000  #   7 ||< upper_vent:storg_shell
*surf,low_vent,FLOR,base,GRILL,OPEN,steel_gr_3mm,OPAQUE,ANOTHER,016,000  #   8 ||< low_vent:storg_shell
# 
*insol,3,0,0,0  # default insolation distribution
# 
# shading directives
*shad_calc,none  # no temporal shading requested
# 
*insol_calc,none  # no insolation requested
# 
*base_list,0,0.06,0  # zone base
