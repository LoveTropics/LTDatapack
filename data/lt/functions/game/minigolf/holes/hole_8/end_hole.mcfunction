# Kills the crab
kill @e[tag=golf_crab,tag=hole_8]
execute at @a[tag=hole_8_player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
execute at @a[tag=hole_8_player,tag=hole_8_timeup] run playsound minecraft:block.note_block.didgeridoo voice @a[tag=hole_8_player] ~ ~ ~ 1 0.1
title @a[tag=hole_8_player,tag=hole_8_timeup] actionbar [{"text":"Your time has ran out for the #8 of Crab Golf","color":"red"}]
## Runs when the players gets into the hole
playsound minecraft:block.note_block.bell voice @a[tag=hole_8_player,tag=!hole_8_timeup]
title @a[tag=hole_8_player,tag=!hole_8_timeup] actionbar [{"text":"You have completed the hole #8 of Crab Golf ","color":"red"},{"score":{"name":"hole8hits","objective":"golfGlobal"},"color":"green"},{"text":" hits!","color":"red"}]]
execute as @a[tag=hole_8_player,tag=!hole_8_timeup] at @e[tag=hole_8_end] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole8hits golfGlobal > @p[tag=hole_8_player,tag=!hole_8_timeup] golf_hole_8_scores run scoreboard players operation @a[tag=hole_8_player] golf_hole_8_scores = hole8hits golfGlobal
# High Score Dummy Player
execute unless score hole8hits golfGlobal > hole8highscore golfGlobal run scoreboard players operation hole8highscore golfGlobal = @p[tag=hole_8_player,tag=!hole_8_timeup] golf_hole_8_scores
execute unless score hole8hits golfGlobal > hole8highscore golfGlobal run data modify entity @e[tag=hole_8_dummy,limit=1] ProfileID set from entity @p[tag=hole_8_player,tag=!hole_8_timeup] UUID
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole_8_player] run function lt:game/minigolf/core/clear_putters
execute as @a[tag=hole_8_player] run function lt:game/minigolf/core/gamemode_end
execute as @a[tag=hole_8_player] run tag @s remove hole_8_player
tag @a remove hole_8_timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole8hits golfGlobal -1
scoreboard players set hole8seconds golfGlobal -1
scoreboard players set hole8time golfGlobal -1