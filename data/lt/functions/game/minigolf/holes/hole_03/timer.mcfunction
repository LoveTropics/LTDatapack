# Removes 1 Second
scoreboard players remove hole03Timer golf.global 1
# Shows Time and Hits to the Player
title @p[tag=hole03Player] actionbar [{"text":"Seconds Left: ","color":"dark_gray"},{"score":{"name":"hole03Timer","objective":"golf.global"},"color":"yellow"},{"text":" | "},{"text":"Hits: ","color":"dark_gray"},{"score":{"name":"hole03Hits","objective":"golf.global"},"color":"green"}]
# Tests if carb is near the hole
execute as @e[tag=hole03Crab] at @s if entity @e[tag=hole03End,distance=..0.65] run scoreboard players add hole03EndCounter golf.global 1
execute as @e[tag=hole03Crab] at @s if entity @e[tag=hole03End,distance=0.65..] unless entity @e[tag=hole03End,distance=..0.65] run scoreboard players set hole03EndCounter golf.global 0
# Runs this function until out of time or the carb in the near hole for 2 seconds
execute as @e[tag=hole03Crab] unless score hole03EndCounter golf.global matches 2 run schedule function lt:game/minigolf/holes/hole_03/timer 1s
# Runs if player ran out of time
execute if score hole03Timer golf.global matches 0 run tag @a[tag=hole03Player] add hole03Timeup
execute if score hole03Timer golf.global matches 0 run function lt:game/minigolf/holes/hole_03/end_hole
# Runs if crab is in the hole for 2 seconds
execute if score hole03EndCounter golf.global matches 2 run function lt:game/minigolf/holes/hole_03/end_hole
