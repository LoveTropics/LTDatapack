execute as @e[tag=hole16Crab,nbt={HurtTime:1s}] at @s run scoreboard players add hole16Hits golf.global 1

execute as @e[tag=hole16Crab] at @s if block ~ ~ ~ create:honey run data modify entity @s Motion set value [0.0,1.0,0.0]
execute as @e[tag=hole16Crab] at @s if block ~ ~ ~ create:honey run tp @s @e[tag=hole16Start,limit=1]
