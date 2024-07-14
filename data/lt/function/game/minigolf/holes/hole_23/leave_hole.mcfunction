# Kills the crab
kill @e[tag=hole23Crab]
## Sends message the the player that they left the area
execute as @a[tag=hole23Player] run function lt:game/minigolf/core/golf_leave_message
execute as @a[tag=hole23Player] run playsound minecraft:item.goat_horn.sound.7 voice @s ~ ~ ~ 100 .05
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole23Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole23Player
tag @a remove hole23Timeup
# Stops the timer
schedule clear lt:game/minigolf/holes/hole_23/timer
schedule clear lt:game/minigolf/holes/hole_23/timer
# Sets all scores to -2 mainly for debug reasons
scoreboard players set hole23Hits golf.global -2
scoreboard players set hole23Timer golf.global -2
scoreboard players set hole23EndCounter golf.global -2
