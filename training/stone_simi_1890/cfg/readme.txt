
Overview of stone_simi_1890 model

This model represents a portion of an 1890 Glasgow stone
tenement building. It includes sufficient resolution to
support a range of what-if refurbishment studies.

There are four configuration files:
stone_simi_1890_jan-feb_s2.cfg - setup for save level 2 assessments
  with a one week winter period, a two month winter period, a four
  month summer period and an annual period of assessment.
stone_simi_1890_jan-feb.cfg - with save level 4 (full energy balance
  for the above periods. Note annual save 4 takes ~4.3GB.
stone_simi_1890_monthly.cfg - has five periods may, june, july
  and august as well as may-august.
stone_simi_1890_may20.cfg similar to the monthly but at 20 time
  steps per hour (matches the timings of an equivalent EnergyPlus
  model with finite elemement conduction.

It also includes some example scripts which can be used
for benchmarking tasks:
runall  - invokes and then extracts standard report from each
          of the seasonal runs of stone_simi_1890_jan-feb_s2.cfg 
          and stone_simi_1890_jan-feb.cfg
runmonthly - invokes a mix of sequential and parallel assessments
run_20tsph - invokes may assessment at 20 tsph.
