# Removes 1 Second
scoreboard players remove hole11Timer golf.global 1
# Shows Time and Hits to the Player
title @p[tag=hole11Player] actionbar [{"text":"Seconds Left: ","color":"dark_gray"},{"score":{"name":"hole11Timer","objective":"golf.global"},"color":"yellow"},{"text":" | "},{"text":"Hits: ","color":"dark_gray"},{"score":{"name":"hole11Hits","objective":"golf.global"},"color":"green"}]
# Tests if carb is near the hole
execute as @e[tag=hole11Crab] at @s if entity @e[tag=hole11End,distance=..0.65] run scoreboard players add hole11EndCounter golf.global 1
execute as @e[tag=hole11Crab] at @s if entity @e[tag=hole11End,distance=0.65..] unless entity @e[tag=hole11End,distance=..0.65] run scoreboard players set hole11EndCounter golf.global 0
# Runs this function until out of time or the carb in the near hole for 2 seconds
execute as @e[tag=hole11Crab] unless score hole11EndCounter golf.global matches 2 run schedule function lt:game/minigolf/holes/hole_11/timer 1s
# Runs if player ran out of time
execute if score hole11Timer golf.global matches 0 run tag @a[tag=hole11Player] add hole11Timeup
execute if score hole11Timer golf.global matches 0 run function lt:game/minigolf/holes/hole_11/end_hole
# Runs if crab is in the hole for 2 seconds
execute if score hole11EndCounter golf.global matches 2 run function lt:game/minigolf/holes/hole_11/end_hole
