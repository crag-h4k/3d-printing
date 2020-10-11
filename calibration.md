```
BLTOUCH_DEBUG COMMAND=pin_down
# First Home
G28
# Then paper test
PROBE_CALIBRATE
testz z=-1
accept
save_config
```
## Extruder Calibration
```
M83; extruder relative mode
M104 S240; set tool temp to 240c
G1 E100 F100
# measure 120mm of filament from point of entry in printer
c = step_distance from printer.cfg
m = remaining filament length
((120-m)/100) * c
```
## pressure advance
SET_VELOCITY_LIMIT SQUARE_CORNER_VELOCITY=1 ACCEL=500
TUNING_TOWER COMMAND=SET_PRESSURE_ADVANCE PARAMETER=ADVANCE START=0 FACTOR=.005

