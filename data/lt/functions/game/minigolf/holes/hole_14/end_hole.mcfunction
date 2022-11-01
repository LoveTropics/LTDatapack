# Kills the crab
kill @e[tag=golf_crab,tag=hole_14]
execute at @a[tag=hole_14_player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
execute at @a[tag=hole_14_player,tag=hole_14_timeup] run playsound minecraft:block.note_block.didgeridoo voice @a[tag=hole_14_player] ~ ~ ~ 1 0.1
title @a[tag=hole_14_player,tag=hole_14_timeup] actionbar [{"text":"Your time has ran out for the #14 of Crab Golf","color":"red"}]
## Runs when the players gets into the hole
playsound minecraft:block.note_block.bell voice @a[tag=hole_14_player,tag=!hole_14_timeup]
title @a[tag=hole_14_player,tag=!hole_14_timeup] actionbar [{"text":"You have completed the hole #14 of Crab Golf ","color":"red"},{"score":{"name":"hole14hits","objective":"golfGlobal"},"color":"green"},{"text":" hits!","color":"red"}]]
execute as @a[tag=hole_14_player,tag=!hole_14_timeup] at @e[tag=hole_14_end] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole14hits golfGlobal > @p[tag=hole_14_player,tag=!hole_14_timeup] golf_hole_14_scores run scoreboard players operation @a[tag=hole_14_player] golf_hole_14_scores = hole14hits golfGlobal
# High Score Dummy Player
execute unless score hole14hits golfGlobal > hole14highscore golfGlobal run scoreboard players operation hole14highscore golfGlobal = @p[tag=hole_14_player,tag=!hole_14_timeup] golf_hole_14_scores
execute unless score hole14hits golfGlobal > hole14highscore golfGlobal run data modify entity @e[tag=hole_14_dummy,limit=1] ProfileID set from entity @p[tag=hole_14_player,tag=!hole_14_timeup] UUID
execute unless score hole14hits golfGlobal > hole14highscore golfGlobal as @e[tag=hole_14_dummy] run function lt:game/minigolf/holes/hole_14/dummy
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole_14_player] run function lt:game/minigolf/core/clear_putters
execute as @a[tag=hole_14_player] run function lt:game/minigolf/core/gamemode_end
execute as @a[tag=hole_14_player] run tag @s remove hole_14_player
tag @a remove hole_14_timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole14hits golfGlobal -1
scoreboard players set hole14seconds golfGlobal -1
scoreboard players set hole14time golfGlobal -1