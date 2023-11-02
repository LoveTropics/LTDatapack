# Kills the crab
kill @e[tag=hole05Crab]
kill @e[tag=hole05Text]
execute at @a[tag=hole05Player] run kill @e[type=minecraft:experience_orb,distance=..20]
give @a[tag=hole05Player,tag=!hole05Played] ltextras:tropicoin 2
## Run when the player runs out of time
title @a[tag=hole05Player,tag=hole05Timeup] actionbar [{"translate":"lt.golf.time_up","color":"red","with":[{"text":"05"}]}]
## Runs when the players gets into the hole ##
title @a[tag=hole05Player,tag=!hole05Timeup] actionbar [{"translate":"lt.golf.end_hole","color":"red","with":[{"text":"05"}, {"score":{"name":"hole05Hits","objective":"golf.global"}}]}]
execute as @a[tag=hole05Player,tag=!hole05Timeup] at @e[tag=hole05End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole05Hits golf.global > @p[tag=hole05Player,tag=!hole05Timeup] golf.05.scores run scoreboard players operation @a[tag=hole05Player] golf.05.scores = hole05Hits golf.global
# High Score Dummy Player
execute unless score hole05Hits golf.global > hole05HighScores golf.global run scoreboard players operation hole05HighScores golf.global = @p[tag=hole05Player,tag=!hole05Timeup] golf.05.scores
execute unless score hole05Hits golf.global > hole05HighScores golf.global run give @a[tag=hole05Player] ltextras:tropicoin 1
execute unless score hole05Hits golf.global > hole05HighScores golf.global run scoreboard players add @s[tag=!hole05HighScored] golf.highscores 1
execute unless score hole05Hits golf.global > hole05HighScores golf.global run tag @a[tag=hole05Player] add hole05HighScored
execute unless score hole05Hits golf.global > hole05HighScores golf.global run data modify entity @e[tag=hole05Dummy,limit=1] ProfileID set from entity @p[tag=hole05Player,tag=!hole05Timeup] UUID
execute unless score hole05Hits golf.global > hole05HighScores golf.global as @e[tag=hole05Dummy] run function lt:game/minigolf/holes/hole_05/dummy
execute unless score hole05Hits golf.global > hole05HighScores golf.global at @a[tag=hole05Player,tag=!hole05Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole05Player,tag=!hole05Timeup]
execute if score hole05Hits golf.global > hole05HighScores golf.global at @a[tag=hole05Player,tag=!hole05Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole05Player,tag=!hole05Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole05Player] run function lt:game/minigolf/core/hole_end
execute as @a[tag=hole05Player] run function lt:game/minigolf/core/collectible
#TropiCoins
tag @a[tag=hole05Player] add hole05Played
tag @a remove hole05Player
tag @a remove hole05Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole05Hits golf.global -1
scoreboard players set hole05Timer golf.global -1
scoreboard players set hole05EndCounter golf.global -1
