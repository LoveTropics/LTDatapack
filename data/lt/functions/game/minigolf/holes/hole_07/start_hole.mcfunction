scoreboard players set hole07Hits golf.global 0
scoreboard players set hole07EndCounter golf.global 0
scoreboard players operation hole07Timer golf.global = maxTime golf.global
# Give player tag showing what hole they are on
tag @s add hole07Player
# Makes creavite players go to survival
function lt:game/minigolf/core/hole_start
# Summon the crab an tags it
execute at @e[tag=hole07Start] run function lt:game/minigolf/core/summon_crab
execute at @e[tag=hole07Start] run tag @e[tag=golfCrab,distance=..5] add hole07Crab
# Gives the player the putters
# Starts the round of golf
function lt:game/minigolf/holes/hole_07/timer
scoreboard players add TotalHolesPlays golf.global 1
scoreboard players add Total07Plays golf.global 1
