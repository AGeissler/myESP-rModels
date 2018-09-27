# Readme

The model contains 4 zones that are all identical except the control

* reception: Senses the air temperature and actuates at the air node
* reception2: Senses a 50% mix of db T and MRT and actuates the air node
* reception3: Senses the air temperature and actuates 50% mixed convective/radiant flux.
* reception4: Senses a 50% mix of db T and MRT and actuates 50% mixed convective/radiant flux.

This covers the primary sensor and actuator combinations.

There is an included bash script `run.sh` that will simulate the model for a day, extract the results, and call `gnuplot` to plot the temperatures and heat flux.
This will show the contrast in behaviour between each control configuration.