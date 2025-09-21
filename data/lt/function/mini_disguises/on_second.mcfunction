execute in tropicraft:tropics as @a[current_world=true] if score @s mini_disguises.clock matches 0.. run scoreboard players remove @s mini_disguises.clock 1
execute in tropicraft:tropics as @a[current_world=true] if score @s mini_disguises.clock matches 0 run function lt:mini_disguises/clear

execute in tropicraft:tropics as @a[current_world=true] if entity @s[gamemode=survival] run clear @s bucket