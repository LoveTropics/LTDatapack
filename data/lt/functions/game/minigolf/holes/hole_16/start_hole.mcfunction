# Resets The Scoreboards
scoreboard players set hole16hits golfGlobal 0
scoreboard players set hole16seconds golfGlobal 0
scoreboard players operation hole16time golfGlobal = HoleTimes golfGlobal
# Give player tag showing what hole they are on
tag @s add hole_16_player
# Makes creavite players go to survival
function lt:game/minigolf/core/gamemode_start
# Tell first time player how to play
execute as @a[tag=hole_16_player,tag=!played_golf] run function lt:game/minigolf/core/first_play
# Summon the crab an tags it
execute at @e[tag=hole_16_start] run function lt:game/minigolf/core/summon_crab
execute at @e[tag=hole_16_start] run tag @e[tag=golf_crab,distance=..5] add hole_16
# Gives the player the putters
function lt:game/minigolf/core/give_putters
# Starts the round of golf
function lt:game/minigolf/holes/hole_16/timer