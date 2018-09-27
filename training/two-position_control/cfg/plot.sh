#!/bin/bash

gnuplot --persist << eor
set multiplot layout 2, 1
fmt = "%Y-%m-%d"
set xdata time
set datafile separator ','

set ylabel "Total sensible load / kW"
set key outside
set key horizontal

#set yrange [-5:5]
plot 'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):10 title "reception" with lines, \
  'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):11 title "reception 2" with lines, \
  'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):12 title "reception 3" with lines, \
  'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):13 title "reception 4" with lines
#
set arrow from strptime(fmt, "1967-01-09"),20 to strptime(fmt, "1967-01-10"),20 nohead dt "."
set arrow from strptime(fmt, "1967-01-09"),22 to strptime(fmt, "1967-01-10"),22 nohead dt "."
set arrow from strptime(fmt, "1967-01-09"),23 to strptime(fmt, "1967-01-10"),23 nohead dt "."
set arrow from strptime(fmt, "1967-01-09"),24 to strptime(fmt, "1967-01-10"),24 nohead dt "."
set arrow from strptime(fmt, "1967-01-09"),26 to strptime(fmt, "1967-01-10"),26 nohead dt "."
set yrange [15:30]
set ylabel "Temperature / {/Symbol \260}C"
plot 'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):2 title "reception" with lines, \
  'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):(column(3)/2+column(7)/2) title "reception 2" with lines, \
  'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):4 title "reception 3" with lines, \
  'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):(column(5)/2+column(9)/2) title "reception 4" with lines, \
  'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):14 title "ambient" with lines  lt rgb "grey"
eor

gnuplot --persist << eor
set multiplot layout 2, 1
fmt = "%Y-%m-%d"
set xdata time
set datafile separator ','

set title "reception"
set ylabel "Total sensible load / kW"
set key outside
set key horizontal

plot 'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):10 title "TotSens to air" with lines

#
set arrow from strptime(fmt, "1967-01-09"),20 to strptime(fmt, "1967-01-10"),20 nohead dt "."
set arrow from strptime(fmt, "1967-01-09"),22 to strptime(fmt, "1967-01-10"),22 nohead dt "."
set arrow from strptime(fmt, "1967-01-09"),24 to strptime(fmt, "1967-01-10"),24 nohead dt "."
set arrow from strptime(fmt, "1967-01-09"),26 to strptime(fmt, "1967-01-10"),26 nohead dt "."
set yrange [15:30]
set ylabel "Temperature / {/Symbol \260}C"
plot 'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):2 title "dbT(ctrl)" with lines, \
  'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):6 title "MRT" with lines, \
  'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):(column(2)/2+column(6)/2) title "Opr" with lines, \
  'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):14 title "ambient" with lines  lt rgb "grey"
eor

gnuplot --persist << eor
set multiplot layout 2, 1
fmt = "%Y-%m-%d"
set xdata time
set datafile separator ','

set title "reception2"
set ylabel "Total sensible load / kW"
set key outside
set key horizontal

plot 'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):11 title "TotSens to air" with lines

#
set arrow from strptime(fmt, "1967-01-09"),20 to strptime(fmt, "1967-01-10"),20 nohead dt "."
set arrow from strptime(fmt, "1967-01-09"),22 to strptime(fmt, "1967-01-10"),22 nohead dt "."
set arrow from strptime(fmt, "1967-01-09"),23 to strptime(fmt, "1967-01-10"),23 nohead dt "."
set arrow from strptime(fmt, "1967-01-09"),24 to strptime(fmt, "1967-01-10"),24 nohead dt "."
set yrange [15:30]
set ylabel "Temperature / {/Symbol \260}C"
plot 'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):3 title "dbT" with lines, \
  'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):7 title "MRT" with lines, \
  'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):(column(3)/2+column(7)/2) title "Opr(ctrl)" with lines, \
  'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):14 title "ambient" with lines  lt rgb "grey"
eor

gnuplot --persist << eor
set multiplot layout 2, 1
fmt = "%Y-%m-%d"
set xdata time
set datafile separator ','

set title "reception3"
set ylabel "Total sensible load / kW"
set key outside
set key horizontal

plot 'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):12 title "TotSens to mix" with lines

#
set arrow from strptime(fmt, "1967-01-09"),20 to strptime(fmt, "1967-01-10"),20 nohead dt "."
set arrow from strptime(fmt, "1967-01-09"),22 to strptime(fmt, "1967-01-10"),22 nohead dt "."
set arrow from strptime(fmt, "1967-01-09"),24 to strptime(fmt, "1967-01-10"),24 nohead dt "."
set arrow from strptime(fmt, "1967-01-09"),26 to strptime(fmt, "1967-01-10"),26 nohead dt "."
set yrange [15:30]
set ylabel "Temperature / {/Symbol \260}C"
plot 'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):4 title "dbT(ctrl)" with lines, \
  'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):8 title "MRT" with lines, \
  'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):(column(4)/2+column(8)/2) title "Opr" with lines, \
  'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):14 title "ambient" with lines  lt rgb "grey"
eor

gnuplot --persist << eor
set multiplot layout 2, 1
fmt = "%Y-%m-%d"
set xdata time
set datafile separator ','

set title "reception4"
set ylabel "Total sensible load / kW"
set key outside
set key horizontal

plot 'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):13 title "TotSens to mix" with lines

#
set arrow from strptime(fmt, "1967-01-09"),20 to strptime(fmt, "1967-01-10"),20 nohead dt "."
set arrow from strptime(fmt, "1967-01-09"),22 to strptime(fmt, "1967-01-10"),22 nohead dt "."
set arrow from strptime(fmt, "1967-01-09"),23 to strptime(fmt, "1967-01-10"),23 nohead dt "."
set arrow from strptime(fmt, "1967-01-09"),24 to strptime(fmt, "1967-01-10"),24 nohead dt "."
set yrange [15:30]
set ylabel "Temperature / {/Symbol \260}C"
plot 'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):5 title "dbT" with lines, \
  'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):9 title "MRT" with lines, \
  'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):(column(5)/2+column(9)/2) title "Opr(ctrl)" with lines, \
  'two-position_control.csv' using (timecolumn(1,"%Y-%m-%d %H:%M:%S")):14 title "ambient" with lines  lt rgb "grey"
eor
