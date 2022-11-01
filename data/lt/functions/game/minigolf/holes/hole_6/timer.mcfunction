# Removes 1 Second
scoreboard players remove hole6time golfGlobal 1
# Shows Time and Hits to the Player
title @p[tag=hole_6_player] actionbar [{"text":"Seconds Left: ","color":"dark_gray"},{"score":{"name":"hole6time","objective":"golfGlobal"},"color":"yellow"},{"text":" | "},{"text":"Hits: ","color":"dark_gray"},{"score":{"name":"hole6hits","objective":"golfGlobal"},"color":"green"}]
# Tests if carb is near the hole
execute as @e[tag=golf_crab,tag=hole_6] at @s if entity @e[tag=hole_6_end,distance=..0.65] run scoreboard players add hole6seconds golfGlobal 1
execute as @e[tag=golf_crab,tag=hole_6] at @s if entity @e[tag=hole_6_end,distance=0.65..] run scoreboard players set hole6seconds golfGlobal 0
# Runs this function until out of time or the carb in the near hole for 2 seconds
execute as @e[tag=hole_6] unless score hole6time golfGlobal matches ..0 unless score hole6seconds golfGlobal matches 2 run schedule function lt:game/minigolf/holes/hole_6/timer 1s
# Runs if player ran out of time
execute if score hole6time golfGlobal matches 0 run tag @a[tag=hole_6_player] add hole_6_timeup
execute if score hole6time golfGlobal matches 0 run function lt:game/minigolf/holes/hole_6/end_hole
# Runs if crab is in the hole for 2 seconds
execute if score hole6seconds golfGlobal matches 2 run function lt:game/minigolf/holes/hole_6/end_hole