# Kills the crab
kill @e[tag=hole23Crab]
kill @e[tag=hole23Text]
execute at @a[tag=hole23Player] run kill @e[type=minecraft:experience_orb,distance=..20]
give @a[tag=hole23Player,tag=!hole23Played] ltextras:tropicoin 2
## Run when the player runs out of time
title @a[tag=hole23Player,tag=hole23Timeup] actionbar [{"translate":"lt.golf.time_up","color":"red","with":[{"text":"23"}]}]
## Runs when the players gets into the hole ##
title @a[tag=hole23Player,tag=!hole23Timeup] actionbar [{"translate":"lt.golf.end_hole","color":"red","with":[{"text":"23"}, {"score":{"name":"hole23Hits","objective":"golf.global"}}]}]
execute as @a[tag=hole23Player,tag=!hole23Timeup] at @e[tag=hole23End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole23Hits golf.global > @p[tag=hole23Player,tag=!hole23Timeup] golf.23.scores run scoreboard players operation @a[tag=hole23Player] golf.23.scores = hole23Hits golf.global
# High Score Dummy Player
execute unless score hole23Hits golf.global > hole23HighScores golf.global run scoreboard players operation hole23HighScores golf.global = @p[tag=hole23Player,tag=!hole23Timeup] golf.23.scores
execute unless score hole23Hits golf.global > hole23HighScores golf.global run give @a[tag=hole23Player] ltextras:tropicoin 1
execute unless score hole23Hits golf.global > hole23HighScores golf.global run scoreboard players add @s[tag=!hole23HighScored] golf.highscores 1
execute unless score hole23Hits golf.global > hole23HighScores golf.global run tag @a[tag=hole23Player] add hole23HighScored
execute unless score hole23Hits golf.global > hole23HighScores golf.global run data modify entity @e[tag=hole23Dummy,limit=1] ProfileID set from entity @p[tag=hole23Player,tag=!hole23Timeup] UUID
execute unless score hole23Hits golf.global > hole23HighScores golf.global as @e[tag=hole23Dummy] run function lt:game/minigolf/holes/hole_23/dummy
execute unless score hole23Hits golf.global > hole23HighScores golf.global at @a[tag=hole23Player,tag=!hole23Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole23Player,tag=!hole23Timeup]
execute if score hole23Hits golf.global > hole23HighScores golf.global at @a[tag=hole23Player,tag=!hole23Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole23Player,tag=!hole23Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole23Player] run function lt:game/minigolf/core/hole_end
execute as @a[tag=hole23Player] run function lt:game/minigolf/core/collectible
#TropiCoins
tag @a[tag=hole23Player] add hole23Played
tag @a remove hole23Player
tag @a remove hole23Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole23Hits golf.global -1
scoreboard players set hole23Timer golf.global -1
scoreboard players set hole23EndCounter golf.global -1
