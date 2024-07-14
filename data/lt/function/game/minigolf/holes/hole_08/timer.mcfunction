# Removes 1 Second
scoreboard players remove hole08Timer golf.global 1
# Shows Time and Hits to the Player
title @p[tag=hole08Player] actionbar [{"translate":"lt.golf.seconds_left","color":"dark_gray"},{"score":{"name":"hole08Timer","objective":"golf.global"},"color":"yellow"},{"text":" | "},{"translate":"lt.golf.hits","color":"dark_gray"},{"score":{"name":"hole08Hits","objective":"golf.global"},"color":"green"}]
# Tests if carb is near the hole
execute as @e[tag=hole08Crab] at @s if entity @e[tag=hole08End,distance=..0.65] run scoreboard players add hole08EndCounter golf.global 1
execute as @e[tag=hole08Crab] at @s if entity @e[tag=hole08End,distance=0.65..] unless entity @e[tag=hole08End,distance=..0.65] run scoreboard players set hole08EndCounter golf.global 0
# Runs this function until out of time or the carb in the near hole for 2 seconds
execute as @e[tag=hole08Crab] unless score hole08EndCounter golf.global matches 2 run schedule function lt:game/minigolf/holes/hole_08/timer 1s
# Runs if player ran out of time
execute if score hole08Timer golf.global matches 0 run tag @a[tag=hole08Player] add hole08Timeup
execute if score hole08Timer golf.global matches 0 run function lt:game/minigolf/holes/hole_08/end_hole
# Runs if crab is in the hole for 2 seconds
execute if score hole08EndCounter golf.global matches 2 run function lt:game/minigolf/holes/hole_08/end_hole
