# Kills the crab
kill @e[tag=hole13Crab]
kill @e[tag=hole13Text]
execute at @a[tag=hole13Player] run kill @e[type=minecraft:experience_orb,distance=..20]
give @a[tag=hole13Player,tag=!hole13Played] ltextras:tropicoin 2
## Run when the player runs out of time
title @a[tag=hole13Player,tag=hole13Timeup] actionbar [{"translate":"lt.golf.time_up","color":"red","with":[{"text":"13"}]}]
## Runs when the players gets into the hole ##
title @a[tag=hole13Player,tag=!hole13Timeup] actionbar [{"translate":"lt.golf.end_hole","color":"red","with":[{"text":"13"}, {"score":{"name":"hole13Hits","objective":"golf.global"}}]}]
execute as @a[tag=hole13Player,tag=!hole13Timeup] at @e[tag=hole13End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole13Hits golf.global > @p[tag=hole13Player,tag=!hole13Timeup] golf.13.scores run scoreboard players operation @a[tag=hole13Player] golf.13.scores = hole13Hits golf.global
# High Score Dummy Player
execute unless score hole13Hits golf.global > hole13HighScores golf.global run scoreboard players operation hole13HighScores golf.global = @p[tag=hole13Player,tag=!hole13Timeup] golf.13.scores
execute unless score hole13Hits golf.global > hole13HighScores golf.global run give @a[tag=hole13Player] ltextras:tropicoin 1
execute unless score hole13Hits golf.global > hole13HighScores golf.global run scoreboard players add @a[tag=!hole13HighScored,tag=hole13Player] golf.highscores 1
execute unless score hole13Hits golf.global > hole13HighScores golf.global run tag @a[tag=hole13Player] add hole13HighScored
execute unless score hole13Hits golf.global > hole13HighScores golf.global run data modify entity @e[tag=hole13Dummy,limit=1] ProfileID set from entity @p[tag=hole13Player,tag=!hole13Timeup] UUID
execute unless score hole13Hits golf.global > hole13HighScores golf.global as @e[tag=hole13Dummy] run function lt:game/minigolf/holes/hole_13/dummy
execute unless score hole13Hits golf.global > hole13HighScores golf.global at @a[tag=hole13Player,tag=!hole13Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole13Player,tag=!hole13Timeup]
execute if score hole13Hits golf.global > hole13HighScores golf.global at @a[tag=hole13Player,tag=!hole13Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole13Player,tag=!hole13Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole13Player] run function lt:game/minigolf/core/hole_end
#TropiCoins
tag @a[tag=hole13Player] add hole13Played
execute as @a[tag=hole13Player] run function lt:game/minigolf/core/collectible
#42?
execute as @a[tag=hole13Player] run function lt:game/minigolf/core/42
tag @a remove hole13Player
tag @a remove hole13Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole13Hits golf.global -1
scoreboard players set hole13Timer golf.global -1
scoreboard players set hole13EndCounter golf.global -1
