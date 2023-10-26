execute as @e[tag=hole13Crab,nbt={HurtTime:1s}] at @s run scoreboard players add hole13Hits golf.global 1


execute as @e[tag=hole13Crab] at @s if block ~ ~ ~ create:honey run data modify entity @s Motion set value [0.0,-0.78400013528789d,0.0]
execute as @e[tag=hole13Crab] at @s if block ~ ~ ~ create:honey run tp @s @e[tag=hole13Start,limit=1]

execute as @e[tag=hole13Crab] at @s if block ~ ~-2 ~ tropicraft:azurite_block run data modify entity @s Motion set value [0.0,-0.78400013528789d,0.0]
execute as @e[tag=hole13Crab] at @s if block ~ ~-2 ~ tropicraft:azurite_block run tp @s @e[tag=hole13Start,limit=1]


execute as @e[tag=hole13Crab] at @s if block ~ ~-1 ~ minecraft:magenta_concrete_powder run tp @s @e[tag=hole13TeleporterMagenta,limit=1]

execute as @e[tag=hole13Crab] at @s if block ~ ~-1 ~ minecraft:blue_concrete_powder run tp @s @e[tag=hole13TeleporterBlue,limit=1]