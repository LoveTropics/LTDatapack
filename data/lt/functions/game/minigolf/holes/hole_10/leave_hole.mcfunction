# Kills the crab
kill @e[tag=hole10Crab]
## Sends message the the player that they left the area
execute as @a[tag=hole10Player] run function lt:game/minigolf/core/golf_leave_message
execute as @a[tag=hole10Player] run playsound minecraft:item.goat_horn.sound.7 voice @s ~ ~ ~ 100 .05
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole10Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole10Player
tag @a remove hole10Timeup
# Stops the timer
schedule clear lt:game/minigolf/holes/hole_10/timer
schedule clear lt:game/minigolf/holes/hole_10/timer
# Sets all scores to -2 mainly for debug reasons
scoreboard players set hole10Hits golf.global -2
scoreboard players set hole10Timer golf.global -2
scoreboard players set hole10EndCounter golf.global -2
