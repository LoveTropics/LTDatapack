tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n"},{"translate":"lt.utility.introduce_island.message.3","color": "green"},{"text": "\n"}]
execute as @s at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 2 1
tag @s add utility.player.really_has_drink
scoreboard players add @s spawn_island.skip_time 600