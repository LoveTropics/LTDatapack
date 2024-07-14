scoreboard players set hole21Hits golf.global 0
scoreboard players set hole21EndCounter golf.global 0
scoreboard players operation hole21Timer golf.global = maxTime golf.global
# Give player tag showing what hole they are on
tag @s add hole21Player
# Makes creavite players go to survival
function lt:game/minigolf/core/hole_start
# Summon the crab an tags it
execute at @e[tag=hole21Start] run function lt:game/minigolf/core/summon_crab
execute at @e[tag=hole21Start] run tag @e[tag=golfCrab,distance=..5] add hole21Crab
# Gives the player the putters
# Starts the round of golf
function lt:game/minigolf/holes/hole_21/timer
scoreboard players add TotalHolesPlays golf.global 1
scoreboard players add Total21Plays golf.global 1
