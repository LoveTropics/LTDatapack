# Sets title times
title @a[tag=map.player] times 0 15 0
title @a[tag=map.player] title " "
title @a[tag=map.player] subtitle " "
title @a[tag=map.player] actionbar {"text":"To interact with the map; Look at a map pin and then punch to be teleported.","color":"yellow"}

# Runs related functions based on armour stand being looked at
#tag @a remove map.player.looking.TEMPLATE
#execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.location.TEMPLATE,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.TEMPLATE
tag @a remove map.player.looking.banyan_tree
tag @a remove map.player.looking.crab_golf
tag @a remove map.player.looking.mountain_village
tag @a remove map.player.looking.research_institute
tag @a remove map.player.looking.resort
tag @a remove map.player.looking.theatre
tag @a remove map.player.looking.free_build_1
tag @a remove map.player.looking.free_build_2
tag @a remove map.player.looking.free_build_3
tag @a remove map.player.looking.stage
execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.marker.location.banyan_tree,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.banyan_tree
execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.marker.location.crab_golf,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.crab_golf
execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.marker.location.mountain_village,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.mountain_village
execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.marker.location.research_institute,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.research_institute
execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.marker.location.resort,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.resort
execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.marker.location.theatre,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.theatre
execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.marker.location.free_build_1,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.free_build_1
execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.marker.location.free_build_2,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.free_build_2
execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.marker.location.free_build_3,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.free_build_3
execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.marker.location.stage,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.stage
# Show map info
#execute as @a[tag=map.player.looking.TEMPLATE] at @s run function lt:map/map_location/TEMPLATE
execute as @a[tag=map.player.looking.banyan_tree] at @s run function lt:map/map_location/banyan_tree
execute as @a[tag=map.player.looking.crab_golf] at @s run function lt:map/map_location/crab_golf
execute as @a[tag=map.player.looking.mountain_village] at @s run function lt:map/map_location/mountain_village
execute as @a[tag=map.player.looking.research_institute] at @s run function lt:map/map_location/research_institute
execute as @a[tag=map.player.looking.resort] at @s run function lt:map/map_location/resort
execute as @a[tag=map.player.looking.theatre] at @s run function lt:map/map_location/theatre
execute as @a[tag=map.player.looking.free_build_1] at @s run function lt:map/map_location/free_build_1
execute as @a[tag=map.player.looking.free_build_2] at @s run function lt:map/map_location/free_build_2
execute as @a[tag=map.player.looking.free_build_3] at @s run function lt:map/map_location/free_build_3
execute as @a[tag=map.player.looking.stage] at @s run function lt:map/map_location/stage
# Teleports map.marker.hit_tracker mobs ot their targets
execute as @a[tag=map.player] at @s positioned ~ ~1 ~ run tp @e[tag=map.marker.hit_tracker,sort=nearest,limit=1,distance=..1.5] @s
execute as @e[tag=map.marker.hit_tracker] at @s if entity @p[tag=map.player,distance=..1.5] run tp @s ~ ~1 ~

# Gives players who don't have a slime another slime
execute as @a[tag=map.player] at @s positioned ~ ~1 ~ unless entity @e[tag=map.marker.hit_tracker,limit=1,sort=nearest,distance=..1] run function lt20:map_board/enter_map_area

# Checks if player is looking at a map pin and has left clicked
execute as @a[tag=map.player] at @s in minecraft:overworld if entity @e[tag=map.marker.hit_tracker,limit=1,sort=nearest,distance=..1.5,nbt={HurtTime:8s}] run execute as @s at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.05] run function lt:map/teleport_player

# Puts pins on map markers
#replaceitem entity @e[tag=map.marker] armor.head iron_ingot{CustomModelData:1} 1
#execute as @e[tag=map.marker] at @s run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
#execute as @e[tag=map.marker] at @s run tp @s ~ ~ ~ 90 0
