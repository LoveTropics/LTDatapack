execute store result storage lt:forklifts id_store int 1 run scoreboard players get id_track forklifts
scoreboard players add id_track forklifts 1
execute as @s run function lt:forklift/internal_create_forklift with storage lt:forklifts