# Removes 1 Second
scoreboard players remove hole21Timer golf.global 1
# Shows Time and Hits to the Player
title @p[tag=hole21Player] actionbar [{"translate":"lt.golf.seconds_left","color":"dark_gray"},{"score":{"name":"hole21Timer","objective":"golf.global"},"color":"yellow"},{"text":" | "},{"translate":"lt.golf.hits","color":"dark_gray"},{"score":{"name":"hole21Hits","objective":"golf.global"},"color":"green"}]
# Tests if carb is near the hole
execute as @e[tag=hole21Crab] at @s if entity @e[tag=hole21End,distance=..0.65] run scoreboard players add hole21EndCounter golf.global 1
execute as @e[tag=hole21Crab] at @s if entity @e[tag=hole21End,distance=0.65..] unless entity @e[tag=hole21End,distance=..0.65] run scoreboard players set hole21EndCounter golf.global 0
# Runs this function until out of time or the carb in the near hole for 2 seconds
execute as @e[tag=hole21Crab] unless score hole21EndCounter golf.global matches 2 run schedule function lt:game/minigolf/holes/hole_21/timer 1s
# Runs if player ran out of time
execute if score hole21Timer golf.global matches 0 run tag @a[tag=hole21Player] add hole21Timeup
execute if score hole21Timer golf.global matches 0 run function lt:game/minigolf/holes/hole_21/end_hole
# Runs if crab is in the hole for 2 seconds
execute if score hole21EndCounter golf.global matches 2 run function lt:game/minigolf/holes/hole_21/end_hole
