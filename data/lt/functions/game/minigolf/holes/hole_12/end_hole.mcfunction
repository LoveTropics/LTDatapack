# Kills the crab
kill @e[tag=hole12Crab]
execute at @a[tag=hole12Player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
title @a[tag=hole12Player,tag=hole12Timeup] actionbar [{"translate":"lt.golf.time_up_part_1","color":"red"}, {"text":"#1","color":"red"}, {"translate":"lt.golf.time_up_part_2","color":"red"}]
## Runs when the players gets into the hole
title @a[tag=hole12Player,tag=!hole12Timeup] actionbar [{"translate":"lt.golf.end_hole_part_1","color":"red"},{"text":"#1","color":"red"},{"translate":"lt.golf.end_hole_part_2","color":"red"},{"score":{"name":"hole12Hits","objective":"golf.global"},"color":"green"},{"translate":"lt.golf.end_hole_part_3","color":"red"}]
execute as @a[tag=hole12Player,tag=!hole12Timeup] at @e[tag=hole12End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole12Hits golf.global > @p[tag=hole12Player,tag=!hole12Timeup] golf.12.scores run scoreboard players operation @a[tag=hole12Player] golf.12.scores = hole12Hits golf.global
# High Score Dummy Player
execute unless score hole12Hits golf.global > hole12HighScores golf.global run scoreboard players operation hole12HighScores golf.global = @p[tag=hole12Player,tag=!hole12Timeup] golf.12.scores
execute unless score hole12Hits golf.global > hole12HighScores golf.global run data modify entity @e[tag=hole12Dummy,limit=1] ProfileID set from entity @p[tag=hole12Player,tag=!hole12Timeup] UUID
execute unless score hole12Hits golf.global > hole12HighScores golf.global as @e[tag=hole12Dummy] run function lt:game/minigolf/holes/hole_12/dummy
execute unless score hole12Hits golf.global > hole12HighScores golf.global at @a[tag=hole12Player,tag=!hole12Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole12Player,tag=!hole12Timeup]
execute if score hole12Hits golf.global > hole12HighScores golf.global at @a[tag=hole12Player,tag=!hole12Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole12Player,tag=!hole12Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole12Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole12Player
tag @a remove hole12Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole12Hits golf.global -1
scoreboard players set hole12Timer golf.global -1
scoreboard players set hole12EndCounter golf.global -1
