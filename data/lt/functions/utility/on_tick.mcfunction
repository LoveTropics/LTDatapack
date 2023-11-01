#execute as @e[tag=survive_the_tide_3.loot_marker.tier_1.placer] at @s run function lt:utility/chest_marker/tier1
#execute as @e[tag=survive_the_tide_3.loot_marker.tier_2.placer] at @s run function lt:utility/chest_marker/tier2
#execute as @e[tag=survive_the_tide_3.loot_marker.tier_3.placer] at @s run function lt:utility/chest_marker/tier3
#execute as @e[tag=survive_the_tide_3.loot_marker] at @s run data merge entity @s {Age:0}
#execute as @e[tag=survive_the_tide_3.loot_marker] at @s if block ~ ~ ~ air run setblock ~ ~1 ~ air
#execute as @e[tag=survive_the_tide_3.loot_marker] at @s if block ~ ~ ~ air run kill @s

# Teleport
#execute as @a[tag=!utility.player.joined] at @s run function lt:utility/player/first_join

execute in tropicraft:tropics run function lt:utility/team/on_tick

execute in minecraft:overworld as @a[tag=!utility.player.introduced] at @s run function lt:utility/spawn_island/introduce

execute in minecraft:overworld if entity @a[current_world=true] run function lt:utility/spawn_island/tick