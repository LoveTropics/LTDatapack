# Kills the crab
kill @e[tag=hole07Crab]
kill @e[tag=hole07Text]
execute at @a[tag=hole07Player] run kill @e[type=minecraft:experience_orb,distance=..20]
give @a[tag=hole07Player,tag=!hole07Played] ltextras:tropicoin 2
## Run when the player runs out of time
title @a[tag=hole07Player,tag=hole07Timeup] actionbar [{"translate":"lt.golf.time_up","color":"red","with":[{"text":"07"}]}]
## Runs when the players gets into the hole ##
title @a[tag=hole07Player,tag=!hole07Timeup] actionbar [{"translate":"lt.golf.end_hole","color":"red","with":[{"text":"07"}, {"score":{"name":"hole07Hits","objective":"golf.global"}}]}]
execute as @a[tag=hole07Player,tag=!hole07Timeup] at @e[tag=hole07End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole07Hits golf.global > @p[tag=hole07Player,tag=!hole07Timeup] golf.07.scores run scoreboard players operation @a[tag=hole07Player] golf.07.scores = hole07Hits golf.global
# High Score Dummy Player
execute unless score hole07Hits golf.global > hole07HighScores golf.global run scoreboard players operation hole07HighScores golf.global = @p[tag=hole07Player,tag=!hole07Timeup] golf.07.scores
execute unless score hole07Hits golf.global > hole07HighScores golf.global run give @a[tag=hole07Player] ltextras:tropicoin 1
execute unless score hole07Hits golf.global > hole07HighScores golf.global run scoreboard players add @a[tag=!hole07HighScored,tag=hole07Player] golf.highscores 1
execute unless score hole07Hits golf.global > hole07HighScores golf.global run tag @a[tag=hole07Player] add hole07HighScored
execute unless score hole07Hits golf.global > hole07HighScores golf.global run data modify entity @e[tag=hole07Dummy,limit=1] ProfileID set from entity @p[tag=hole07Player,tag=!hole07Timeup] UUID
execute unless score hole07Hits golf.global > hole07HighScores golf.global as @e[tag=hole07Dummy] run function lt:game/minigolf/holes/hole_07/dummy
execute unless score hole07Hits golf.global > hole07HighScores golf.global at @a[tag=hole07Player,tag=!hole07Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole07Player,tag=!hole07Timeup]
execute if score hole07Hits golf.global > hole07HighScores golf.global at @a[tag=hole07Player,tag=!hole07Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole07Player,tag=!hole07Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole07Player] run function lt:game/minigolf/core/hole_end
#TropiCoins
tag @a[tag=hole07Player] add hole07Played
execute as @a[tag=hole07Player] run function lt:game/minigolf/core/collectible
#42?
execute as @a[tag=hole07Player] run function lt:game/minigolf/core/42
tag @a remove hole07Player
tag @a remove hole07Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole07Hits golf.global -1
scoreboard players set hole07Timer golf.global -1
scoreboard players set hole07EndCounter golf.global -1
