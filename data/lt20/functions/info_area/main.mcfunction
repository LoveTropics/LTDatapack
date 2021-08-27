# Apply zombie effects
effect give @e[tag=info_area_zombie] instant_damage 360000 80 true
effect give @e[tag=info_area_zombie] invisibility 360000 80 true
# Track when a player in area deals damage
execute as @a[tag=at_info_area,scores={InfoDamageTrack=1..}] at @s if entity @e[tag=info_area_zombie,distance=..50,nbt={HurtTime:10s}] run function lt20:info_area/track_damage
title @a[tag=at_info_area] times 0 1 0
scoreboard players reset @a InfoDamageTrack
