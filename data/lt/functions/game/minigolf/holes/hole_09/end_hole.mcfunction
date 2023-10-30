# Kills the crab
kill @e[tag=hole09Crab]
kill @e[tag=hole09Text]
execute at @a[tag=hole09Player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
title @a[tag=hole09Player,tag=hole09Timeup] actionbar [{"translate":"lt.golf.time_up","color":"red","with":[{"text":"09"}]}]
## Runs when the players gets into the hole ##
title @a[tag=hole09Player,tag=!hole09Timeup] actionbar [{"translate":"lt.golf.end_hole","color":"red","with":[{"text":"09"}, {"score":{"name":"hole09Hits","objective":"golf.global"}}]}]
execute as @a[tag=hole09Player,tag=!hole09Timeup] at @e[tag=hole09End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole09Hits golf.global > @p[tag=hole09Player,tag=!hole09Timeup] golf.09.scores run scoreboard players operation @a[tag=hole09Player] golf.09.scores = hole09Hits golf.global
# High Score Dummy Player
execute unless score hole09Hits golf.global > hole09HighScores golf.global run scoreboard players operation hole09HighScores golf.global = @p[tag=hole09Player,tag=!hole09Timeup] golf.09.scores
execute unless score hole09Hits golf.global > hole09HighScores golf.global run data modify entity @e[tag=hole09Dummy,limit=1] ProfileID set from entity @p[tag=hole09Player,tag=!hole09Timeup] UUID
execute unless score hole09Hits golf.global > hole09HighScores golf.global as @e[tag=hole09Dummy] run function lt:game/minigolf/holes/hole_09/dummy
execute unless score hole09Hits golf.global > hole09HighScores golf.global at @a[tag=hole09Player,tag=!hole09Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole09Player,tag=!hole09Timeup]
execute if score hole09Hits golf.global > hole09HighScores golf.global at @a[tag=hole09Player,tag=!hole09Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole09Player,tag=!hole09Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole09Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole09Player
tag @a remove hole09Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole09Hits golf.global -1
scoreboard players set hole09Timer golf.global -1
scoreboard players set hole09EndCounter golf.global -1
