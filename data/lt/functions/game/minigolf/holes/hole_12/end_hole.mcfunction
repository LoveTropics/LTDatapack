# Kills the crab
kill @e[tag=hole12Crab]
kill @e[tag=hole12Text]
execute at @a[tag=hole12Player] run kill @e[type=minecraft:experience_orb,distance=..20]
give @a[tag=hole12Player,tag=!hole12Played] ltextras:tropicoin 2
## Run when the player runs out of time
title @a[tag=hole12Player,tag=hole12Timeup] actionbar [{"translate":"lt.golf.time_up","color":"red","with":[{"text":"12"}]}]
## Runs when the players gets into the hole ##
title @a[tag=hole12Player,tag=!hole12Timeup] actionbar [{"translate":"lt.golf.end_hole","color":"red","with":[{"text":"12"}, {"score":{"name":"hole12Hits","objective":"golf.global"}}]}]
execute as @a[tag=hole12Player,tag=!hole12Timeup] at @e[tag=hole12End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole12Hits golf.global > @p[tag=hole12Player,tag=!hole12Timeup] golf.12.scores run scoreboard players operation @a[tag=hole12Player] golf.12.scores = hole12Hits golf.global
# High Score Dummy Player
execute unless score hole12Hits golf.global > hole12HighScores golf.global run scoreboard players operation hole12HighScores golf.global = @p[tag=hole12Player,tag=!hole12Timeup] golf.12.scores
execute unless score hole12Hits golf.global > hole12HighScores golf.global run give @a[tag=hole12Player] ltextras:tropicoin 1
execute unless score hole12Hits golf.global > hole12HighScores golf.global run scoreboard players add @a[tag=!hole12HighScored,tag=hole12Player] golf.highscores 1
execute unless score hole12Hits golf.global > hole12HighScores golf.global run tag @a[tag=hole12Player] add hole12HighScored
execute unless score hole12Hits golf.global > hole12HighScores golf.global run data modify entity @e[tag=hole12Dummy,limit=1] ProfileID set from entity @p[tag=hole12Player,tag=!hole12Timeup] UUID
execute unless score hole12Hits golf.global > hole12HighScores golf.global as @e[tag=hole12Dummy] run function lt:game/minigolf/holes/hole_12/dummy
execute unless score hole12Hits golf.global > hole12HighScores golf.global at @a[tag=hole12Player,tag=!hole12Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole12Player,tag=!hole12Timeup]
execute if score hole12Hits golf.global > hole12HighScores golf.global at @a[tag=hole12Player,tag=!hole12Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole12Player,tag=!hole12Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole12Player] run function lt:game/minigolf/core/hole_end
#TropiCoins
tag @a[tag=hole12Player] add hole12Played
execute as @a[tag=hole12Player] run function lt:game/minigolf/core/collectible
#42?
execute as @a[tag=hole12Player] run function lt:game/minigolf/core/42
tag @a remove hole12Player
tag @a remove hole12Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole12Hits golf.global -1
scoreboard players set hole12Timer golf.global -1
scoreboard players set hole12EndCounter golf.global -1
