scoreboard players set hole23Hits golf.global 0
scoreboard players set hole23EndCounter golf.global 0
scoreboard players operation hole23Timer golf.global = maxTime golf.global
# Give player tag showing what hole they are on
tag @s add hole23Player
# Makes creavite players go to survival
function lt:game/minigolf/core/hole_start
# Summon the crab an tags it
execute at @e[tag=hole23Start] run function lt:game/minigolf/core/summon_crab
execute at @e[tag=hole23Start] run tag @e[tag=golfCrab,distance=..5] add hole23Crab
# Gives the player the putters
# Starts the round of golf
function lt:game/minigolf/holes/hole_23/timer
scoreboard players add TotalHolesPlays golf.global 1
scoreboard players add Total23Plays golf.global 1
