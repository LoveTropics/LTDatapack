# Add every tag applied at first join
tag @s add utility.player.introduced
tag @s add utility.spawn_island.joined
tag @s add utility.player.joined
tag @s add utility.player.really_has_drink
tag @s add utility.player.has_drink

# Reset scores
scoreboard players reset @s spawn_island.skip_time
scoreboard players reset @s spawn_island.time

# Clear nausea effect from a player if they have it.
effect clear @s nausea

tellraw @s {"translate":"lt.utility.introduce_island.message.fix_player_alert","color": "red"}
tellraw @a[tag=main.operator] [{"selector":"@s","color":"dark_gray"},{"text":" has had their first time join tags and scoreboard values reset, and has been sent to spawn. They have been sent a message explaining why this happened.","color":"red"}]

# Feedback
execute as @s at @s run playsound minecraft:block.portal.travel master @s ~ ~ ~ 1 1.5

# Teleport
execute in tropicraft:tropics run tp @s 2335 131 2403 -90 0
execute in tropicraft:tropics run spawnpoint @s 2335 131 2403