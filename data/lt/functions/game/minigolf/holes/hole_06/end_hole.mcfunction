# Kills the crab
kill @e[tag=hole06Crab]
kill @e[tag=hole06Text]
execute at @a[tag=hole06Player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
title @a[tag=hole06Player,tag=hole06Timeup] actionbar [{"translate":"lt.golf.time_up_part_1","color":"red"}, {"text":"#06","color":"red"}, {"translate":"lt.golf.time_up_part_2","color":"red"}]
## Runs when the players gets into the hole
title @a[tag=hole06Player,tag=!hole06Timeup] actionbar [{"translate":"lt.golf.end_hole_part_1","color":"red"},{"text":"#06","color":"red"},{"translate":"lt.golf.end_hole_part_2","color":"red"},{"score":{"name":"hole06Hits","objective":"golf.global"},"color":"green"},{"translate":"lt.golf.end_hole_part_3","color":"red"}]
execute as @a[tag=hole06Player,tag=!hole06Timeup] at @e[tag=hole06End] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole06Hits golf.global > @p[tag=hole06Player,tag=!hole06Timeup] golf.06.scores run scoreboard players operation @a[tag=hole06Player] golf.06.scores = hole06Hits golf.global
# High Score Dummy Player
execute unless score hole06Hits golf.global > hole06HighScores golf.global run scoreboard players operation hole06HighScores golf.global = @p[tag=hole06Player,tag=!hole06Timeup] golf.06.scores
execute unless score hole06Hits golf.global > hole06HighScores golf.global run data modify entity @e[tag=hole06Dummy,limit=1] ProfileID set from entity @p[tag=hole06Player,tag=!hole06Timeup] UUID
execute unless score hole06Hits golf.global > hole06HighScores golf.global as @e[tag=hole06Dummy] run function lt:game/minigolf/holes/hole_06/dummy
execute unless score hole06Hits golf.global > hole06HighScores golf.global at @a[tag=hole06Player,tag=!hole06Timeup] run playsound minecraft:item.goat_horn.sound.0 voice @a[tag=hole06Player,tag=!hole06Timeup]
execute if score hole06Hits golf.global > hole06HighScores golf.global at @a[tag=hole06Player,tag=!hole06Timeup] run playsound minecraft:block.note_block.bell voice @a[tag=hole06Player,tag=!hole06Timeup]
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole06Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole06Player
tag @a remove hole06Timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole06Hits golf.global -1
scoreboard players set hole06Timer golf.global -1
scoreboard players set hole06EndCounter golf.global -1
