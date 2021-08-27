execute as @a[tag=turtle_racer] run scoreboard players add PlayerCount TRaceGlobal 1
# Forceloads Start/Finish area 2
forceload add -671 2455 -732 2553

# Forceloads Start/Finish area 1
forceload add -994 2190 -897 2293

# Forceloads powerup locations
forceload add -707 2455 -800 2634
forceload add -658 2634 -730 2785
forceload add -743 2794 -872 2709
forceload add -821 2690 -873 2457
forceload add -888 2431 -1047 2551
forceload add -1088 2470 -1207 2380
forceload add -1216 2363 -1113 2240
forceload add -1112 2235 -1053 2190
forceload add -1084 2278 -969 2217

# Activate powerups
execute as @e[tag=powerup,tag=speed_powerup] at @s if score Mode TRaceGlobal matches 2 run function lt20:minigames/turtle_race/powerups/activate_powerup
execute as @e[tag=powerup,tag=sabatoge_powerup] at @s if score Mode TRaceGlobal matches 2 run function lt20:minigames/turtle_race/powerups/activate_powerup

scoreboard players set GameState TRaceGlobal 1

title @a[tag=turtle_racer] title " "
title @a[tag=turtle_racer] subtitle {"text":"Racers, mount your turtles!","color":"green"}
execute if score Mode TRaceGlobal matches 3 run tellraw @a[tag=turtle_racer] [{"text":">>> ","color":"gray"},{"text":"You have 25 seconds to mount your turtle, if any player fails to mount their turtle, the game will cancel.","color":"yellow"}]
execute if score Mode TRaceGlobal matches 1 run tellraw @a[tag=turtle_racer] [{"text":">>> ","color":"gray"},{"text":"You have 25 seconds to mount your turtle, if any player fails to mount their turtle, the game will cancel.","color":"yellow"}]
execute if score Mode TRaceGlobal matches 2 run tellraw @a[tag=turtle_racer] [{"text":">>> ","color":"gray"},{"text":"You have 20 seconds to mount a turtle, any unmounted turtles will be cleared once the game begins.","color":"yellow"}]
execute as @e[tag=turtle_racer] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 2 2
execute if score Mode TRaceGlobal matches 1 run scoreboard players set TimeToCancel TRaceGlobal 500
execute if score Mode TRaceGlobal matches 3 run scoreboard players set TimeToCancel TRaceGlobal 500
execute if score Mode TRaceGlobal matches 2 run scoreboard players set TimeToDrop TRaceGlobal 300
execute if score Mode TRaceGlobal matches 1 run scoreboard players set HoldTurtles TRaceGlobal 1

execute if score Mode TRaceGlobal matches 1 run function lt20:minigames/turtle_race/track/set_track_normal
execute if score Mode TRaceGlobal matches 2 run function lt20:minigames/turtle_race/track/set_track_arcade

execute if score Mode TRaceGlobal matches 2 run execute as @e[tag=arcade_racing_turtle_spawn] at @s run function lt20:minigames/turtle_race/turtle/spawn
effect give @a[tag=turtle_racer] water_breathing 36000 80 true
effect give @a[tag=turtle_racer] resistance 36000 80 true
