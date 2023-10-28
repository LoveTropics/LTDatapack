# Kills the crab
kill @e[tag=hole22Crab]
execute at @a[tag=hole22Player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
title @a[tag=hole22Player,tag=hole22Timeup] actionbar [{"translate":"lt.golf.time_up_part_1","color":"red"}, {"text":"#1","color":"red"}, {"translate":"lt.golf.time_up_part_2","color":"red"}]
## Runs when the players gets into the hole
title @a[tag=hole22Player,tag=!hole22Timeup] actionbar [{"translate":"lt.golf.end_hole_part_1","color":"red"},{"text":"#1","color":"red"},{"translate":"lt.golf.end_hole_part_2","color":"red"},{"score":{"name":"hole22Hits","objective":"golf.global"},"color":"green"},{"translate":"lt.golf.end_hole_part_3","color":"red"}]
execute as @a[tag=hole22Player,tag=!hole22Timeup] at @e[tag=hole22End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole22Hits golf.global > @p[tag=hole22Player,tag=!hole22Timeup] golf.22.scores run scoreboard players operation @a[tag=hole22Player] golf.22.scores = hole22Hits golf.global
# High Score Dummy Player
execute unless score hole22Hits golf.global > hole22HighScores golf.global run scoreboard players operation hole22HighScores golf.global = @p[tag=hole22Player,tag=!hole22Timeup] golf.22.scores
execute unless score hole22Hits golf.global > hole22HighScores golf.global run data modify entity @e[tag=hole22Dummy,limit=1] ProfileID set from entity @p[tag=hole22Player,tag=!hole22Timeup] UUID
execute unless score hole22Hits golf.global > hole22HighScores golf.global as @e[tag=hole22Dummy] run function lt:game/minigolf/holes/hole_22/dummy
execute unless score hole22Hits golf.global > hole22HighScores golf.global at @a[tag=hole22Player,tag=!hole22Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole22Player,tag=!hole22Timeup]
execute if score hole22Hits golf.global > hole22HighScores golf.global at @a[tag=hole22Player,tag=!hole22Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole22Player,tag=!hole22Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole22Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole22Player
tag @a remove hole22Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole22Hits golf.global -1
scoreboard players set hole22Timer golf.global -1
scoreboard players set hole22EndCounter golf.global -1
