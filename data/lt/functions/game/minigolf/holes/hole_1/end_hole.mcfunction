# Kills the crab
kill @e[tag=golf_crab,tag=hole_1]
execute at @a[tag=hole_1_player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
execute at @a[tag=hole_1_player,tag=hole_1_timeup] run playsound minecraft:block.note_block.didgeridoo voice @a[tag=hole_1_player] ~ ~ ~ 1 0.1
title @a[tag=hole_1_player,tag=hole_1_timeup] actionbar [{"text":"Your time has ran out for the #1 of Crab Golf","color":"red"}]
## Runs when the players gets into the hole
playsound minecraft:block.note_block.bell voice @a[tag=hole_1_player,tag=!hole_1_timeup]
title @a[tag=hole_1_player,tag=!hole_1_timeup] actionbar [{"text":"You have completed the hole #1 of Crab Golf ","color":"red"},{"score":{"name":"hole1hits","objective":"golfGlobal"},"color":"green"},{"text":" hits!","color":"red"}]]
execute as @a[tag=hole_1_player,tag=!hole_1_timeup] at @e[tag=hole_1_end] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole1hits golfGlobal > @p[tag=hole_1_player,tag=!hole_1_timeup] golf_hole_1_scores run scoreboard players operation @a[tag=hole_1_player] golf_hole_1_scores = hole1hits golfGlobal
# High Score Dummy Player
execute unless score hole1hits golfGlobal > hole1highscore golfGlobal run scoreboard players operation hole1highscore golfGlobal = @p[tag=hole_1_player,tag=!hole_1_timeup] golf_hole_1_scores
execute unless score hole1hits golfGlobal > hole1highscore golfGlobal run data modify entity @e[tag=hole_1_dummy,limit=1] ProfileID set from entity @p[tag=hole_1_player,tag=!hole_1_timeup] UUID
execute unless score hole1hits golfGlobal > hole1highscore golfGlobal as @e[tag=hole_1_dummy] run function lt:game/minigolf/holes/hole_1/dummy
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole_1_player] run function lt:game/minigolf/core/clear_putters
execute as @a[tag=hole_1_player] run function lt:game/minigolf/core/gamemode_end
execute as @a[tag=hole_1_player] run tag @s remove hole_1_player
tag @a remove hole_1_timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole1hits golfGlobal -1
scoreboard players set hole1seconds golfGlobal -1
scoreboard players set hole1time golfGlobal -1