scoreboard players set hole12Hits golf.global 0
scoreboard players set hole12EndCounter golf.global 0
scoreboard players operation hole12Timer golf.global = maxTime golf.global
# Give player tag showing what hole they are on
tag @s add hole12Player
# Makes creavite players go to survival
function lt:game/minigolf/core/hole_start
# Summon the crab an tags it
execute at @e[tag=hole12Start] run function lt:game/minigolf/core/summon_crab
execute at @e[tag=hole12Start] run tag @e[tag=golfCrab,distance=..5] add hole12Crab
# Gives the player the putters
# Starts the round of golf
function lt:game/minigolf/holes/hole_12/timer
scoreboard players add TotalHolesPlays golf.global 1
scoreboard players add Total12Plays golf.global 1
