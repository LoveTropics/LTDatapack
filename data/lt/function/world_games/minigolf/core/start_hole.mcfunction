$execute if entity @e[tag=hole$(hole)Player] run return fail
# Gives / Set Player Settings
$tag @s add hole$(hole)Player
$tag @s add hole$(hole)Player
$xp set @s $(hole) levels
title @s times 1s 2s 1s
execute as @s run function lt:world_games/minigolf/core/utils/gamemode
execute as @s run function lt:world_games/minigolf/core/utils/putters

$execute unless data gamedata lt:golf HighScores hole$(hole) run data modify gamedata lt:golf HighScores hole$(hole) set value 99
$execute unless data gamedata lt:golf @s[type=player] hole$(hole) run data modify gamedata lt:golf @s hole$(hole) set value 99

# Summons Carb / Set Carbs Data
$execute as @e[tag=hole$(hole)Start,current_world=true] at @s run function lt:world_games/minigolf/core/utils/spawn_crab
$execute as @e[tag=hole$(hole)Start,current_world=true] at @s run tag @e[type=tropicraft:fiddler_crab,distance=..2,limit=1] add hole$(hole)Crab
$data merge entity @e[tag=hole$(hole)Crab,limit=1,current_world=true] {ForcedAge:$(hole)}
$data modify entity @e[tag=hole$(hole)Crab,limit=1,current_world=true] Owner set from entity @p[tag=hole$(hole)Player] UUID
$scoreboard players set @e[tag=hole$(hole)Crab,current_world=true] golf.timer 120
$scoreboard players set @e[tag=hole$(hole)Crab,current_world=true] golf.hits 0