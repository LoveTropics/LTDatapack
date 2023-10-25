execute as @e[tag=hole06Crab,nbt={HurtTime:1s}] at @s run scoreboard players add hole06Hits golf.global 1

execute as @e[tag=hole06Crab] at @s if block ~ ~ ~ create:honey run data modify entity @s Motion set value [0.0,1.0,0.0]
execute as @e[tag=hole06Crab] at @s if block ~ ~ ~ create:honey run tp @s @e[tag=hole06Start,limit=1]
