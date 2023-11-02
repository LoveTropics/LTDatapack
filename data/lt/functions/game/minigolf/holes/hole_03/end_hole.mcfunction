# Kills the crab
kill @e[tag=hole03Crab]
kill @e[tag=hole03Text]
execute at @a[tag=hole03Player] run kill @e[type=minecraft:experience_orb,distance=..20]
give @a[tag=hole03Player,tag=!hole03Played] ltextras:tropicoin 2
## Run when the player runs out of time
title @a[tag=hole03Player,tag=hole03Timeup] actionbar [{"translate":"lt.golf.time_up","color":"red","with":[{"text":"03"}]}]
## Runs when the players gets into the hole ##
title @a[tag=hole03Player,tag=!hole03Timeup] actionbar [{"translate":"lt.golf.end_hole","color":"red","with":[{"text":"03"}, {"score":{"name":"hole03Hits","objective":"golf.global"}}]}]
execute as @a[tag=hole03Player,tag=!hole03Timeup] at @e[tag=hole03End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole03Hits golf.global > @p[tag=hole03Player,tag=!hole03Timeup] golf.03.scores run scoreboard players operation @a[tag=hole03Player] golf.03.scores = hole03Hits golf.global
# High Score Dummy Player
execute unless score hole03Hits golf.global > hole03HighScores golf.global run scoreboard players operation hole03HighScores golf.global = @p[tag=hole03Player,tag=!hole03Timeup] golf.03.scores
execute unless score hole03Hits golf.global > hole03HighScores golf.global run give @a[tag=hole03Player] ltextras:tropicoin 1
execute unless score hole03Hits golf.global > hole03HighScores golf.global run scoreboard players add @s[tag=!hole03HighScored] golf.highscores 1
execute unless score hole03Hits golf.global > hole03HighScores golf.global run tag @a[tag=hole03Player] add hole03HighScored
execute unless score hole03Hits golf.global > hole03HighScores golf.global run data modify entity @e[tag=hole03Dummy,limit=1] ProfileID set from entity @p[tag=hole03Player,tag=!hole03Timeup] UUID
execute unless score hole03Hits golf.global > hole03HighScores golf.global as @e[tag=hole03Dummy] run function lt:game/minigolf/holes/hole_03/dummy
execute unless score hole03Hits golf.global > hole03HighScores golf.global at @a[tag=hole03Player,tag=!hole03Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole03Player,tag=!hole03Timeup]
execute if score hole03Hits golf.global > hole03HighScores golf.global at @a[tag=hole03Player,tag=!hole03Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole03Player,tag=!hole03Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole03Player] run function lt:game/minigolf/core/hole_end
execute as @a[tag=hole03Player] run function lt:game/minigolf/core/collectible
#TropiCoins
tag @a[tag=hole03Player] add hole03Played
tag @a remove hole03Player
tag @a remove hole03Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole03Hits golf.global -1
scoreboard players set hole03Timer golf.global -1
scoreboard players set hole03EndCounter golf.global -1
