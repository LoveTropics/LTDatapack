scoreboard players set hole19Hits golf.global 0
scoreboard players set hole19EndCounter golf.global 0
scoreboard players operation hole19Timer golf.global = maxTime golf.global
# Give player tag showing what hole they are on
tag @s add hole19Player
# Makes creavite players go to survival
function lt:game/minigolf/core/hole_start
# Summon the crab an tags it
execute at @e[tag=hole19Start] run function lt:game/minigolf/core/summon_crab
execute at @e[tag=hole19Start] run tag @e[tag=golfCrab,distance=..5] add hole19Crab
# Gives the player the putters
# Starts the round of golf
function lt:game/minigolf/holes/hole_19/timer
scoreboard players add TotalHolesPlays golf.global 1
scoreboard players add Total19Plays golf.global 1
