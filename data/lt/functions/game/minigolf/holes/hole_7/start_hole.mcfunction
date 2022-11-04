# Resets The Scoreboards
scoreboard players set hole7hits golfGlobal 0
scoreboard players set hole7seconds golfGlobal 0
scoreboard players operation hole7time golfGlobal = HoleTimes golfGlobal
# Give player tag showing what hole they are on
tag @s add hole_7_player
# Makes creavite players go to survival
function lt:game/minigolf/core/gamemode_start
# Tell first time player how to play
execute as @a[tag=hole_7_player,tag=!played_golf] run function lt:game/minigolf/core/first_play
# Summon the crab an tags it
execute at @e[tag=hole_7_start] run function lt:game/minigolf/core/summon_crab
execute at @e[tag=hole_7_start] run tag @e[tag=golf_crab,distance=..5] add hole_7
# Gives the player the putters
function lt:game/minigolf/core/give_putters
# Starts the round of golf
function lt:game/minigolf/holes/hole_7/timer
tag @s add mini_golf_started
scoreboard players add GolfCount golfGlobal 1