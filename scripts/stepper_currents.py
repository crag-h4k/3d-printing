#!/usr/bin/env python3

"""
[tmc2209 extruder]
uart_pin: P1.4
microsteps: 16
run_current: 0.800
hold_current: 0.500
stealthchop_threshold: 250
[extruder]
enable_pin: !P2.12
# Measure 120mm, then extrude 100mm
# # G1 E100 F100
# # step_distance = old_e_steps * ((120 - distance_to_mark) / 100)
#step_distance: 0.00247921760391
# added from https://e3d-online.dozuki.com/Answers/View/440/Klipper+configuration+for+Hermera
step_distance: 0.002444987775061
"""
