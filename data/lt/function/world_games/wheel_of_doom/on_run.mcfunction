execute as @e[tag=wheel,limit=1] at @s unless score random_number wheel.data matches ..0 run function lt:world_games/wheel_of_doom/move with gamedata lt:data wheel
execute as @e[tag=wheel,limit=1] at @s if score random_number wheel.data matches 0 run function lt:world_games/wheel_of_doom/finish with gamedata lt:data wheel
schedule function lt:world_games/wheel_of_doom/on_run 1t replace
