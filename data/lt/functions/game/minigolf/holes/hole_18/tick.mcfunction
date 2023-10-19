execute as @e[tag=hole18Crab,nbt={HurtTime:1s}] at @s run scoreboard players add hole18Hits golf.global 1


execute as @e[tag=hole18Crab] at @s if block ~ ~ ~ create:honey run data modify entity @s Motion set value [0.0,-0.78400018528789d,0.0]
execute as @e[tag=hole18Crab] at @s if block ~ ~ ~ create:honey run tp @s @e[tag=hole18Start,limit=1]

execute as @e[tag=hole18Crab] at @s if block ~ ~-2 ~ tropicraft:azurite_block run data modify entity @s Motion set value [0.0,-0.78400018528789d,0.0]
execute as @e[tag=hole18Crab] at @s if block ~ ~-2 ~ tropicraft:azurite_block run tp @s @e[tag=hole18Start,limit=1]


execute as @e[tag=hole18Crab] at @s if block ~ ~-1 ~ minecraft:white_concrete_powder run tp @s @e[tag=hole18TeleporterWhite,limit=1]