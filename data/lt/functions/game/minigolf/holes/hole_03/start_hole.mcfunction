scoreboard players set hole03Hits golf.global 0
scoreboard players set hole03EndCounter golf.global 0
scoreboard players operation hole03Timer golf.global = maxTime golf.global
# Give player tag showing what hole they are on
tag @s add hole03Player
# Makes creavite players go to survival
function lt:game/minigolf/core/hole_start
# Summon the crab an tags it
execute at @e[tag=hole03Start] run function lt:game/minigolf/core/summon_crab
execute at @e[tag=hole03Start] run tag @e[tag=golfCrab,distance=..5] add hole03Crab
# Gives the player the putters
# Starts the round of golf
function lt:game/minigolf/holes/hole_03/timer
scoreboard players add TotalHolesPlays golf.global 1
scoreboard players add Total03Plays golf.global 1
