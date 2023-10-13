execute as @e[tag=hole02Crab,nbt={HurtTime:1s}] at @s run scoreboard players add hole02Hits golf.global 1


execute as @e[tag=hole02Crab] at @s if block ~ ~ ~ create:honey run data modify entity @s Motion set value [0.0,-0.78400002528789d,0.0]
execute as @e[tag=hole02Crab] at @s if block ~ ~ ~ create:honey run tp @s @e[tag=hole02Start,limit=1]

execute as @e[tag=hole02Crab] at @s if block ~ ~-2 ~ tropicraft:azurite_block run data modify entity @s Motion set value [0.0,-0.78400002528789d,0.0]
execute as @e[tag=hole02Crab] at @s if block ~ ~-2 ~ tropicraft:azurite_block run tp @s @e[tag=hole02Start,limit=1]
