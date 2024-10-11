execute store result storage golf hole int 1 run scoreboard players add @s golf.global 1
execute as @s at @s run function lt:world_games/minigolf/data with storage minecraft:golf
execute if score @s golf.global matches 18.. run say hi
execute if score @s golf.global matches 18.. store result storage golf year int 1 run scoreboard players add @s golf.timer 1
execute if score @s golf.global matches 18.. run scoreboard players set @s golf.global 0