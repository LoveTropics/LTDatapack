execute as @s at @s run tp @s @e[tag=flying_turtle_racer_spawn,limit=1,sort=random,tag=!has_racer]
execute as @e[tag=flying_turtle_racer_spawn,tag=!has_racer] at @s if entity @p[distance=..1,limit=1,tag=turtle_racer] run tag @s add has_racer
