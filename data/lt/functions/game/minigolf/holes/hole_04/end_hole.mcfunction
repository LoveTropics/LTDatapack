# Kills the crab
kill @e[tag=hole04Crab]
kill @e[tag=hole04Text]
execute at @a[tag=hole04Player] run kill @e[type=minecraft:experience_orb,distance=..20]
give @a[tag=hole04Player,tag=!hole04Played] ltextras:tropicoin 2
## Run when the player runs out of time
title @a[tag=hole04Player,tag=hole04Timeup] actionbar [{"translate":"lt.golf.time_up","color":"red","with":[{"text":"04"}]}]
## Runs when the players gets into the hole ##
title @a[tag=hole04Player,tag=!hole04Timeup] actionbar [{"translate":"lt.golf.end_hole","color":"red","with":[{"text":"04"}, {"score":{"name":"hole04Hits","objective":"golf.global"}}]}]
execute as @a[tag=hole04Player,tag=!hole04Timeup] at @e[tag=hole04End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole04Hits golf.global > @p[tag=hole04Player,tag=!hole04Timeup] golf.04.scores run scoreboard players operation @a[tag=hole04Player] golf.04.scores = hole04Hits golf.global
# High Score Dummy Player
execute unless score hole04Hits golf.global > hole04HighScores golf.global run scoreboard players operation hole04HighScores golf.global = @p[tag=hole04Player,tag=!hole04Timeup] golf.04.scores
execute unless score hole04Hits golf.global > hole04HighScores golf.global run give @a[tag=hole04Player] ltextras:tropicoin 1
execute unless score hole04Hits golf.global > hole04HighScores golf.global run scoreboard players add @a[tag=!hole04HighScored,tag=hole04Player] golf.highscores 1
execute unless score hole04Hits golf.global > hole04HighScores golf.global run tag @a[tag=hole04Player] add hole04HighScored
execute unless score hole04Hits golf.global > hole04HighScores golf.global run data modify entity @e[tag=hole04Dummy,limit=1] ProfileID set from entity @p[tag=hole04Player,tag=!hole04Timeup] UUID
execute unless score hole04Hits golf.global > hole04HighScores golf.global as @e[tag=hole04Dummy] run function lt:game/minigolf/holes/hole_04/dummy
execute unless score hole04Hits golf.global > hole04HighScores golf.global at @a[tag=hole04Player,tag=!hole04Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole04Player,tag=!hole04Timeup]
execute if score hole04Hits golf.global > hole04HighScores golf.global at @a[tag=hole04Player,tag=!hole04Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole04Player,tag=!hole04Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole04Player] run function lt:game/minigolf/core/hole_end
#TropiCoins
tag @a[tag=hole04Player] add hole04Played
execute as @a[tag=hole04Player] run function lt:game/minigolf/core/collectible
#42?
execute as @a[tag=hole04Player] run function lt:game/minigolf/core/42
tag @a remove hole04Player
tag @a remove hole04Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole04Hits golf.global -1
scoreboard players set hole04Timer golf.global -1
scoreboard players set hole04EndCounter golf.global -1
