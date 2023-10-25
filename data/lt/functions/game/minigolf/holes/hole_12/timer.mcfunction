# Removes 1 Second
scoreboard players remove hole12Timer golf.global 1
# Shows Time and Hits to the Player
title @p[tag=hole12Player] actionbar [{"translate":"lt.golf.seconds_left","color":"dark_gray"},{"score":{"name":"hole12Timer","objective":"golf.global"},"color":"yellow"},{"text":" | "},{"translate":"lt.golf.hits","color":"dark_gray"},{"score":{"name":"hole12Hits","objective":"golf.global"},"color":"green"}]
# Tests if carb is near the hole
execute as @e[tag=hole12Crab] at @s if entity @e[tag=hole12End,distance=..0.65] run scoreboard players add hole12EndCounter golf.global 1
execute as @e[tag=hole12Crab] at @s if entity @e[tag=hole12End,distance=0.65..] unless entity @e[tag=hole12End,distance=..0.65] run scoreboard players set hole12EndCounter golf.global 0
# Runs this function until out of time or the carb in the near hole for 2 seconds
execute as @e[tag=hole12Crab] unless score hole12EndCounter golf.global matches 2 run schedule function lt:game/minigolf/holes/hole_12/timer 1s
# Runs if player ran out of time
execute if score hole12Timer golf.global matches 0 run tag @a[tag=hole12Player] add hole12Timeup
execute if score hole12Timer golf.global matches 0 run function lt:game/minigolf/holes/hole_12/end_hole
# Runs if crab is in the hole for 2 seconds
execute if score hole12EndCounter golf.global matches 2 run function lt:game/minigolf/holes/hole_12/end_hole
