# Kills the crab
kill @e[tag=hole02Crab]
kill @e[tag=hole02Text]
execute at @a[tag=hole02Player] run kill @e[type=minecraft:experience_orb,distance=..20]
give @a[tag=hole02Player,tag=!hole02Played] ltextras:tropicoin 2
## Run when the player runs out of time
title @a[tag=hole02Player,tag=hole02Timeup] actionbar [{"translate":"lt.golf.time_up","color":"red","with":[{"text":"02"}]}]
## Runs when the players gets into the hole ##
title @a[tag=hole02Player,tag=!hole02Timeup] actionbar [{"translate":"lt.golf.end_hole","color":"red","with":[{"text":"02"}, {"score":{"name":"hole02Hits","objective":"golf.global"}}]}]
execute as @a[tag=hole02Player,tag=!hole02Timeup] at @e[tag=hole02End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole02Hits golf.global > @p[tag=hole02Player,tag=!hole02Timeup] golf.02.scores run scoreboard players operation @a[tag=hole02Player] golf.02.scores = hole02Hits golf.global
# High Score Dummy Player
execute unless score hole02Hits golf.global > hole02HighScores golf.global run scoreboard players operation hole02HighScores golf.global = @p[tag=hole02Player,tag=!hole02Timeup] golf.02.scores
execute unless score hole02Hits golf.global > hole02HighScores golf.global run give @a[tag=hole02Player] ltextras:tropicoin 1
execute unless score hole02Hits golf.global > hole02HighScores golf.global run scoreboard players add @a[tag=!hole02HighScored,tag=hole02Player] golf.highscores 1
execute unless score hole02Hits golf.global > hole02HighScores golf.global run tag @a[tag=hole02Player] add hole02HighScored
execute unless score hole02Hits golf.global > hole02HighScores golf.global run data modify entity @e[tag=hole02Dummy,limit=1] ProfileID set from entity @p[tag=hole02Player,tag=!hole02Timeup] UUID
execute unless score hole02Hits golf.global > hole02HighScores golf.global as @e[tag=hole02Dummy] run function lt:game/minigolf/holes/hole_02/dummy
execute unless score hole02Hits golf.global > hole02HighScores golf.global at @a[tag=hole02Player,tag=!hole02Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole02Player,tag=!hole02Timeup]
execute if score hole02Hits golf.global > hole02HighScores golf.global at @a[tag=hole02Player,tag=!hole02Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole02Player,tag=!hole02Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole02Player] run function lt:game/minigolf/core/hole_end
#TropiCoins
tag @a[tag=hole02Player] add hole02Played
execute as @a[tag=hole02Player] run function lt:game/minigolf/core/collectible
#42?
execute as @a[tag=hole02Player] run function lt:game/minigolf/core/42
tag @a remove hole02Player
tag @a remove hole02Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole02Hits golf.global -1
scoreboard players set hole02Timer golf.global -1
scoreboard players set hole02EndCounter golf.global -1
