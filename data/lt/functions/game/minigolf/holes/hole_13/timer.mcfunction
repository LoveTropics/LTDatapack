# Removes 1 Second
scoreboard players remove hole13Timer golf.global 1
# Shows Time and Hits to the Player
title @p[tag=hole13Player] actionbar [{"text":"Seconds Left: ","color":"dark_gray"},{"score":{"name":"hole13Timer","objective":"golf.global"},"color":"yellow"},{"text":" | "},{"text":"Hits: ","color":"dark_gray"},{"score":{"name":"hole13Hits","objective":"golf.global"},"color":"green"}]
# Tests if carb is near the hole
execute as @e[tag=hole13Crab] at @s if entity @e[tag=hole13End,distance=..0.65] run scoreboard players add hole13EndCounter golf.global 1
execute as @e[tag=hole13Crab] at @s if entity @e[tag=hole13End,distance=0.65..] unless entity @e[tag=hole13End,distance=..0.65] run scoreboard players set hole13EndCounter golf.global 0
# Runs this function until out of time or the carb in the near hole for 2 seconds
execute as @e[tag=hole13Crab] unless score hole13EndCounter golf.global matches 2 run schedule function lt:game/minigolf/holes/hole_13/timer 1s
# Runs if player ran out of time
execute if score hole13Timer golf.global matches 0 run tag @a[tag=hole13Player] add hole13Timeup
execute if score hole13Timer golf.global matches 0 run function lt:game/minigolf/holes/hole_13/end_hole
# Runs if crab is in the hole for 2 seconds
execute if score hole13EndCounter golf.global matches 2 run function lt:game/minigolf/holes/hole_13/end_hole
