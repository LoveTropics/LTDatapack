# Kills the crab
kill @e[tag=golf_crab,tag=hole_8]
execute at @a[tag=hole_8_player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Sends message the the player that they left the area
execute as @a[tag=hole_8_player] run function lt:game/minigolf/core/golf_leave_message
execute as @a[tag=hole_8_player] run playsound create:scroll_value ambient @s ~ ~ ~ 100 .05
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole_8_player] run function lt:game/minigolf/core/clear_putters
execute as @a[tag=hole_8_player] run tag @s remove hole_8_player
tag @a remove hole_8_timeup
# Stops the timer
schedule clear lt:game/minigolf/holes/hole_8/timer
schedule clear lt:game/minigolf/holes/hole_8/timer
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole8hits golfGlobal -1
scoreboard players set hole8seconds golfGlobal -1
scoreboard players set hole8time golfGlobal -1