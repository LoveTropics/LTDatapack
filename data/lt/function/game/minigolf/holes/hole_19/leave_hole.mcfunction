# Kills the crab
kill @e[tag=hole19Crab]
## Sends message the the player that they left the area
execute as @a[tag=hole19Player] run function lt:game/minigolf/core/golf_leave_message
execute as @a[tag=hole19Player] run playsound minecraft:item.goat_horn.sound.7 voice @s ~ ~ ~ 100 .05
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole19Player] run function lt:game/minigolf/core/hole_end
tag @a remove hole19Player
tag @a remove hole19Timeup
# Stops the timer
schedule clear lt:game/minigolf/holes/hole_19/timer
schedule clear lt:game/minigolf/holes/hole_19/timer
# Sets all scores to -2 mainly for debug reasons
scoreboard players set hole19Hits golf.global -2
scoreboard players set hole19Timer golf.global -2
scoreboard players set hole19EndCounter golf.global -2
