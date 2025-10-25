scoreboard players set random_number wheel.data -1
$execute as @e[tag=wheel_$(current_number)] at @s run function lt:world_games/wheel_of_doom/say with entity @s data
