# Kills the crab
kill @e[tag=hole01Crab]
execute at @a[tag=hole01Player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
title @a[tag=hole01Player,tag=hole01Timeup] actionbar [{"translate":"lt.golf.time_up_part_1","color":"red"}, {"text":"#01","color":"red"}, {"translate":"lt.golf.time_up_part_2","color":"red"}]
## Runs when the players gets into the hole
title @a[tag=hole01Player,tag=!hole01Timeup] actionbar [{"translate":"lt.golf.end_hole_part_1","color":"red"},{"text":"#01","color":"red"},{"translate":"lt.golf.end_hole_part_2","color":"red"},{"score":{"name":"hole01Hits","objective":"golf.global"},"color":"green"},{"translate":"lt.golf.end_hole_part_3","color":"red"}]
execute as @a[tag=hole01Player,tag=!hole01Timeup] at @e[tag=hole01End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole01Hits golf.global > @p[tag=hole01Player,tag=!hole01Timeup] golf.01.scores run scoreboard players operation @a[tag=hole01Player] golf.01.scores = hole01Hits golf.global
# High Score Dummy Player
execute unless score hole01Hits golf.global > hole01HighScores golf.global run scoreboard players operation hole01HighScores golf.global = @p[tag=hole01Player,tag=!hole01Timeup] golf.01.scores
execute unless score hole01Hits golf.global > hole01HighScores golf.global run data modify entity @e[tag=hole01Dummy,limit=1] ProfileID set from entity @p[tag=hole01Player,tag=!hole01Timeup] UUID
execute unless score hole01Hits golf.global > hole01HighScores golf.global as @e[tag=hole01Dummy] run function lt:game/minigolf/holes/hole_01/dummy
execute unless score hole01Hits golf.global > hole01HighScores golf.global at @a[tag=hole01Player,tag=!hole01Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole01Player,tag=!hole01Timeup]
execute if score hole01Hits golf.global > hole01HighScores golf.global at @a[tag=hole01Player,tag=!hole01Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole01Player,tag=!hole01Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole01Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole01Player
tag @a remove hole01Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole01Hits golf.global -1
scoreboard players set hole01Timer golf.global -1
scoreboard players set hole01EndCounter golf.global -1