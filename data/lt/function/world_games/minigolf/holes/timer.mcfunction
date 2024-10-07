# Removes 1 Second
$scoreboard players remove hole$(hole_number)Timer golf.global 1
# Shows Time and Hits to the Player
$title @p[tag=hole01Player] actionbar [{"translate":"lt.golf.seconds_left","color":"dark_gray"},{"score":{"name":"hole$(hole_number)Timer","objective":"golf.global"},"color":"yellow"},{"text":" | "},{"translate":"lt.golf.hits","color":"dark_gray"},{"score":{"name":"hole$(hole_number)Hits","objective":"golf.global"},"color":"green"}]
# Tests if carb is near the hole
$execute as @e[tag=hole$(hole_number)Crab] at @s if entity @e[tag=hole$(hole_number)End,distance=..0.65] run scoreboard players add hole$(hole_number)EndCounter golf.global 1
$execute as @e[tag=hole$(hole_number)Crab] at @s if entity @e[tag=hole$(hole_number)End,distance=0.65..] unless entity @e[tag=hole$(hole_number)End,distance=..0.65] run scoreboard players set hole$(hole_number)EndCounter golf.global 0
# Runs this function until out of time or the carb in the near hole for 2 seconds
$execute as @e[tag=hole$(hole_number)Crab] unless score hole$(hole_number)EndCounter golf.global matches 2 run schedule lt:world_games/minigolf/holes/timer {"hole_number": $(hole_number)}
# Runs if player ran out of time
$execute if score hole$(hole_number)Timer golf.global matches 0 run tag @a[tag=hole$(hole_number)Player] add hole$(hole_number)Timeup
execute if score hole$(hole_number)Timer golf.global matches 0 run function lt:world_games/minigolf/holes/end_hole
# Runs if crab is in the hole for 2 seconds
$execute if score hole$(hole_number)EndCounter golf.global matches 2 run function lt:world_games/minigolf/holes/end_hole