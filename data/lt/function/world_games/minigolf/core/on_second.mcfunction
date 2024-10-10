execute as @e[tag=golfCrab] at @s if entity @e[type=marker,tag=golfEnd,distance=..0.65,sort=nearest,limit=1] run scoreboard players add @s golf.global 1
execute as @e[tag=golfCrab] at @s if entity @e[type=marker,tag=golfEnd,distance=0.65..1,sort=nearest,limit=1] run scoreboard players set @s golf.global 0
execute as @e[tag=golfCrab] run scoreboard players remove @s golf.timer 1
execute as @e[tag=golfCrab] if score @s golf.timer matches ..0 run function lt:world_games/minigolf/core/time_up with entity @s 
execute as @e[tag=golfCrab] if score @s golf.global matches 2..
execute as @e[tag=golfCrab] if score @s golf.global matches 2.. run function lt:world_games/minigolf/core/end_hole with entity @s 
#execute as @e[tag=hole01Crab] at @s if block ~ ~ ~ create:honey run data modify entity @s Motion set value [0.0,1.0,0.0]
#execute as @e[tag=hole01Crab] at @s if block ~ ~ ~ create:honey run tp @s @e[tag=hole01Start,limit=1]
execute as @e[tag=golfCrab] at @s run title @a[distance=..5] actionbar [{"translate":"lt.golf.seconds_left","color":"dark_gray"},{"score":{"name":"@s","objective":"golf.timer"},"color":"yellow"},{"text":" | "},{"translate":"lt.golf.hits","color":"dark_gray"},{"score":{"name":"@s","objective":"golf.hits"},"color":"green"}]
schedule function lt:world_games/minigolf/core/on_second 1s