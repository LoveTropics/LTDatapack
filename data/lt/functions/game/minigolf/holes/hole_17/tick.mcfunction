execute as @e[tag=hole17Crab,nbt={HurtTime:1s}] at @s run scoreboard players add hole17Hits golf.global 1


execute as @e[tag=hole17Crab] at @s if block ~ ~ ~ create:honey run data modify entity @s Motion set value [0.0,-0.78400017528789d,0.0]
execute as @e[tag=hole17Crab] at @s if block ~ ~ ~ create:honey run tp @s @e[tag=hole17Start,limit=1]

execute as @e[tag=hole17Crab] at @s if block ~ ~-2 ~ tropicraft:azurite_block run data modify entity @s Motion set value [0.0,-0.78400017528789d,0.0]
execute as @e[tag=hole17Crab] at @s if block ~ ~-2 ~ tropicraft:azurite_block run tp @s @e[tag=hole17Start,limit=1]


execute as @e[tag=hole17Crab] at @s if block ~ ~-1 ~ minecraft:magenta_concrete_powder run tp @s @e[tag=hole17TeleporterMagenta,limit=1]

execute as @e[tag=hole17Crab] at @s if block ~ ~-1 ~ minecraft:blue_concrete_powder run tp @s @e[tag=hole17TeleporterBlue,limit=1]

execute as @e[tag=hole17Crab] at @s if block ~ ~-1 ~ minecraft:white_concrete_powder run tp @s @e[tag=hole17TeleporterWhite,limit=1]