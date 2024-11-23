scoreboard players reset * turtle_tracker
scoreboard players set @e[tag=kill_on_no_players] turtle_tracker 0
execute as @e[tag=kill_on_no_players] on passengers on vehicle run scoreboard players add @s turtle_tracker 1
execute as @e[tag=kill_on_no_players] if score @s turtle_tracker matches 0 run kill @s