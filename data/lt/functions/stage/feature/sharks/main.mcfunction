execute as @e[tag=stage.shark.upper] at @s if score @s stage.shark matches 2.. run function lt:stage/feature/sharks/dance
execute as @e[tag=stage.shark.upper] at @s if score @s stage.shark matches 1 run function lt:stage/feature/sharks/dance_activate
execute as @e[tag=stage.shark.lower] at @s if score @s stage.shark matches 2.. run function lt:stage/feature/sharks/dance2
execute as @e[tag=stage.shark.lower] at @s if score @s stage.shark matches 1 run function lt:stage/feature/sharks/dance2_activate