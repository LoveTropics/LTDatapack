# Removes 1 Second
scoreboard players remove hole01Timer golf.global 1
# Shows Time and Hits to the Player
title @p[tag=hole01Player] actionbar [{"text":"Seconds Left: ","color":"dark_gray"},{"score":{"name":"hole01Timer","objective":"golf.global"},"color":"yellow"},{"text":" | "},{"text":"Hits: ","color":"dark_gray"},{"score":{"name":"hole01Hits","objective":"golf.global"},"color":"green"}]
# Tests if carb is near the hole
execute as @e[tag=hole01Crab] at @s if entity @e[tag=hole01End,distance=..0.65] run scoreboard players add hole01EndCounter golf.global 1
execute as @e[tag=hole01Crab] at @s if entity @e[tag=hole01End,distance=0.65..] unless entity @e[tag=hole01End,distance=..0.65] run scoreboard players set hole01EndCounter golf.global 0
# Runs this function until out of time or the carb in the near hole for 2 seconds
execute as @e[tag=hole01Crab] unless score hole01EndCounter golf.global matches 2 run schedule function lt:game/minigolf/holes/hole_01/timer 1s
# Runs if player ran out of time
execute if score hole01Timer golf.global matches 0 run tag @a[tag=hole01Player] add hole01Timeup
execute if score hole01Timer golf.global matches 0 run function lt:game/minigolf/holes/hole_01/end_hole
# Runs if crab is in the hole for 2 seconds
execute if score hole01EndCounter golf.global matches 2 run function lt:game/minigolf/holes/hole_01/end_hole