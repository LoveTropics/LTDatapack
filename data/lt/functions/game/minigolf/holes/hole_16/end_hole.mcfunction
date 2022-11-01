# Kills the crab
kill @e[tag=golf_crab,tag=hole_16]
execute at @a[tag=hole_16_player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
execute at @a[tag=hole_16_player,tag=hole_16_timeup] run playsound minecraft:block.note_block.didgeridoo voice @a[tag=hole_16_player] ~ ~ ~ 1 0.1
title @a[tag=hole_16_player,tag=hole_16_timeup] actionbar [{"text":"Your time has ran out for the #16 of Crab Golf","color":"red"}]
## Runs when the players gets into the hole
playsound minecraft:block.note_block.bell voice @a[tag=hole_16_player,tag=!hole_16_timeup]
title @a[tag=hole_16_player,tag=!hole_16_timeup] actionbar [{"text":"You have completed the hole #16 of Crab Golf ","color":"red"},{"score":{"name":"hole16hits","objective":"golfGlobal"},"color":"green"},{"text":" hits!","color":"red"}]]
execute as @a[tag=hole_16_player,tag=!hole_16_timeup] at @e[tag=hole_16_end] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole16hits golfGlobal > @p[tag=hole_16_player,tag=!hole_16_timeup] golf_hole_16_scores run scoreboard players operation @a[tag=hole_16_player] golf_hole_16_scores = hole16hits golfGlobal
# High Score Dummy Player
execute unless score hole16hits golfGlobal > hole16highscore golfGlobal run scoreboard players operation hole16highscore golfGlobal = @p[tag=hole_16_player,tag=!hole_16_timeup] golf_hole_16_scores
execute unless score hole16hits golfGlobal > hole16highscore golfGlobal run data modify entity @e[tag=hole_16_dummy,limit=1] ProfileID set from entity @p[tag=hole_16_player,tag=!hole_16_timeup] UUID
execute unless score hole16hits golfGlobal > hole16highscore golfGlobal as @e[tag=hole_16_dummy] run function lt:game/minigolf/holes/hole_16/dummy
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole_16_player] run function lt:game/minigolf/core/clear_putters
execute as @a[tag=hole_16_player] run function lt:game/minigolf/core/gamemode_end
execute as @a[tag=hole_16_player] run tag @s remove hole_16_player
tag @a remove hole_16_timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole16hits golfGlobal -1
scoreboard players set hole16seconds golfGlobal -1
scoreboard players set hole16time golfGlobal -1