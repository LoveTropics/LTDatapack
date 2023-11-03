execute as @a[scores={spawn_island.time=1..}] at @s if dimension minecraft:overworld run scoreboard players remove @s spawn_island.time 1
execute as @a[scores={spawn_island.skip_time=1..}] at @s if dimension minecraft:overworld run scoreboard players remove @s spawn_island.skip_time 1

execute as @a[tag=utility.player.introduced,tag=!utility.player.has_drink] at @s if dimension minecraft:overworld if data entity @s ForgeCaps."ltextras:collectibles".collectibles[0] run function lt:utility/spawn_island/has_drink

execute as @a[tag=utility.player.introduced,tag=utility.player.has_drink,tag=!utility.player.really_has_drink] at @s if dimension minecraft:overworld if data entity @s Inventory[1] run function lt:utility/spawn_island/really_has_drink

execute as @a[scores={spawn_island.time=0},tag=!utility.player.joined] run function lt:utility/player/first_join
execute as @a[scores={spawn_island.skip_time=0},tag=!utility.player.joined] run function lt:utility/player/first_join