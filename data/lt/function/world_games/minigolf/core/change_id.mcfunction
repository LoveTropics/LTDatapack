$execute atregion $(region) as @e[type=minecraft:marker,tag=golfStart,distance=..9,current_world=true] run tag @s add hole$(new)Start
$execute atregion $(region) as @e[type=minecraft:marker,tag=golfStart,distance=..9,current_world=true] run tag @s remove hole$(old)Start

$execute atregion $(region) as @e[type=minecraft:marker,tag=golfEnd,distance=..9,current_world=true] run tag @s add hole$(new)End
$execute atregion $(region) as @e[type=minecraft:marker,tag=golfEnd,distance=..9,current_world=true] run tag @s remove hole$(old)End

#function lt:world_games/minigolf/core/change_id {"region":"blue_1",old:"202001","new":"101"}