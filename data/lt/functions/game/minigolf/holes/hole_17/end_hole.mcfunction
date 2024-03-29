# Kills the crab
kill @e[tag=hole17Crab]
kill @e[tag=hole17Text]
execute at @a[tag=hole17Player] run kill @e[type=minecraft:experience_orb,distance=..20]
give @a[tag=hole17Player,tag=!hole17Played] ltextras:tropicoin 2
## Run when the player runs out of time
title @a[tag=hole17Player,tag=hole17Timeup] actionbar [{"translate":"lt.golf.time_up","color":"red","with":[{"text":"17"}]}]
## Runs when the players gets into the hole ##
title @a[tag=hole17Player,tag=!hole17Timeup] actionbar [{"translate":"lt.golf.end_hole","color":"red","with":[{"text":"17"}, {"score":{"name":"hole17Hits","objective":"golf.global"}}]}]
execute as @a[tag=hole17Player,tag=!hole17Timeup] at @e[tag=hole17End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole17Hits golf.global > @p[tag=hole17Player,tag=!hole17Timeup] golf.17.scores run scoreboard players operation @a[tag=hole17Player] golf.17.scores = hole17Hits golf.global
# High Score Dummy Player
execute unless score hole17Hits golf.global > hole17HighScores golf.global run scoreboard players operation hole17HighScores golf.global = @p[tag=hole17Player,tag=!hole17Timeup] golf.17.scores
execute unless score hole17Hits golf.global > hole17HighScores golf.global run give @a[tag=hole17Player] ltextras:tropicoin 1
execute unless score hole17Hits golf.global > hole17HighScores golf.global run scoreboard players add @a[tag=!hole17HighScored,tag=hole17Player] golf.highscores 1
execute unless score hole17Hits golf.global > hole17HighScores golf.global run tag @a[tag=hole17Player] add hole17HighScored
execute unless score hole17Hits golf.global > hole17HighScores golf.global run data modify entity @e[tag=hole17Dummy,limit=1] ProfileID set from entity @p[tag=hole17Player,tag=!hole17Timeup] UUID
execute unless score hole17Hits golf.global > hole17HighScores golf.global as @e[tag=hole17Dummy] run function lt:game/minigolf/holes/hole_17/dummy
execute unless score hole17Hits golf.global > hole17HighScores golf.global at @a[tag=hole17Player,tag=!hole17Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole17Player,tag=!hole17Timeup]
execute if score hole17Hits golf.global > hole17HighScores golf.global at @a[tag=hole17Player,tag=!hole17Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole17Player,tag=!hole17Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole17Player] run function lt:game/minigolf/core/hole_end
#TropiCoins
tag @a[tag=hole17Player] add hole17Played
execute as @a[tag=hole17Player] run function lt:game/minigolf/core/collectible
#42?
execute as @a[tag=hole17Player] run function lt:game/minigolf/core/42
tag @a remove hole17Player
tag @a remove hole17Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole17Hits golf.global -1
scoreboard players set hole17Timer golf.global -1
scoreboard players set hole17EndCounter golf.global -1
