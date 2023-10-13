# Kills the crab
kill @e[tag=hole02Crab]
## Sends message the the player that they left the area
execute as @a[tag=hole02Player] run function lt:game/minigolf/core/golf_leave_message
execute as @a[tag=hole02Player] run playsound minecraft:item.goat_horn.sound.7 voice @s ~ ~ ~ 100 .05
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole02Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole02Player
tag @a remove hole02Timeup
# Stops the timer
schedule clear lt:game/minigolf/holes/hole_02/timer
schedule clear lt:game/minigolf/holes/hole_02/timer
# Sets all scores to -2 mainly for debug reasons
scoreboard players set hole02Hits golf.global -2
scoreboard players set hole02Timer golf.global -2
scoreboard players set hole02EndCounter golf.global -2
