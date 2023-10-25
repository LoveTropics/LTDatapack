# Removes 1 Second
scoreboard players remove hole02Timer golf.global 1
# Shows Time and Hits to the Player
title @p[tag=hole02Player] actionbar [{"translate":"lt.golf.seconds_left","color":"dark_gray"},{"score":{"name":"hole02Timer","objective":"golf.global"},"color":"yellow"},{"text":" | "},{"translate":"lt.golf.hits","color":"dark_gray"},{"score":{"name":"hole02Hits","objective":"golf.global"},"color":"green"}]
# Tests if carb is near the hole
execute as @e[tag=hole02Crab] at @s if entity @e[tag=hole02End,distance=..0.65] run scoreboard players add hole02EndCounter golf.global 1
execute as @e[tag=hole02Crab] at @s if entity @e[tag=hole02End,distance=0.65..] unless entity @e[tag=hole02End,distance=..0.65] run scoreboard players set hole02EndCounter golf.global 0
# Runs this function until out of time or the carb in the near hole for 2 seconds
execute as @e[tag=hole02Crab] unless score hole02EndCounter golf.global matches 2 run schedule function lt:game/minigolf/holes/hole_02/timer 1s
# Runs if player ran out of time
execute if score hole02Timer golf.global matches 0 run tag @a[tag=hole02Player] add hole02Timeup
execute if score hole02Timer golf.global matches 0 run function lt:game/minigolf/holes/hole_02/end_hole
# Runs if crab is in the hole for 2 seconds
execute if score hole02EndCounter golf.global matches 2 run function lt:game/minigolf/holes/hole_02/end_hole
