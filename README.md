# Digital PWM Motor Controller — ASIC Implementation

**RTL:** Verilog  
**Target platform:** SKY130HD  
**Flow artifacts:** synthesis, floorplan, placement, CTS, routing, final physical-design outputs  
**Timing experiment:** 15 ns clock-period constraint with 16 selected PVT variants

## Project overview

This repository contains the RTL for an 8-bit counter-based PWM controller, its testbench, SKY130HD flow configuration and SDC constraints, implementation results, logs, and static-timing-analysis (STA) evidence.

## Main files

- `digital_pwm_motor_controller/digital_pwm_motor_controller.v` — main RTL.
- `additional_evidence/digital_pwm_motor_controller_tb.v` — simulation testbench.
- `designs/sky130hd/digital_pwm_motor_controller/config.mk` — design configuration.
- `designs/sky130hd/digital_pwm_motor_controller/sdc/constraint.sdc` — baseline timing constraint.
- `designs/sky130hd/digital_pwm_motor_controller/sdc/constraint_15ns.sdc` — 15 ns experiment constraint.
- `reports/sky130hd/digital_pwm_motor_controller/sta_16_variants_15ns/` — per-variant 15 ns STA logs and scripts.
- `reports/sky130hd/digital_pwm_motor_controller/STA_16_Variants_15ns_Summary.txt` — 15 ns summary.
- `reports/sky130hd/digital_pwm_motor_controller/STA_16_Variants_15ns_Table.csv` — tabular 15 ns results.
- `results/sky130hd/digital_pwm_motor_controller/base/6_final.gds` — final GDS output.
- `results/sky130hd/digital_pwm_motor_controller/base/6_final.odb` — final OpenROAD database.
- `results/sky130hd/digital_pwm_motor_controller/base/6_final.spef` — extracted parasitics.
- `results/sky130hd/digital_pwm_motor_controller/base/6_final.v` — final netlist.

## Reported 15 ns STA results

The supplied 15 ns summary/table report positive setup and hold slack for the 16 included variants. The recorded worst setup slack is **+1.86 ns**, worst hold slack is **+0.39 ns**, and reported TNS is **0**. These are the results recorded in the supplied evidence; this package does not claim independent rerun or foundry sign-off. The separate `sta_16_variants/` folder is retained as earlier/baseline comparison evidence and should not be confused with `sta_16_variants_15ns/`.

## Repository notes

- `logs/` and `reports/` preserve implementation and timing evidence.
- `results/` contains generated physical-design outputs. These can make the repository large.
- The complete OpenROAD-flow-scripts installation and SKY130 platform libraries are not bundled. Re-running the flow requires a compatible external OpenROAD flow setup and platform files.
- Generated executables, duplicate backup archives, backup RTL, and unrelated `PWM32` examples were excluded from this cleaned package.


## Output screenshots

The `outputs/` directory contains screenshots captured during the project workflow, including simulation, synthesis, floorplanning, placement, routing, final layout, and timing analysis. Selected evidence is shown below.

### Simulation waveform

![GTKWave simulation waveform](outputs/GTK_wave.png)

### Physical design views

| Stage | Screenshot |
|---|---|
| Floorplan | ![Floorplan](outputs/Floorplan_GUI.png) |
| Global placement | ![Global placement](outputs/Global_Placement_GUI.png) |
| Global routing | ![Global routing](outputs/Global_Routing_GUI.png) |
| Final layout | ![Final layout](outputs/Final_Layout_GUI.png) |
| Final GDS layout | ![Final GDS layout](outputs/Final_GDS_Layout..png) |

### Static timing analysis

![All-corner timing summary](outputs/32_STA_All_Corners_Summary.png)

![Post-route STA results](outputs/Post-Route%20Static%20Timing%20Analysis%20%28STA%29%20Results.png)

Additional screenshots and reports are available in `outputs/` and `reports/`. The screenshots are supporting evidence; the detailed STA logs and CSV summary remain the primary source for numeric timing results.
