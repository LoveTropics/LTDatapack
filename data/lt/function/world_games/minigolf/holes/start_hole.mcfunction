$scoreboard players set hole$(hole_number)Hits golf.global 0
$scoreboard players set hole$(hole_number)EndCounter golf.global 0
$scoreboard players operation hole$(hole_number)Timer golf.global = maxTime golf.global
# Give player tag showing what hole they are on
$tag @s add hole$(hole_number)Player
# Makes creavite players go to survival
function lt:world_games/minigolf/core/hole_start
# Summon the crab an tags it
$execute at @e[tag=hole$(hole_number)Start] run function lt:world_games/minigolf/core/summon_crab
$execute at @e[tag=hole$(hole_number)Start] run tag @e[tag=golfCrab,distance=..5] add hole$(hole_number)Crab
# Gives the player the putters
# Starts the round of golf
$function lt:world_games/minigolf/holes/timer {"hole_number": $(hole_number)}
scoreboard players add total_holes_played golf.global 1
$scoreboard players add $(hole_number)_total_times_played golf.global 1