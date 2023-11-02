# Add every tag applied at first join
tag @s remove utility.player.introduced
tag @s remove utility.spawn_island.joined
tag @s remove utility.player.joined
tag @s remove utility.player.really_has_drink
tag @s remove utility.player.has_drink

# Reset scores
scoreboard players reset @s spawn_island.skip_time
scoreboard players reset @s spawn_island.time

# Clear nausea effect from a player if they have it.
effect clear @s nausea

clear @s

collectible clear @s

execute as @s at @s run function lt:collectible/give/utility/collectible_basket

execute in minecraft:overworld run tp @s 896 63 -134