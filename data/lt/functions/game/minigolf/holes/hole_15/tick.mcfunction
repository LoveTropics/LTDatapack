execute as @e[tag=hole15Crab,nbt={HurtTime:1s}] at @s run scoreboard players add hole15Hits golf.global 1

execute as @e[tag=hole15Crab] at @s if block ~ ~ ~ create:honey run data modify entity @s Motion set value [0.0,1.0,0.0]
execute as @e[tag=hole15Crab] at @s if block ~ ~ ~ create:honey run tp @s @e[tag=hole15Start,limit=1]
