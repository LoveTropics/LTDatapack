particle minecraft:portal ~ ~2 ~ 0 -1 0 0.1 5
execute as @a[distance=0..1] at @s run function lt:utility/tp with entity @n[tag=lt.system.teleporter] data