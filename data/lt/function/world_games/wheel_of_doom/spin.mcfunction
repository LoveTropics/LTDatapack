execute as @e[tag=wheel] at @s run fill ~-2 ~2 ~-2 ~2 ~2 ~2 ltextras:edgeless_white_stained_glass replace ltextras:edgeless_red_stained_glass
scoreboard players add random_number wheel.data 0
execute store result score random_number wheel.data run random value 1..16
scoreboard players add random_number wheel.data 32
scoreboard players set current_number wheel.data 1
scoreboard players set current_number_last wheel.data 8 
execute store result gamedata lt:data wheel current_number int 1 run scoreboard players get current_number wheel.data
execute store result gamedata lt:data wheel current_number_last int 1 run scoreboard players get current_number_last wheel.data
execute store result gamedata lt:data wheel random_number int 1 run scoreboard players get random_number wheel.data
#function lt:world_games/wheel_of_doom/move with gamedata lt:data wheel
