# Kills the crab
kill @e[tag=hole19Crab]
execute at @a[tag=hole19Player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
title @a[tag=hole19Player,tag=hole19Timeup] actionbar [{"translate":"lt.golf.time_up","color":"red","with":[{"text":"19"}]}]
## Runs when the players gets into the hole ##
title @a[tag=hole19Player,tag=!hole19Timeup] actionbar [{"translate":"lt.golf.end_hole","color":"red","with":[{"text":"19"}, {"score":{"name":"hole19Hits","objective":"golf.global"}}]}]
execute as @a[tag=hole19Player,tag=!hole19Timeup] at @e[tag=hole19End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole19Hits golf.global > @p[tag=hole19Player,tag=!hole19Timeup] golf.19.scores run scoreboard players operation @a[tag=hole19Player] golf.19.scores = hole19Hits golf.global
# High Score Dummy Player
execute unless score hole19Hits golf.global > hole19HighScores golf.global run scoreboard players operation hole19HighScores golf.global = @p[tag=hole19Player,tag=!hole19Timeup] golf.19.scores
execute unless score hole19Hits golf.global > hole19HighScores golf.global run data modify entity @e[tag=hole19Dummy,limit=1] ProfileID set from entity @p[tag=hole19Player,tag=!hole19Timeup] UUID
execute unless score hole19Hits golf.global > hole19HighScores golf.global as @e[tag=hole19Dummy] run function lt:game/minigolf/holes/hole_19/dummy
execute unless score hole19Hits golf.global > hole19HighScores golf.global at @a[tag=hole19Player,tag=!hole19Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole19Player,tag=!hole19Timeup]
execute if score hole19Hits golf.global > hole19HighScores golf.global at @a[tag=hole19Player,tag=!hole19Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole19Player,tag=!hole19Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole19Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole19Player
tag @a remove hole19Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole19Hits golf.global -1
scoreboard players set hole19Timer golf.global -1
scoreboard players set hole19EndCounter golf.global -1
