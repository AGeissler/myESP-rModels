#!/bin/bash
# take current model and extract monthly report as well as
# hours over for 24 25 26C unfiltered and filtered for occup.
RESFILE=$1
time res -mode text -file $RESFILE<<XXX > /dev/null

d # enquire about
>
$RESFILE.data
$RESFILE results
f # energy delivered
a # stats
h # heating cooling
g # all sensible and latent
-
l # monthly stats
- # default layout
b # nearest 100wh
c # hours above
b # temperatures
e # resultant
-
24.0
b
a
-
24.0
+ # filter
b # occupants
b
e
24.0
b
a
24.0
> # switch back to screen
-
-
-
XXX
