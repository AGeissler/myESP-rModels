In this CFD domain you can test several approach.
1. Manikin linked to the two node model
2. Manikin linked to the multi-segmented model
testing an occupant standing in the room with a cross natural ventilation.
The model has two large openings.

 You can choose between these different configuration files of occupant geometry representations.
  1.  If you are interested in solving with an occupant represented as one blockage select:
      ../cfg/twonode_occ_oneblock.cfg
      "This approach allows to have a dynamic heat flux distributed over the blockage surface equally"
      "Calculation based on the two nodes model" It solves in ~20 minutes.
     
  2.  If you are interested in more complex geometry linked to the two-node model, select:
      ../cfg/twonode_occ.cfg
      " Similar to the previous approach same calculation through the two-node model"
      " but here the geometry of the occupant is more detailed showing six body part"
      This solves slowly, allow several hours. There is a winter period as well as a
      summer period to try out.
 
  3.  If you are interested in the detailed model multi-segmented physiological model, select:
      ../cfg/CFD_room_occ_Lres.cfg
      " This approach uses the multi-segmented model to calculate and update heat flux at the boundaries"
      " of the manikin, it accounts for the temperature stratification. The domain is low-resolution.
      This solves at a moderate pace, allow several hours. There are May and a July periods.
 
  4.  If you are interested in the detailed model multi-segmented physiological model, select:
      ../cfg/CFD_room_occ_Hres.cfg
      " This approach uses the multi-segmented model to calculate and update heat flux at the boundaries"
      " of the manikin, it accounts for the temperature stratification. The domain is high-resolution.
      This solves at a moderate pace, allow the better part of a day. There are May and a July periods.

Each model configuration file is linked to its appropriate operation file.
These models work with the conflation method dynamically and not with the fluid flow only!  

For the multi-segmented model ONLY you have the option to choose another operation file 
           ../zones/workinghours.opr	to reduce the simulation time.



 IN all cases, please make sure that your desired CFD simulation time is consistent with the present of occupant in the domain
For that you need to check the operation file and change accordingly.

Example make sure at least one occupant is in the room and has metabolic rate value.
in the below case we have one man with 1.4met between 7 and 11 am. 
# slot, period, nb men, nb women, nb child, metabolic clo, air vel, rad_frac, conv_frac
   1,   7,  11,  1.00,  0.00,  0.00,  1.40,  0.60,  0.00,  0.600,  0.400

# casual user-label type-key-word slot attributes
*type Occupt       dynamicpeople     1  3  0  !!!! The number 3 means the model is dynamic and the two-node (physiology-model) model is chosen for calculation.


*type Occupt       dynamicpeople     1  4  0  !!!! the number 4 means the multisegmented physiological model is used.

