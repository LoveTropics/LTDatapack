# Kills the crab
kill @e[tag=hole21Crab]
execute at @a[tag=hole21Player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
title @a[tag=hole21Player,tag=hole21Timeup] actionbar [{"text":"Your time has ran out for the #1 of Crab Golf","color":"red"}]
## Runs when the players gets into the hole
title @a[tag=hole21Player,tag=!hole21Timeup] actionbar [{"text":"You have completed the hole #1 of Crab Golf ","color":"red"},{"score":{"name":"hole21Hits","objective":"golf.global"},"color":"green"},{"text":" hits!","color":"red"}]]
execute as @a[tag=hole21Player,tag=!hole21Timeup] at @e[tag=hole21End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole21Hits golf.global > @p[tag=hole21Player,tag=!hole21Timeup] golf.21.scores run scoreboard players operation @a[tag=hole21Player] golf.21.scores = hole21Hits golf.global
# High Score Dummy Player
execute unless score hole21Hits golf.global > hole21HighScores golf.global run scoreboard players operation hole21HighScores golf.global = @p[tag=hole21Player,tag=!hole21Timeup] golf.21.scores
execute unless score hole21Hits golf.global > hole21HighScores golf.global run data modify entity @e[tag=hole21Dummy,limit=1] ProfileID set from entity @p[tag=hole21Player,tag=!hole21Timeup] UUID
execute unless score hole21Hits golf.global > hole21HighScores golf.global as @e[tag=hole21Dummy] run function lt:game/minigolf/holes/hole_21/dummy
execute unless score hole21Hits golf.global > hole21HighScores golf.global at @a[tag=hole21Player,tag=!hole21Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole21Player,tag=!hole21Timeup]
execute if score hole21Hits golf.global > hole21HighScores golf.global at @a[tag=hole21Player,tag=!hole21Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole21Player,tag=!hole21Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole21Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole21Player
tag @a remove hole21Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole21Hits golf.global -1
scoreboard players set hole21Timer golf.global -1
scoreboard players set hole21EndCounter golf.global -1
