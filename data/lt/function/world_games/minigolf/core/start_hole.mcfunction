# Give player tag showing what hole they are on
$tag @s add hole$(hole)Player
$attribute @s minecraft:player.submerged_mining_speed base set $(hole)
# Makes creavite players go to survival
tag @s[gamemode=creative] add golfCreative
gamemode adventure @s[gamemode=creative]
#execute as @s[tag=!playedGolf] run function lt:game/minigolf/core/first_play
tag @s add golfInGame
title @s times 1s 2s 1s
# Summon the crab an tags it
$execute as @e[tag=hole$(hole)Start] at @s run function lt:world_games/minigolf/core/utils/spawn_crab
$execute as @e[tag=hole$(hole)Start] at @s run tag @e[type=tropicraft:fiddler_crab,distance=..2,limit=1] add hole$(hole)Crab
$team join anticrabcollision @e[tag=hole$(hole)Crab]
$data merge entity @e[tag=hole$(hole)Crab,limit=1] {ForcedAge:$(hole)}
$data modify entity @e[tag=hole$(hole)Crab,limit=1] Owner set from entity @p[tag=hole$(hole)Player] UUID
$scoreboard players set @e[tag=hole$(hole)Crab] golf.timer 120
$scoreboard players set @e[tag=hole$(hole)Crab] golf.hits 0


execute as @s run function lt:world_games/minigolf/core/utils/give_putters
