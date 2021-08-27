# Sets title times
title @a[tag=at_map] times 0 15 0

# Runs related functions based on armour stand being looked at
tag @a remove at_map_looking_boardwalk
tag @a remove at_map_looking_spleef
tag @a remove at_map_looking_treasure_hunt
tag @a remove at_map_looking_bee_village
tag @a remove at_map_looking_free_build_1
tag @a remove at_map_looking_free_build_2
tag @a remove at_map_looking_turtle_race_normal
tag @a remove at_map_looking_turtle_race_arcade
tag @a remove at_map_looking_spawn_donators_dome
tag @a remove at_map_looking_spawn_map_dome
tag @a remove at_map_looking_spawn_monument_dome
tag @a remove at_map_looking_spawn_tower
tag @a remove at_map_looking_mountain_mansion
#tag @a remove at_map_looking_4
execute in tropicraft:tropics run execute as @a[tag=at_map] at @s anchored eyes facing entity @e[type=armor_stand,tag=map_marker,tag=map_location_boardwalk,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add at_map_looking_boardwalk
execute in tropicraft:tropics run execute as @a[tag=at_map] at @s anchored eyes facing entity @e[type=armor_stand,tag=map_marker,tag=map_location_spleef,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add at_map_looking_spleef
execute in tropicraft:tropics run execute as @a[tag=at_map] at @s anchored eyes facing entity @e[type=armor_stand,tag=map_marker,tag=map_location_treasure_hunt,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add at_map_looking_treasure_hunt
execute in tropicraft:tropics run execute as @a[tag=at_map] at @s anchored eyes facing entity @e[type=armor_stand,tag=map_marker,tag=map_location_bee_village,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add at_map_looking_bee_village
execute in tropicraft:tropics run execute as @a[tag=at_map] at @s anchored eyes facing entity @e[type=armor_stand,tag=map_marker,tag=map_location_free_build_1,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add at_map_looking_free_build_1
execute in tropicraft:tropics run execute as @a[tag=at_map] at @s anchored eyes facing entity @e[type=armor_stand,tag=map_marker,tag=map_location_free_build_2,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add at_map_looking_free_build_2
execute in tropicraft:tropics run execute as @a[tag=at_map] at @s anchored eyes facing entity @e[type=armor_stand,tag=map_marker,tag=map_location_turtle_race_normal,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add at_map_looking_turtle_race_normal
execute in tropicraft:tropics run execute as @a[tag=at_map] at @s anchored eyes facing entity @e[type=armor_stand,tag=map_marker,tag=map_location_turtle_race_arcade,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add at_map_looking_turtle_race_arcade
execute in tropicraft:tropics run execute as @a[tag=at_map] at @s anchored eyes facing entity @e[type=armor_stand,tag=map_marker,tag=map_location_spawn_donators_dome,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add at_map_looking_spawn_donators_dome
execute in tropicraft:tropics run execute as @a[tag=at_map] at @s anchored eyes facing entity @e[type=armor_stand,tag=map_marker,tag=map_location_spawn_map_dome,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add at_map_looking_spawn_map_dome
execute in tropicraft:tropics run execute as @a[tag=at_map] at @s anchored eyes facing entity @e[type=armor_stand,tag=map_marker,tag=map_location_spawn_monument_dome,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add at_map_looking_spawn_monument_dome
execute in tropicraft:tropics run execute as @a[tag=at_map] at @s anchored eyes facing entity @e[type=armor_stand,tag=map_marker,tag=map_location_spawn_tower,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add at_map_looking_spawn_tower
execute in tropicraft:tropics run execute as @a[tag=at_map] at @s anchored eyes facing entity @e[type=armor_stand,tag=map_marker,tag=map_location_mountain_mansion,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add at_map_looking_mountain_mansion



title @a[tag=at_map] title " "
title @a[tag=at_map] subtitle " "
title @a[tag=at_map] actionbar {"text":"To interact with the map; Look at a map pin and then punch to be teleported.","color":"yellow"}
execute as @a[tag=at_map_looking_boardwalk] at @s run function lt20:map_board/map_location/boardwalk
execute as @a[tag=at_map_looking_spleef] at @s run function lt20:map_board/map_location/spleef
execute as @a[tag=at_map_looking_treasure_hunt] at @s run function lt20:map_board/map_location/treasure_hunt
execute as @a[tag=at_map_looking_bee_village] at @s run function lt20:map_board/map_location/bee_village
execute as @a[tag=at_map_looking_free_build_1] at @s run function lt20:map_board/map_location/free_build_1
execute as @a[tag=at_map_looking_free_build_2] at @s run function lt20:map_board/map_location/free_build_2
execute as @a[tag=at_map_looking_turtle_race_normal] at @s run function lt20:map_board/map_location/turtle_race_normal
execute as @a[tag=at_map_looking_turtle_race_arcade] at @s run function lt20:map_board/map_location/turtle_race_arcade
execute as @a[tag=at_map_looking_spawn_donators_dome] at @s run function lt20:map_board/map_location/spawn_donators_dome
execute as @a[tag=at_map_looking_spawn_map_dome] at @s run function lt20:map_board/map_location/spawn_map_dome
execute as @a[tag=at_map_looking_spawn_monument_dome] at @s run function lt20:map_board/map_location/spawn_monument_dome
execute as @a[tag=at_map_looking_spawn_tower] at @s run function lt20:map_board/map_location/spawn_tower
execute as @a[tag=at_map_looking_mountain_mansion] at @s run function lt20:map_board/map_location/mountain_mansion

# Teleports hit_track mobs ot their targets
execute as @a[tag=at_map] at @s if entity @e[tag=hit_track,distance=..1.5,sort=nearest,limit=1] run tp @e[tag=hit_track,limit=1,sort=nearest,distance=..1.5] @s
execute as @e[tag=hit_track] at @s if entity @p[distance=..1.5] run tp @s ~ ~1 ~

# Gives players who don't have a slime another slime
execute as @a[tag=at_map] at @s unless entity @e[tag=hit_track,limit=1,sort=nearest,distance=..1.5] run function lt20:map_board/enter_map_area

# Checks if player is looking at a map pin and has left clicked
execute as @a[tag=at_map] at @s in tropicraft:tropics if entity @e[tag=hit_track,limit=1,sort=nearest,distance=..1.5,nbt={HurtTime:8s}] run execute as @s at @s anchored eyes facing entity @e[type=armor_stand,tag=map_marker] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.05] run function lt20:map_board/teleport_player

# Puts pins on map markers
#replaceitem entity @e[tag=map_marker] armor.head iron_ingot{CustomModelData:1} 1
#execute as @e[tag=map_marker] at @s run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
