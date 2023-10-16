execute as @e[tag=hole06Crab,nbt={HurtTime:1s}] at @s run scoreboard players add hole06Hits golf.global 1


execute as @e[tag=hole06Crab] at @s if block ~ ~ ~ create:honey run data modify entity @s Motion set value [0.0,-0.78400006528789d,0.0]
execute as @e[tag=hole06Crab] at @s if block ~ ~ ~ create:honey run tp @s @e[tag=hole06Start,limit=1]

##execute as @e[tag=hole06Crab] at @s if block ~ ~-2 ~ minecraft:magenta_concrete run data modify entity @s Motion set value [0.0,-0.78400006528789d,0.0]
execute as @e[tag=hole06Crab] at @s if block ~ ~-1 ~ minecraft:magenta_concrete_powder run tp @s @e[tag=hole6TeleporterMagenta,limit=1]

##execute as @e[tag=hole06Crab] at @s if block ~ ~ ~ create:honey run data modify entity @s Motion set value [0.0,-0.78400006528789d,0.0]
execute as @e[tag=hole06Crab] at @s if block ~ ~-1 ~ minecraft:blue_concrete_powder run tp @s @e[tag=hole6TeleporterBlue,limit=1]