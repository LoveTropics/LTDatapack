## On tick for the launch pad generic map feature

# Tick down score on player till its 0 then remove levitation
execute as @a[scores={map.launch_pad.lev_time=1..}] run function lt:map/generic/launch_pad/remove_levitation

# Rotate launch pads 
execute as @e[type=breeze,tag=map.launch_pad] at @s run tp @s ~0.001 ~ ~ ~3.0 ~0
execute as @e[type=marker,tag=map.launch_pad_puller] at @s run tp @s ~ ~ ~ ~3.0 ~0
# I actually hate it here for real
execute as @e[type=marker,tag=map.launch_pad_puller] at @s if entity @e[type=breeze,tag=map.launch_pad,distance=0.01..1] run tp @e[type=breeze,tag=map.launch_pad,limit=1,sort=nearest,distance=..2] @s

# Particles on launch pads
execute as @e[type=breeze,tag=map.launch_pad] at @s run particle minecraft:trial_spawner_detection_ominous ~ ~0.3 ~ 0.15 0 0.15 0 1 force @a[distance=..90]

# Launch player if they're near and have not already been launched
execute as @e[type=breeze,tag=map.launch_pad] at @s positioned ~ ~0.1 ~ run execute as @a[tag=!map.launch_pad.is_launching,distance=..0.55,gamemode=!spectator] at @s run function lt:map/generic/launch_pad/apply_levitation