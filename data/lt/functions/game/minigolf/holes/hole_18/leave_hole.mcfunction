# Kills the crab
kill @e[tag=hole18Crab]
## Sends message the the player that they left the area
execute as @a[tag=hole18Player] run function lt:game/minigolf/core/golf_leave_message
execute as @a[tag=hole18Player] run playsound minecraft:item.goat_horn.sound.7 voice @s ~ ~ ~ 100 .05
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole18Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole18Player
tag @a remove hole18Timeup
# Stops the timer
schedule clear lt:game/minigolf/holes/hole_18/timer
schedule clear lt:game/minigolf/holes/hole_18/timer
# Sets all scores to -2 mainly for debug reasons
scoreboard players set hole18Hits golf.global -2
scoreboard players set hole18Timer golf.global -2
scoreboard players set hole18EndCounter golf.global -2
