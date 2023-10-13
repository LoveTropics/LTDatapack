# Removes 1 Second
scoreboard players remove hole17Timer golf.global 1
# Shows Time and Hits to the Player
title @p[tag=hole17Player] actionbar [{"text":"Seconds Left: ","color":"dark_gray"},{"score":{"name":"hole17Timer","objective":"golf.global"},"color":"yellow"},{"text":" | "},{"text":"Hits: ","color":"dark_gray"},{"score":{"name":"hole17Hits","objective":"golf.global"},"color":"green"}]
# Tests if carb is near the hole
execute as @e[tag=hole17Crab] at @s if entity @e[tag=hole17End,distance=..0.65] run scoreboard players add hole17EndCounter golf.global 1
execute as @e[tag=hole17Crab] at @s if entity @e[tag=hole17End,distance=0.65..] unless entity @e[tag=hole17End,distance=..0.65] run scoreboard players set hole17EndCounter golf.global 0
# Runs this function until out of time or the carb in the near hole for 2 seconds
execute as @e[tag=hole17Crab] unless score hole17EndCounter golf.global matches 2 run schedule function lt:game/minigolf/holes/hole_17/timer 1s
# Runs if player ran out of time
execute if score hole17Timer golf.global matches 0 run tag @a[tag=hole17Player] add hole17Timeup
execute if score hole17Timer golf.global matches 0 run function lt:game/minigolf/holes/hole_17/end_hole
# Runs if crab is in the hole for 2 seconds
execute if score hole17EndCounter golf.global matches 2 run function lt:game/minigolf/holes/hole_17/end_hole
