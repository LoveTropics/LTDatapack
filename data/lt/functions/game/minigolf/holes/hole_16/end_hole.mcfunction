# Kills the crab
kill @e[tag=hole16Crab]
kill @e[tag=hole16Text]
execute at @a[tag=hole16Player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
title @a[tag=hole16Player,tag=hole16Timeup] actionbar [{"translate":"lt.golf.time_up","color":"red","with":[{"text":"16"}]}]
## Runs when the players gets into the hole ##
title @a[tag=hole16Player,tag=!hole16Timeup] actionbar [{"translate":"lt.golf.end_hole","color":"red","with":[{"text":"16"}, {"score":{"name":"hole16Hits","objective":"golf.global"}}]}]
execute as @a[tag=hole16Player,tag=!hole16Timeup] at @e[tag=hole16End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole16Hits golf.global > @p[tag=hole16Player,tag=!hole16Timeup] golf.16.scores run scoreboard players operation @a[tag=hole16Player] golf.16.scores = hole16Hits golf.global
# High Score Dummy Player
execute unless score hole16Hits golf.global > hole16HighScores golf.global run scoreboard players operation hole16HighScores golf.global = @p[tag=hole16Player,tag=!hole16Timeup] golf.16.scores
execute unless score hole16Hits golf.global > hole16HighScores golf.global run data modify entity @e[tag=hole16Dummy,limit=1] ProfileID set from entity @p[tag=hole16Player,tag=!hole16Timeup] UUID
execute unless score hole16Hits golf.global > hole16HighScores golf.global as @e[tag=hole16Dummy] run function lt:game/minigolf/holes/hole_16/dummy
execute unless score hole16Hits golf.global > hole16HighScores golf.global at @a[tag=hole16Player,tag=!hole16Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole16Player,tag=!hole16Timeup]
execute if score hole16Hits golf.global > hole16HighScores golf.global at @a[tag=hole16Player,tag=!hole16Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole16Player,tag=!hole16Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole16Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole16Player
tag @a remove hole16Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole16Hits golf.global -1
scoreboard players set hole16Timer golf.global -1
scoreboard players set hole16EndCounter golf.global -1
