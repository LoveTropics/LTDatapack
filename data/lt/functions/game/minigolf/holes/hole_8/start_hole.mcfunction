# Resets The Scoreboards
scoreboard players set hole8hits golfGlobal 0
scoreboard players set hole8seconds golfGlobal 0
scoreboard players operation hole8time golfGlobal = HoleTimes golfGlobal
# Give player tag showing what hole they are on
tag @s add hole_8_player
# Makes creavite players go to survival
function lt:game/minigolf/core/gamemode_start
# Tell first time player how to play
execute as @a[tag=hole_8_player,tag=!played_golf] run function lt:game/minigolf/core/first_play
# Summon the crab an tags it
execute at @e[tag=hole_8_start] run function lt:game/minigolf/core/summon_crab
execute at @e[tag=hole_8_start] run tag @e[tag=golf_crab,distance=..5] add hole_8
# Gives the player the putters
function lt:game/minigolf/core/give_putters
# Starts the round of golf
function lt:game/minigolf/holes/hole_8/timer