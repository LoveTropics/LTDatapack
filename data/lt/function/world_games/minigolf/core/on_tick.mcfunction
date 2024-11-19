execute as @e[tag=golfCrab,nbt={HurtTime:10s}] run scoreboard players add @s golf.hits 1

execute as @e[tag=golfCrab] at @s if block ~ ~-1 ~ ltextras:imposter_magenta_concrete_powder run tp @e[tag=magentaTele,sort=nearest,limit=1]
execute as @e[tag=golfCrab] at @s if block ~ ~-1 ~ ltextras:imposter_white_concrete_powder run tp @e[tag=whiteTele,sort=nearest,limit=1]
execute as @e[tag=golfCrab] at @s if block ~ ~-1 ~ ltextras:imposter_orange_concrete_powder run tp @e[tag=orangeTele,sort=nearest,limit=1]
execute as @e[tag=golfCrab] at @s if block ~ ~-1 ~ ltextras:imposter_light_blue_concrete_powder run tp @e[tag=lightBlueTele,sort=nearest,limit=1]
execute as @e[tag=golfCrab] at @s if block ~ ~-1 ~ ltextras:imposter_yellow_concrete_powder run tp @e[tag=yellowTele,sort=nearest,limit=1]

execute as @e[tag=golfCrab,predicate=lt:not_moving] at @s if block ~ ~-1 ~ minecraft:magenta_concrete_powder run tp @e[tag=magentaTele,sort=nearest,limit=1]
execute as @e[tag=golfCrab,predicate=lt:not_moving] at @s if block ~ ~-1 ~ minecraft:white_concrete_powder run tp @e[tag=whiteTele,sort=nearest,limit=1]
execute as @e[tag=golfCrab,predicate=lt:not_moving] at @s if block ~ ~-1 ~ minecraft:orange_concrete_powder run tp @e[tag=orangeTele,sort=nearest,limit=1]
execute as @e[tag=golfCrab,predicate=lt:not_moving] at @s if block ~ ~-1 ~ minecraft:light_blue_concrete_powder run tp @e[tag=lightBlueTele,sort=nearest,limit=1]
execute as @e[tag=golfCrab,predicate=lt:not_moving] at @s if block ~ ~-1 ~ minecraft:yellow_concrete_powder run tp @e[tag=yellowTele,sort=nearest,limit=1]

execute as @e[predicate=lt:in_trap] run data modify entity @s Motion set value [0.0,1.0,0.0]
execute as @e[predicate=lt:in_trap] at @s run tp @s @e[tag=golfStart,sort=nearest,limit=1]