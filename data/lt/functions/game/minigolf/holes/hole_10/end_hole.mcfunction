# Kills the crab
kill @e[tag=hole10Crab]
kill @e[tag=hole10Text]
execute at @a[tag=hole10Player] run kill @e[type=minecraft:experience_orb,distance=..20]
give @a[tag=hole10Player,tag=!hole10Played] ltextras:tropicoin 2
## Run when the player runs out of time
title @a[tag=hole10Player,tag=hole10Timeup] actionbar [{"translate":"lt.golf.time_up","color":"red","with":[{"text":"10"}]}]
## Runs when the players gets into the hole ##
title @a[tag=hole10Player,tag=!hole10Timeup] actionbar [{"translate":"lt.golf.end_hole","color":"red","with":[{"text":"10"}, {"score":{"name":"hole10Hits","objective":"golf.global"}}]}]
execute as @a[tag=hole10Player,tag=!hole10Timeup] at @e[tag=hole10End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole10Hits golf.global > @p[tag=hole10Player,tag=!hole10Timeup] golf.10.scores run scoreboard players operation @a[tag=hole10Player] golf.10.scores = hole10Hits golf.global
# High Score Dummy Player
execute unless score hole10Hits golf.global > hole10HighScores golf.global run scoreboard players operation hole10HighScores golf.global = @p[tag=hole10Player,tag=!hole10Timeup] golf.10.scores
execute unless score hole10Hits golf.global > hole10HighScores golf.global run give @s ltextras:tropicoin 1
execute unless score hole10Hits golf.global > hole10HighScores golf.global run scoreboard players add @s[tag=!hole10HighScored] golf.highscores 1
execute unless score hole10Hits golf.global > hole10HighScores golf.global run tag @s add hole10HighScored
execute unless score hole10Hits golf.global > hole10HighScores golf.global run data modify entity @e[tag=hole10Dummy,limit=1] ProfileID set from entity @p[tag=hole10Player,tag=!hole10Timeup] UUID
execute unless score hole10Hits golf.global > hole10HighScores golf.global as @e[tag=hole10Dummy] run function lt:game/minigolf/holes/hole_10/dummy
execute unless score hole10Hits golf.global > hole10HighScores golf.global at @a[tag=hole10Player,tag=!hole10Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole10Player,tag=!hole10Timeup]
execute if score hole10Hits golf.global > hole10HighScores golf.global at @a[tag=hole10Player,tag=!hole10Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole10Player,tag=!hole10Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole10Player] run function lt:game/minigolf/core/hole_end
execute as @a[tag=hole10Player] run function lt:game/minigolf/core/collectible
#TropiCoins
tag @a[tag=hole10Player] add hole10Played
tag @a remove hole10Player
tag @a remove hole10Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole10Hits golf.global -1
scoreboard players set hole10Timer golf.global -1
scoreboard players set hole10EndCounter golf.global -1
