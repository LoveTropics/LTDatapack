execute as @e[tag=hole01Crab,nbt={HurtTime:1s}] at @s run scoreboard players add hole01Hits golf.global 1

execute as @e[tag=hole01Crab] at @s if block ~ ~-2 ~ tropicraft:azurite_block run data modify entity @s Motion set value [0.0,1.0,0.0]
execute as @e[tag=hole01Crab] at @s if block ~ ~-2 ~ tropicraft:azurite_block run tp @s @e[tag=hole01Start,limit=1]