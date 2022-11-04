# Kills the crab
kill @e[tag=golf_crab,tag=hole_2]
execute at @a[tag=hole_2_player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
execute at @a[tag=hole_2_player,tag=hole_2_timeup] run playsound minecraft:block.note_block.didgeridoo voice @a[tag=hole_2_player] ~ ~ ~ 1 0.1
title @a[tag=hole_2_player,tag=hole_2_timeup] actionbar [{"text":"Your time has ran out for the #2 of Crab Golf","color":"red"}]
## Runs when the players gets into the hole
playsound minecraft:block.note_block.bell voice @a[tag=hole_2_player,tag=!hole_2_timeup]
title @a[tag=hole_2_player,tag=!hole_2_timeup] actionbar [{"text":"You have completed the hole #2 of Crab Golf ","color":"red"},{"score":{"name":"hole2hits","objective":"golfGlobal"},"color":"green"},{"text":" hits!","color":"red"}]]
execute as @a[tag=hole_2_player,tag=!hole_2_timeup] at @e[tag=hole_2_end] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole2hits golfGlobal > @p[tag=hole_2_player,tag=!hole_2_timeup] golf_hole_2_scores run scoreboard players operation @a[tag=hole_2_player] golf_hole_2_scores = hole2hits golfGlobal
# High Score Dummy Player
execute unless score hole2hits golfGlobal > hole2highscore golfGlobal run scoreboard players operation hole2highscore golfGlobal = @p[tag=hole_2_player,tag=!hole_2_timeup] golf_hole_2_scores
execute unless score hole2hits golfGlobal > hole2highscore golfGlobal run data modify entity @e[tag=hole_2_dummy,limit=1] ProfileID set from entity @p[tag=hole_2_player,tag=!hole_2_timeup] UUID
execute unless score hole2hits golfGlobal > hole2highscore golfGlobal as @e[tag=hole_2_dummy] run function lt:game/minigolf/holes/hole_2/dummy
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole_2_player] run function lt:game/minigolf/core/clear_putters
execute as @a[tag=hole_2_player] run function lt:game/minigolf/core/gamemode_end
tag @a[tag=hole_2_player] remove mini_golf_started
execute as @a[tag=hole_2_player] run tag @s remove hole_2_player
tag @a remove hole_2_timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole2hits golfGlobal -1
scoreboard players set hole2seconds golfGlobal -1
scoreboard players set hole2time golfGlobal -1