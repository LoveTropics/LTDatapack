execute as @e[tag=hole18Crab,nbt={HurtTime:1s}] at @s run scoreboard players add hole18Hits golf.global 1

execute as @e[tag=hole18Crab] at @s if block ~ ~ ~ create:honey run data modify entity @s Motion set value [0.0,1.0,0.0]
execute as @e[tag=hole18Crab] at @s if block ~ ~ ~ create:honey run tp @s @e[tag=hole18Start,limit=1]
