# Removes 1 Second
scoreboard players remove hole12time golfGlobal 1
# Shows Time and Hits to the Player
title @p[tag=hole_12_player] actionbar [{"text":"Seconds Left: ","color":"dark_gray"},{"score":{"name":"hole12time","objective":"golfGlobal"},"color":"yellow"},{"text":" | "},{"text":"Hits: ","color":"dark_gray"},{"score":{"name":"hole12hits","objective":"golfGlobal"},"color":"green"}]
# Tests if carb is near the hole
execute as @e[tag=golf_crab,tag=hole_12] at @s if entity @e[tag=hole_12_end,distance=..0.65] run scoreboard players add hole12seconds golfGlobal 1
execute as @e[tag=golf_crab,tag=hole_12] at @s if entity @e[tag=hole_12_end,distance=0.65..] run scoreboard players set hole12seconds golfGlobal 0
# Runs this function until out of time or the carb in the near hole for 2 seconds
execute as @e[tag=hole_12] unless score hole12time golfGlobal matches ..0 unless score hole12seconds golfGlobal matches 2 run schedule function lt:game/minigolf/holes/hole_12/timer 1s
# Runs if player ran out of time
execute if score hole12time golfGlobal matches 0 run tag @a[tag=hole_12_player] add hole_12_timeup
execute if score hole12time golfGlobal matches 0 run function lt:game/minigolf/holes/hole_12/end_hole
# Runs if crab is in the hole for 2 seconds
execute if score hole12seconds golfGlobal matches 2 run function lt:game/minigolf/holes/hole_12/end_hole