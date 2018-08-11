
Overview of stone_simi_1890 model

This model represents a portion of an 1890 Glasgow stone
tenement building. It includes sufficient resolution to
support a range of what-if refurbishment studies.

The model configuration file stone_simi_1890.cfg includes
several simulation parameter sets which include various
save levels, simulation timesteps as well as saving at
each timestep and once per hour.

It also includes some example scripts which can be used
for benchmarking tasks:
runall  - invokes and then extracts standard report from each
          of the seasonal runs in stone_simi_1890.cfg 
          and stone_simi_1890_jan-feb.cfg
runmonthly - invokes a mix of sequential and parallel assessments
run_may - invokes a may assessment at 20 tsph.
