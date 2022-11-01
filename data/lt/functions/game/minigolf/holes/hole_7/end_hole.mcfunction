# Kills the crab
kill @e[tag=golf_crab,tag=hole_7]
execute at @a[tag=hole_7_player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
execute at @a[tag=hole_7_player,tag=hole_7_timeup] run playsound minecraft:block.note_block.didgeridoo voice @a[tag=hole_7_player] ~ ~ ~ 1 0.1
title @a[tag=hole_7_player,tag=hole_7_timeup] actionbar [{"text":"Your time has ran out for the #7 of Crab Golf","color":"red"}]
## Runs when the players gets into the hole
playsound minecraft:block.note_block.bell voice @a[tag=hole_7_player,tag=!hole_7_timeup]
title @a[tag=hole_7_player,tag=!hole_7_timeup] actionbar [{"text":"You have completed the hole #7 of Crab Golf ","color":"red"},{"score":{"name":"hole7hits","objective":"golfGlobal"},"color":"green"},{"text":" hits!","color":"red"}]]
execute as @a[tag=hole_7_player,tag=!hole_7_timeup] at @e[tag=hole_7_end] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole7hits golfGlobal > @p[tag=hole_7_player,tag=!hole_7_timeup] golf_hole_7_scores run scoreboard players operation @a[tag=hole_7_player] golf_hole_7_scores = hole7hits golfGlobal
# High Score Dummy Player
execute unless score hole7hits golfGlobal > hole7highscore golfGlobal run scoreboard players operation hole7highscore golfGlobal = @p[tag=hole_7_player,tag=!hole_7_timeup] golf_hole_7_scores
execute unless score hole7hits golfGlobal > hole7highscore golfGlobal run data modify entity @e[tag=hole_7_dummy,limit=1] ProfileID set from entity @p[tag=hole_7_player,tag=!hole_7_timeup] UUID
execute unless score hole7hits golfGlobal > hole7highscore golfGlobal as @e[tag=hole_7_dummy] run function lt:game/minigolf/holes/hole_7/dummy
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole_7_player] run function lt:game/minigolf/core/clear_putters
execute as @a[tag=hole_7_player] run function lt:game/minigolf/core/gamemode_end
execute as @a[tag=hole_7_player] run tag @s remove hole_7_player
tag @a remove hole_7_timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole7hits golfGlobal -1
scoreboard players set hole7seconds golfGlobal -1
scoreboard players set hole7time golfGlobal -1