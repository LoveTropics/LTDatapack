# Teleport
execute in minecraft:overworld run tp @s 896 63 -132 -180 0

scoreboard players set @s spawn_island.skip_time 1800

# Feedback
execute as @s at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 2 1

tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n"},{"translate":"lt.utility.introduce_island.message.1","color": "green"},{"text": "\n"}]
tag @s add utility.player.introduced