$execute if entity @s[tag=world_game.turtle.checkpoint_$(checkpoint)] run return fail
scoreboard players add @s world_game.turtle.tracker 1
$tag @s add world_game.turtle.checkpoint_$(checkpoint)
title @s subtitle {"text":"Checkpoint reached!","color":"gold"}
title @s title " "
playsound minecraft:block.note_block.chime
