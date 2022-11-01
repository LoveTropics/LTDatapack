# Removes 1 Second
scoreboard players remove hole9time golfGlobal 1
# Shows Time and Hits to the Player
title @p[tag=hole_9_player] actionbar [{"text":"Seconds Left: ","color":"dark_gray"},{"score":{"name":"hole9time","objective":"golfGlobal"},"color":"yellow"},{"text":" | "},{"text":"Hits: ","color":"dark_gray"},{"score":{"name":"hole9hits","objective":"golfGlobal"},"color":"green"}]
# Tests if carb is near the hole
execute as @e[tag=golf_crab,tag=hole_9] at @s if entity @e[tag=hole_9_end,distance=..0.65] run scoreboard players add hole9seconds golfGlobal 1
execute as @e[tag=golf_crab,tag=hole_9] at @s if entity @e[tag=hole_9_end,distance=0.65..] run scoreboard players set hole9seconds golfGlobal 0
# Runs this function until out of time or the carb in the near hole for 2 seconds
execute as @e[tag=hole_9] unless score hole9time golfGlobal matches ..0 unless score hole9seconds golfGlobal matches 2 run schedule function lt:game/minigolf/holes/hole_9/timer 1s
# Runs if player ran out of time
execute if score hole9time golfGlobal matches 0 run tag @a[tag=hole_9_player] add hole_9_timeup
execute if score hole9time golfGlobal matches 0 run function lt:game/minigolf/holes/hole_9/end_hole
# Runs if crab is in the hole for 2 seconds
execute if score hole9seconds golfGlobal matches 2 run function lt:game/minigolf/holes/hole_9/end_hole