# Kills the crab
kill @e[tag=golf_crab,tag=hole_17]
execute at @a[tag=hole_17_player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Run when the player runs out of time
execute at @a[tag=hole_17_player,tag=hole_17_timeup] run playsound minecraft:block.note_block.didgeridoo voice @a[tag=hole_17_player] ~ ~ ~ 1 0.1
title @a[tag=hole_17_player,tag=hole_17_timeup] actionbar [{"text":"Your time has ran out for the #17 of Crab Golf","color":"red"}]
## Runs when the players gets into the hole
playsound minecraft:block.note_block.bell voice @a[tag=hole_17_player,tag=!hole_17_timeup]
title @a[tag=hole_17_player,tag=!hole_17_timeup] actionbar [{"text":"You have completed the hole #17 of Crab Golf ","color":"red"},{"score":{"name":"hole17hits","objective":"golfGlobal"},"color":"green"},{"text":" hits!","color":"red"}]]
execute as @a[tag=hole_17_player,tag=!hole_17_timeup] at @e[tag=hole_17_end] run function lt:game/minigolf/core/firework
# Sets the player high score to the scoreboard
execute unless score hole17hits golfGlobal > @p[tag=hole_17_player,tag=!hole_17_timeup] golf_hole_17_scores run scoreboard players operation @a[tag=hole_17_player] golf_hole_17_scores = hole17hits golfGlobal
# High Score Dummy Player
execute unless score hole17hits golfGlobal > hole17highscore golfGlobal run scoreboard players operation hole17highscore golfGlobal = @p[tag=hole_17_player,tag=!hole_17_timeup] golf_hole_17_scores
execute unless score hole17hits golfGlobal > hole17highscore golfGlobal run data modify entity @e[tag=hole_17_dummy,limit=1] ProfileID set from entity @p[tag=hole_17_player,tag=!hole_17_timeup] UUID
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole_17_player] run function lt:game/minigolf/core/clear_putters
execute as @a[tag=hole_17_player] run function lt:game/minigolf/core/gamemode_end
execute as @a[tag=hole_17_player] run tag @s remove hole_17_player
tag @a remove hole_17_timeup
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole17hits golfGlobal -1
scoreboard players set hole17seconds golfGlobal -1
scoreboard players set hole17time golfGlobal -1