$execute if entity @s[tag=world_game.elytra.checkpoint_$(checkpoint)] run return fail
scoreboard players add @s world_game.elytra.tracker 1
$tag @s add world_game.elytra.checkpoint_$(checkpoint)
title @s subtitle {"text":"Checkpoint $(checkpoint) reached!","color":"gold"}
playsound minecraft:block.note_block.chime