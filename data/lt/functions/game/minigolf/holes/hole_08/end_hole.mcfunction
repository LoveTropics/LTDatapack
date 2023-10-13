# Kills the crab
kill @e[tag=hole08Crab]
execute at @a[tag=hole08Player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
title @a[tag=hole08Player,tag=hole08Timeup] actionbar [{"text":"Your time has ran out for the #1 of Crab Golf","color":"red"}]
## Runs when the players gets into the hole
title @a[tag=hole08Player,tag=!hole08Timeup] actionbar [{"text":"You have completed the hole #1 of Crab Golf ","color":"red"},{"score":{"name":"hole08Hits","objective":"golf.global"},"color":"green"},{"text":" hits!","color":"red"}]]
execute as @a[tag=hole08Player,tag=!hole08Timeup] at @e[tag=hole08End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole08Hits golf.global > @p[tag=hole08Player,tag=!hole08Timeup] golf.08.scores run scoreboard players operation @a[tag=hole08Player] golf.08.scores = hole08Hits golf.global
# High Score Dummy Player
execute unless score hole08Hits golf.global > hole08HighScores golf.global run scoreboard players operation hole08HighScores golf.global = @p[tag=hole08Player,tag=!hole08Timeup] golf.08.scores
execute unless score hole08Hits golf.global > hole08HighScores golf.global run data modify entity @e[tag=hole08Dummy,limit=1] ProfileID set from entity @p[tag=hole08Player,tag=!hole08Timeup] UUID
execute unless score hole08Hits golf.global > hole08HighScores golf.global as @e[tag=hole08Dummy] run function lt:game/minigolf/holes/hole_08/dummy
execute unless score hole08Hits golf.global > hole08HighScores golf.global at @a[tag=hole08Player,tag=!hole08Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole08Player,tag=!hole08Timeup]
execute if score hole08Hits golf.global > hole08HighScores golf.global at @a[tag=hole08Player,tag=!hole08Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole08Player,tag=!hole08Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole08Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole08Player
tag @a remove hole08Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole08Hits golf.global -1
scoreboard players set hole08Timer golf.global -1
scoreboard players set hole08EndCounter golf.global -1
