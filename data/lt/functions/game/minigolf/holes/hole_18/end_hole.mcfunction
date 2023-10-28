# Kills the crab
kill @e[tag=hole18Crab]
execute at @a[tag=hole18Player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
title @a[tag=hole18Player,tag=hole18Timeup] actionbar [{"translate":"lt.golf.time_up_part_1","color":"red"}, {"text":"#1","color":"red"}, {"translate":"lt.golf.time_up_part_2","color":"red"}]
## Runs when the players gets into the hole
title @a[tag=hole18Player,tag=!hole18Timeup] actionbar [{"translate":"lt.golf.end_hole_part_1","color":"red"},{"text":"#1","color":"red"},{"translate":"lt.golf.end_hole_part_2","color":"red"},{"score":{"name":"hole18Hits","objective":"golf.global"},"color":"green"},{"translate":"lt.golf.end_hole_part_3","color":"red"}]
execute as @a[tag=hole18Player,tag=!hole18Timeup] at @e[tag=hole18End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole18Hits golf.global > @p[tag=hole18Player,tag=!hole18Timeup] golf.18.scores run scoreboard players operation @a[tag=hole18Player] golf.18.scores = hole18Hits golf.global
# High Score Dummy Player
execute unless score hole18Hits golf.global > hole18HighScores golf.global run scoreboard players operation hole18HighScores golf.global = @p[tag=hole18Player,tag=!hole18Timeup] golf.18.scores
execute unless score hole18Hits golf.global > hole18HighScores golf.global run data modify entity @e[tag=hole18Dummy,limit=1] ProfileID set from entity @p[tag=hole18Player,tag=!hole18Timeup] UUID
execute unless score hole18Hits golf.global > hole18HighScores golf.global as @e[tag=hole18Dummy] run function lt:game/minigolf/holes/hole_18/dummy
execute unless score hole18Hits golf.global > hole18HighScores golf.global at @a[tag=hole18Player,tag=!hole18Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole18Player,tag=!hole18Timeup]
execute if score hole18Hits golf.global > hole18HighScores golf.global at @a[tag=hole18Player,tag=!hole18Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole18Player,tag=!hole18Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole18Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole18Player
tag @a remove hole18Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole18Hits golf.global -1
scoreboard players set hole18Timer golf.global -1
scoreboard players set hole18EndCounter golf.global -1
