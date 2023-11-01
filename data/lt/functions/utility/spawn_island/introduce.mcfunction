# Teleport
execute in minecraft:overworld run tp @s 896 63 -132 -180 0

# Feedback
execute as @s at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 2 1

tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n"},{"translate":"lt.utility.introduce_island.message","color": "green"},{"text": "\n"}]
tag @s add utility.player.introduced