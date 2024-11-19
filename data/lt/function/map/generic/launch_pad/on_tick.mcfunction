## On tick for the launch pad generic map feature

# Tick down score on player till its 0 then remove levitation
execute as @a[scores={map.launch_pad.lev_time=1..}] run function lt:map/generic/launch_pad/remove_levitation

# Rotate launch pads 
execute as @e[type=breeze,tag=map.launch_pad] at @s run tp @s ~0.001 ~ ~ ~3.0 ~0
# I actually hate it here for real
execute as @e[type=marker,tag=map.launch_pad_puller] at @s if entity @e[type=breeze,tag=map.launch_pad,distance=0.2..1] run tp @e[type=breeze,tag=map.launch_pad,limit=1,sort=nearest,distance=..2] @s
#
execute as @e[type=breeze,tag=map.launch_pad] at @s run tp @e[type=wind_charge,tag=charge_1,limit=1,sort=nearest,distance=..5] ^0.4 ^0.4 ^0.4
execute as @e[type=breeze,tag=map.launch_pad] at @s run tp @e[type=wind_charge,tag=charge_2,limit=1,sort=nearest,distance=..5] ^-0.4 ^0.4 ^0.4
execute as @e[type=breeze,tag=map.launch_pad] at @s run tp @e[type=wind_charge,tag=charge_3,limit=1,sort=nearest,distance=..5] ^-0.4 ^0.4 ^-0.4
# Particles on launch pads
execute as @e[type=breeze,tag=map.launch_pad] at @s run particle minecraft:trial_spawner_detection_ominous ~ ~0.3 ~ 0.15 0 0.15 0 1 force @a[distance=..15]