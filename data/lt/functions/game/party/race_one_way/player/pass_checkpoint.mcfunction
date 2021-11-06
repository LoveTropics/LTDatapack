tag @s add turtle_race.one_way.checkpoint_passed
scoreboard players add @s r.o.p_checkpoint 1
title @s actionbar [{"text":"You just passed checkpoint: ","color":"#77A12F"},{"score":{"name":"@s","objective":"r.o.p_checkpoint"},"color":"#166D86"}]
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 2 1.15
playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 2 1
execute as @s at @s anchored eyes run particle minecraft:end_rod ^ ^ ^0.5 0.25 0.25 0.25 0.2 50 force @s
