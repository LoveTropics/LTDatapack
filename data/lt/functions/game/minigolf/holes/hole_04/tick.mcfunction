execute as @e[tag=hole04Crab,nbt={HurtTime:1s}] at @s run scoreboard players add hole04Hits golf.global 1


execute as @e[tag=hole04Crab] at @s if block ~ ~ ~ create:honey run data modify entity @s Motion set value [0.0,-0.78400004528789d,0.0]
execute as @e[tag=hole04Crab] at @s if block ~ ~ ~ create:honey run tp @s @e[tag=hole04Start,limit=1]

execute as @e[tag=hole04Crab] at @s if block ~ ~-2 ~ tropicraft:azurite_block run data modify entity @s Motion set value [0.0,-0.78400004528789d,0.0]
execute as @e[tag=hole04Crab] at @s if block ~ ~-2 ~ tropicraft:azurite_block run tp @s @e[tag=hole04Start,limit=1]
