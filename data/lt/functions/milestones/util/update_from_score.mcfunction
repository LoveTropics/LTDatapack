execute if score @s stats_controller matches 5 run scoreboard objectives setdisplay sidebar.team.dark_aqua
execute if score @s stats_controller matches 10 run scoreboard objectives setdisplay sidebar.team.dark_aqua main.stats
execute if score @s stats_controller matches 15 run team join stats @s
execute if score @s stats_controller matches 20 run team leave @s
scoreboard players set @s stats_controller 0
scoreboard players enable @s stats_controller