execute as @e[tag=hole03Crab,nbt={HurtTime:1s}] at @s run scoreboard players add hole03Hits golf.global 1

execute as @e[tag=hole03Crab] at @s if block ~ ~ ~ create:honey run data modify entity @s Motion set value [0.0,1.0,0.0]
execute as @e[tag=hole03Crab] at @s if block ~ ~ ~ create:honey run tp @s @e[tag=hole03Start,limit=1]
