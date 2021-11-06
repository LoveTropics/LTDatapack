# Sets title times
title @a[tag=map.player] times 0 15 0
title @a[tag=map.player] title " "
title @a[tag=map.player] subtitle " "
title @a[tag=map.player] actionbar {"text":"To interact with the map; Look at a map pin and then punch to be teleported.","color":"yellow"}

# Runs related functions based on armour stand being looked at
#tag @a remove map.player.looking.TEMPLATE
#execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.location.TEMPLATE,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.TEMPLATE
tag @a remove map.player.looking.concert_island
tag @a remove map.player.looking.research_centre
tag @a remove map.player.looking.tropiland
tag @a remove map.player.looking.town_square
tag @a remove map.player.looking.shrimp_farm
tag @a remove map.player.looking.scuba_centre
tag @a remove map.player.looking.palm_plantation
tag @a remove map.player.looking.boat_station_b
tag @a remove map.player.looking.boat_station_a
execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.marker.location.concert_island,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.concert_island
execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.marker.location.research_centre,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.research_centre
execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.marker.location.tropiland,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.tropiland
execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.marker.location.town_square,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.town_square
execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.marker.location.shrimp_farm,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.shrimp_farm
execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.marker.location.scuba_centre,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.scuba_centre
execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.marker.location.palm_plantation,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.palm_plantation
execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.marker.location.boat_station_b,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.boat_station_b
execute in minecraft:overworld run execute as @a[tag=map.player] at @s anchored eyes facing entity @e[type=armor_stand,tag=map.marker,tag=map.marker.location.boat_station_a,distance=..50] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.06] run tag @s add map.player.looking.boat_station_a
# Show map info
#execute as @a[tag=map.player.looking.TEMPLATE] at @s run function lt:map/map_location/TEMPLATE
execute as @a[tag=map.player.looking.concert_island] at @s run function lt:map/map_location/concert_island
execute as @a[tag=map.player.looking.research_centre] at @s run function lt:map/map_location/research_centre
execute as @a[tag=map.player.looking.tropiland] at @s run function lt:map/map_location/tropiland
execute as @a[tag=map.player.looking.town_square] at @s run function lt:map/map_location/town_square
execute as @a[tag=map.player.looking.shrimp_farm] at @s run function lt:map/map_location/shrimp_farm
execute as @a[tag=map.player.looking.scuba_centre] at @s run function lt:map/map_location/scuba_centre
execute as @a[tag=map.player.looking.palm_plantation] at @s run function lt:map/map_location/palm_plantation
execute as @a[tag=map.player.looking.boat_station_b] at @s run function lt:map/map_location/boat_station_b
execute as @a[tag=map.player.looking.boat_station_a] at @s run function lt:map/map_location/boat_station_a
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
