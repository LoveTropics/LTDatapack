# Kills the crab
kill @e[tag=hole14Crab]
kill @e[tag=hole14Text]
execute at @a[tag=hole14Player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
title @a[tag=hole14Player,tag=hole14Timeup] actionbar [{"translate":"lt.golf.time_up","color":"red","with":[{"text":"14"}]}]
## Runs when the players gets into the hole ##
title @a[tag=hole14Player,tag=!hole14Timeup] actionbar [{"translate":"lt.golf.end_hole","color":"red","with":[{"text":"14"}, {"score":{"name":"hole14Hits","objective":"golf.global"}}]}]
execute as @a[tag=hole14Player,tag=!hole14Timeup] at @e[tag=hole14End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole14Hits golf.global > @p[tag=hole14Player,tag=!hole14Timeup] golf.14.scores run scoreboard players operation @a[tag=hole14Player] golf.14.scores = hole14Hits golf.global
# High Score Dummy Player
execute unless score hole14Hits golf.global > hole14HighScores golf.global run scoreboard players operation hole14HighScores golf.global = @p[tag=hole14Player,tag=!hole14Timeup] golf.14.scores
execute unless score hole14Hits golf.global > hole14HighScores golf.global run data modify entity @e[tag=hole14Dummy,limit=1] ProfileID set from entity @p[tag=hole14Player,tag=!hole14Timeup] UUID
execute unless score hole14Hits golf.global > hole14HighScores golf.global as @e[tag=hole14Dummy] run function lt:game/minigolf/holes/hole_14/dummy
execute unless score hole14Hits golf.global > hole14HighScores golf.global at @a[tag=hole14Player,tag=!hole14Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole14Player,tag=!hole14Timeup]
execute if score hole14Hits golf.global > hole14HighScores golf.global at @a[tag=hole14Player,tag=!hole14Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole14Player,tag=!hole14Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole14Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole14Player
tag @a remove hole14Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole14Hits golf.global -1
scoreboard players set hole14Timer golf.global -1
scoreboard players set hole14EndCounter golf.global -1
