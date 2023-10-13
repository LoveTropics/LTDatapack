scoreboard players set hole04Hits golf.global 0
scoreboard players set hole04EndCounter golf.global 0
scoreboard players operation hole04Timer golf.global = maxTime golf.global
# Give player tag showing what hole they are on
tag @s add hole04Player
# Makes creavite players go to survival
function lt:game/minigolf/core/hole_start
# Summon the crab an tags it
execute at @e[tag=hole04Start] run function lt:game/minigolf/core/summon_crab
execute at @e[tag=hole04Start] run tag @e[tag=golfCrab,distance=..5] add hole04Crab
# Gives the player the putters
# Starts the round of golf
function lt:game/minigolf/holes/hole_04/timer
scoreboard players add TotalHolesPlays golf.global 1
scoreboard players add Total04Plays golf.global 1
