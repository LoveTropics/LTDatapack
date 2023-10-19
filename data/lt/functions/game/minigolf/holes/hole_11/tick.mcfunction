execute as @e[tag=hole11Crab,nbt={HurtTime:1s}] at @s run scoreboard players add hole11Hits golf.global 1


execute as @e[tag=hole11Crab] at @s if block ~ ~ ~ create:honey run data modify entity @s Motion set value [0.0,-0.78400011528789d,0.0]
execute as @e[tag=hole11Crab] at @s if block ~ ~ ~ create:honey run tp @s @e[tag=hole11Start,limit=1]

execute as @e[tag=hole11Crab] at @s if block ~ ~-2 ~ tropicraft:azurite_block run data modify entity @s Motion set value [0.0,-0.78400011528789d,0.0]
execute as @e[tag=hole11Crab] at @s if block ~ ~-2 ~ tropicraft:azurite_block run tp @s @e[tag=hole11Start,limit=1]


execute as @e[tag=hole11Crab] at @s if block ~ ~-1 ~ minecraft:magenta_concrete_powder run tp @s @e[tag=hole11TeleporterMagenta,limit=1]

execute as @e[tag=hole11Crab] at @s if block ~ ~-1 ~ minecraft:blue_concrete_powder run tp @s @e[tag=hole11TeleporterBlue,limit=1]