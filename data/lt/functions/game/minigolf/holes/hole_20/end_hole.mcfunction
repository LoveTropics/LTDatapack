# Kills the crab
kill @e[tag=hole20Crab]
execute at @a[tag=hole20Player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
title @a[tag=hole20Player,tag=hole20Timeup] actionbar [{"translate":"lt.golf.time_up_part_1","color":"red"}, {"text":"#1","color":"red"}, {"translate":"lt.golf.time_up_part_2","color":"red"}]
## Runs when the players gets into the hole
title @a[tag=hole20Player,tag=!hole20Timeup] actionbar [{"translate":"lt.golf.end_hole_part_1","color":"red"},{"text":"#1","color":"red"},{"translate":"lt.golf.end_hole_part_2","color":"red"},{"score":{"name":"hole20Hits","objective":"golf.global"},"color":"green"},{"translate":"lt.golf.end_hole_part_3","color":"red"}]
execute as @a[tag=hole20Player,tag=!hole20Timeup] at @e[tag=hole20End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole20Hits golf.global > @p[tag=hole20Player,tag=!hole20Timeup] golf.20.scores run scoreboard players operation @a[tag=hole20Player] golf.20.scores = hole20Hits golf.global
# High Score Dummy Player
execute unless score hole20Hits golf.global > hole20HighScores golf.global run scoreboard players operation hole20HighScores golf.global = @p[tag=hole20Player,tag=!hole20Timeup] golf.20.scores
execute unless score hole20Hits golf.global > hole20HighScores golf.global run data modify entity @e[tag=hole20Dummy,limit=1] ProfileID set from entity @p[tag=hole20Player,tag=!hole20Timeup] UUID
execute unless score hole20Hits golf.global > hole20HighScores golf.global as @e[tag=hole20Dummy] run function lt:game/minigolf/holes/hole_20/dummy
execute unless score hole20Hits golf.global > hole20HighScores golf.global at @a[tag=hole20Player,tag=!hole20Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole20Player,tag=!hole20Timeup]
execute if score hole20Hits golf.global > hole20HighScores golf.global at @a[tag=hole20Player,tag=!hole20Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole20Player,tag=!hole20Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole20Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole20Player
tag @a remove hole20Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole20Hits golf.global -1
scoreboard players set hole20Timer golf.global -1
scoreboard players set hole20EndCounter golf.global -1
