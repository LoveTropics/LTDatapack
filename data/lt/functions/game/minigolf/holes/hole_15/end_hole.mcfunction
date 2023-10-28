# Kills the crab
kill @e[tag=hole15Crab]
execute at @a[tag=hole15Player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
title @a[tag=hole15Player,tag=hole15Timeup] actionbar [{"translate":"lt.golf.time_up_part_1","color":"red"}, {"text":"#1","color":"red"}, {"translate":"lt.golf.time_up_part_2","color":"red"}]
## Runs when the players gets into the hole
title @a[tag=hole15Player,tag=!hole15Timeup] actionbar [{"translate":"lt.golf.end_hole_part_1","color":"red"},{"text":"#1","color":"red"},{"translate":"lt.golf.end_hole_part_2","color":"red"},{"score":{"name":"hole15Hits","objective":"golf.global"},"color":"green"},{"translate":"lt.golf.end_hole_part_3","color":"red"}]
execute as @a[tag=hole15Player,tag=!hole15Timeup] at @e[tag=hole15End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole15Hits golf.global > @p[tag=hole15Player,tag=!hole15Timeup] golf.15.scores run scoreboard players operation @a[tag=hole15Player] golf.15.scores = hole15Hits golf.global
# High Score Dummy Player
execute unless score hole15Hits golf.global > hole15HighScores golf.global run scoreboard players operation hole15HighScores golf.global = @p[tag=hole15Player,tag=!hole15Timeup] golf.15.scores
execute unless score hole15Hits golf.global > hole15HighScores golf.global run data modify entity @e[tag=hole15Dummy,limit=1] ProfileID set from entity @p[tag=hole15Player,tag=!hole15Timeup] UUID
execute unless score hole15Hits golf.global > hole15HighScores golf.global as @e[tag=hole15Dummy] run function lt:game/minigolf/holes/hole_15/dummy
execute unless score hole15Hits golf.global > hole15HighScores golf.global at @a[tag=hole15Player,tag=!hole15Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole15Player,tag=!hole15Timeup]
execute if score hole15Hits golf.global > hole15HighScores golf.global at @a[tag=hole15Player,tag=!hole15Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole15Player,tag=!hole15Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole15Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole15Player
tag @a remove hole15Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole15Hits golf.global -1
scoreboard players set hole15Timer golf.global -1
scoreboard players set hole15EndCounter golf.global -1