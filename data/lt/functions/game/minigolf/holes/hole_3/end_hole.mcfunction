# Kills the crab
kill @e[tag=golf_crab,tag=hole_3]
execute at @a[tag=hole_3_player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
execute at @a[tag=hole_3_player,tag=hole_3_timeup] run playsound minecraft:block.note_block.didgeridoo voice @a[tag=hole_3_player] ~ ~ ~ 1 0.1
title @a[tag=hole_3_player,tag=hole_3_timeup] actionbar [{"text":"Your time has ran out for the #3 of Crab Golf","color":"red"}]
## Runs when the players gets into the hole
playsound minecraft:block.note_block.bell voice @a[tag=hole_3_player,tag=!hole_3_timeup]
title @a[tag=hole_3_player,tag=!hole_3_timeup] actionbar [{"text":"You have completed the hole #3 of Crab Golf ","color":"red"},{"score":{"name":"hole3hits","objective":"golfGlobal"},"color":"green"},{"text":" hits!","color":"red"}]]
execute as @a[tag=hole_3_player,tag=!hole_3_timeup] at @e[tag=hole_3_end] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole3hits golfGlobal > @p[tag=hole_3_player,tag=!hole_3_timeup] golf_hole_3_scores run scoreboard players operation @a[tag=hole_3_player] golf_hole_3_scores = hole3hits golfGlobal
# High Score Dummy Player
execute unless score hole3hits golfGlobal > hole3highscore golfGlobal run scoreboard players operation hole3highscore golfGlobal = @p[tag=hole_3_player,tag=!hole_3_timeup] golf_hole_3_scores
execute unless score hole3hits golfGlobal > hole3highscore golfGlobal run data modify entity @e[tag=hole_3_dummy,limit=1] ProfileID set from entity @p[tag=hole_3_player,tag=!hole_3_timeup] UUID
execute unless score hole3hits golfGlobal > hole3highscore golfGlobal as @e[tag=hole_3_dummy] run function lt:game/minigolf/holes/hole_3/dummy
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole_3_player] run function lt:game/minigolf/core/clear_putters
execute as @a[tag=hole_3_player] run function lt:game/minigolf/core/gamemode_end
execute as @a[tag=hole_3_player] run tag @s remove hole_3_player
tag @a remove hole_3_timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole3hits golfGlobal -1
scoreboard players set hole3seconds golfGlobal -1
scoreboard players set hole3time golfGlobal -1