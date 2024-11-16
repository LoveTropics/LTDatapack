execute as @e[tag=golfCrab] at @s if entity @e[type=marker,tag=golfEnd,distance=..0.65,sort=nearest,limit=1] run scoreboard players add @s golf.global 1
execute as @e[tag=golfCrab] at @s if entity @e[type=marker,tag=golfEnd,distance=0.65..1,sort=nearest,limit=1] run scoreboard players set @s golf.global 0
execute as @e[tag=golfCrab] at @s run scoreboard players remove @s golf.timer 1
execute as @e[tag=golfCrab] at @s if score @s golf.timer matches ..0 run function lt:world_games/minigolf/core/time_up with entity @s 
execute as @e[tag=golfCrab] at @s if score @s golf.global matches 2..
execute as @e[tag=golfCrab] at @s if score @s golf.global matches 2.. run function lt:world_games/minigolf/core/end_hole with entity @s 
execute as @e[tag=golfCrab,tag=!golfInGame] at @s run title @a[distance=..5] actionbar [{"translate":"lt.golf.seconds_left","color":"dark_gray"},{"score":{"name":"@s","objective":"golf.timer"},"color":"yellow"},{"text":" | "},{"translate":"lt.golf.hits","color":"dark_gray"},{"score":{"name":"@s","objective":"golf.hits"},"color":"green"}]
execute as @e[tag=golfCrab] at @s on owner run title @s actionbar [{"translate":"lt.golf.seconds_left","color":"dark_gray"},{"score":{"name":"@e[sort=nearest,tag=golfCrab,limit=1]","objective":"golf.timer"},"color":"yellow"},{"text":" | "},{"translate":"lt.golf.hits","color":"dark_gray"},{"score":{"name":"@e[sort=nearest,tag=golfCrab,limit=1]","objective":"golf.hits"},"color":"green"}]
execute as @e[tag=golfCrab] at @s on owner if entity @s[tag=!in.golf.area] run function lt:world_games/minigolf/core/leave_hole with entity @s

execute as @e[tag=startTag] at @s run function lt:world_games/minigolf/core/utils/markers/start
execute as @e[tag=endTag] at @s run function lt:world_games/minigolf/core/utils/markers/end
execute as @e[tag=dummyTag] at @s run function lt:world_games/minigolf/core/utils/markers/dummy

schedule function lt:world_games/minigolf/core/on_second 1s