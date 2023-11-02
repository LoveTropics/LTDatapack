tag @s add utility.player.has_drink
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n"},{"translate":"lt.utility.introduce_island.message.2","color": "green"},{"text": "\n"}]
execute as @s at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 2 1
scoreboard players add @s spawn_island.skip_time 600