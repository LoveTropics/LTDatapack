execute as @e[type=block_display,tag=forklift_bd_passenger] at @s run function lt:forklift/find_forklift_pair with entity @s data
#execute as @e[type=block_display,tag=forklift_bd_passenger] at @s run data modify entity @s Rotation[1] set value 0f
tag @a remove forklift_rider
execute as @a[nbt={RootVehicle:{Entity:{"id":"minecraft:camel",Tags:["forklift_vehicle"]}}}] at @s run function lt:forklift/player_tick with entity @s RootVehicle.Entity.data

execute as @e[type=camel,tag=forklift_vehicle] at @s run function lt:forklift/camel_tick with entity @s data