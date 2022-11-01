# Kills the crab
kill @e[tag=golf_crab,tag=hole_16]
execute at @a[tag=hole_16_player] run kill @e[type=minecraft:experience_orb,distance=..20]
## Sends message the the player that they left the area
execute as @a[tag=hole_16_player] run function lt:game/minigolf/core/golf_leave_message
execute as @a[tag=hole_16_player] run playsound create:scroll_value ambient @s ~ ~ ~ 100 .05
#Resets Gamemode / Remove Putters / Remove player from game
execute as @a[tag=hole_16_player] run function lt:game/minigolf/core/clear_putters
execute as @a[tag=hole_16_player] run tag @s remove hole_16_player
tag @a remove hole_16_timeup
# Stops the timer
schedule clear lt:game/minigolf/holes/hole_16/timer
schedule clear lt:game/minigolf/holes/hole_16/timer
# Sets all scores to -1 mainly for debug reasons
scoreboard players set hole16hits golfGlobal -1
scoreboard players set hole16seconds golfGlobal -1
scoreboard players set hole16time golfGlobal -1