# Kills the crab
kill @e[tag=hole04Crab]
execute at @a[tag=hole04Player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
title @a[tag=hole04Player,tag=hole04Timeup] actionbar [{"text":"Your time has ran out for the #1 of Crab Golf","color":"red"}]
## Runs when the players gets into the hole
title @a[tag=hole04Player,tag=!hole04Timeup] actionbar [{"text":"You have completed the hole #1 of Crab Golf ","color":"red"},{"score":{"name":"hole04Hits","objective":"golf.global"},"color":"green"},{"text":" hits!","color":"red"}]]
execute as @a[tag=hole04Player,tag=!hole04Timeup] at @e[tag=hole04End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole04Hits golf.global > @p[tag=hole04Player,tag=!hole04Timeup] golf.04.scores run scoreboard players operation @a[tag=hole04Player] golf.04.scores = hole04Hits golf.global
# High Score Dummy Player
execute unless score hole04Hits golf.global > hole04HighScores golf.global run scoreboard players operation hole04HighScores golf.global = @p[tag=hole04Player,tag=!hole04Timeup] golf.04.scores
execute unless score hole04Hits golf.global > hole04HighScores golf.global run data modify entity @e[tag=hole04Dummy,limit=1] ProfileID set from entity @p[tag=hole04Player,tag=!hole04Timeup] UUID
execute unless score hole04Hits golf.global > hole04HighScores golf.global as @e[tag=hole04Dummy] run function lt:game/minigolf/holes/hole_04/dummy
execute unless score hole04Hits golf.global > hole04HighScores golf.global at @a[tag=hole04Player,tag=!hole04Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole04Player,tag=!hole04Timeup]
execute if score hole04Hits golf.global > hole04HighScores golf.global at @a[tag=hole04Player,tag=!hole04Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole04Player,tag=!hole04Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole04Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole04Player
tag @a remove hole04Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole04Hits golf.global -1
scoreboard players set hole04Timer golf.global -1
scoreboard players set hole04EndCounter golf.global -1