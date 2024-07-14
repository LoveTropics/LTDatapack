# Removes 1 Second
scoreboard players remove hole09Timer golf.global 1
# Shows Time and Hits to the Player
title @p[tag=hole09Player] actionbar [{"translate":"lt.golf.seconds_left","color":"dark_gray"},{"score":{"name":"hole09Timer","objective":"golf.global"},"color":"yellow"},{"text":" | "},{"translate":"lt.golf.hits","color":"dark_gray"},{"score":{"name":"hole09Hits","objective":"golf.global"},"color":"green"}]
# Tests if carb is near the hole
execute as @e[tag=hole09Crab] at @s if entity @e[tag=hole09End,distance=..0.65] run scoreboard players add hole09EndCounter golf.global 1
execute as @e[tag=hole09Crab] at @s if entity @e[tag=hole09End,distance=0.65..] unless entity @e[tag=hole09End,distance=..0.65] run scoreboard players set hole09EndCounter golf.global 0
# Runs this function until out of time or the carb in the near hole for 2 seconds
execute as @e[tag=hole09Crab] unless score hole09EndCounter golf.global matches 2 run schedule function lt:game/minigolf/holes/hole_09/timer 1s
# Runs if player ran out of time
execute if score hole09Timer golf.global matches 0 run tag @a[tag=hole09Player] add hole09Timeup
execute if score hole09Timer golf.global matches 0 run function lt:game/minigolf/holes/hole_09/end_hole
# Runs if crab is in the hole for 2 seconds
execute if score hole09EndCounter golf.global matches 2 run function lt:game/minigolf/holes/hole_09/end_hole
