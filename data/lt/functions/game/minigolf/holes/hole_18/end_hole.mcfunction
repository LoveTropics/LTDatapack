# Kills the crab
kill @e[tag=golf_crab,tag=hole_18]
execute at @a[tag=hole_18_player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
execute at @a[tag=hole_18_player,tag=hole_18_timeup] run playsound minecraft:block.note_block.didgeridoo voice @a[tag=hole_18_player] ~ ~ ~ 1 0.1
title @a[tag=hole_18_player,tag=hole_18_timeup] actionbar [{"text":"Your time has ran out for the #18 of Crab Golf","color":"red"}]
## Runs when the players gets into the hole
playsound minecraft:block.note_block.bell voice @a[tag=hole_18_player,tag=!hole_18_timeup]
title @a[tag=hole_18_player,tag=!hole_18_timeup] actionbar [{"text":"You have completed the hole #18 of Crab Golf ","color":"red"},{"score":{"name":"hole18hits","objective":"golfGlobal"},"color":"green"},{"text":" hits!","color":"red"}]]
execute as @a[tag=hole_18_player,tag=!hole_18_timeup] at @e[tag=hole_18_end] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole18hits golfGlobal > @p[tag=hole_18_player,tag=!hole_18_timeup] golf_hole_18_scores run scoreboard players operation @a[tag=hole_18_player] golf_hole_18_scores = hole18hits golfGlobal
# High Score Dummy Player
execute unless score hole18hits golfGlobal > hole18highscore golfGlobal run scoreboard players operation hole18highscore golfGlobal = @p[tag=hole_18_player,tag=!hole_18_timeup] golf_hole_18_scores
execute unless score hole18hits golfGlobal > hole18highscore golfGlobal run data modify entity @e[tag=hole_18_dummy,limit=1] ProfileID set from entity @p[tag=hole_18_player,tag=!hole_18_timeup] UUID
execute unless score hole18hits golfGlobal > hole18highscore golfGlobal as @e[tag=hole_18_dummy] run function lt:game/minigolf/holes/hole_18/dummy
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole_18_player] run function lt:game/minigolf/core/clear_putters
execute as @a[tag=hole_18_player] run function lt:game/minigolf/core/gamemode_end
execute as @a[tag=hole_18_player] run tag @s remove hole_18_player
tag @a remove hole_18_timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole18hits golfGlobal -1
scoreboard players set hole18seconds golfGlobal -1
scoreboard players set hole18time golfGlobal -1