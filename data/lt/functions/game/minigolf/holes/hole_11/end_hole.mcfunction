# Kills the crab
kill @e[tag=hole11Crab]
execute at @a[tag=hole11Player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
title @a[tag=hole11Player,tag=hole11Timeup] actionbar [{"text":"Your time has ran out for the #1 of Crab Golf","color":"red"}]
## Runs when the players gets into the hole
title @a[tag=hole11Player,tag=!hole11Timeup] actionbar [{"text":"You have completed the hole #1 of Crab Golf ","color":"red"},{"score":{"name":"hole11Hits","objective":"golf.global"},"color":"green"},{"text":" hits!","color":"red"}]]
execute as @a[tag=hole11Player,tag=!hole11Timeup] at @e[tag=hole11End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole11Hits golf.global > @p[tag=hole11Player,tag=!hole11Timeup] golf.11.scores run scoreboard players operation @a[tag=hole11Player] golf.11.scores = hole11Hits golf.global
# High Score Dummy Player
execute unless score hole11Hits golf.global > hole11HighScores golf.global run scoreboard players operation hole11HighScores golf.global = @p[tag=hole11Player,tag=!hole11Timeup] golf.11.scores
execute unless score hole11Hits golf.global > hole11HighScores golf.global run data modify entity @e[tag=hole11Dummy,limit=1] ProfileID set from entity @p[tag=hole11Player,tag=!hole11Timeup] UUID
execute unless score hole11Hits golf.global > hole11HighScores golf.global as @e[tag=hole11Dummy] run function lt:game/minigolf/holes/hole_11/dummy
execute unless score hole11Hits golf.global > hole11HighScores golf.global at @a[tag=hole11Player,tag=!hole11Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole11Player,tag=!hole11Timeup]
execute if score hole11Hits golf.global > hole11HighScores golf.global at @a[tag=hole11Player,tag=!hole11Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole11Player,tag=!hole11Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole11Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole11Player
tag @a remove hole11Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole11Hits golf.global -1
scoreboard players set hole11Timer golf.global -1
scoreboard players set hole11EndCounter golf.global -1
