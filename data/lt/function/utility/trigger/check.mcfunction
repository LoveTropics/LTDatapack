execute if score @s stats_controller matches 5 run scoreboard objectives setdisplay sidebar.team.dark_aqua
execute if score @s stats_controller matches 10 run scoreboard objectives setdisplay sidebar.team.dark_aqua main.stats
execute if score @s stats_controller matches 15 run team join stats @s
execute if score @s stats_controller matches 20 run team leave @s
execute if score @s stats_controller matches 25 run scoreboard objectives setdisplay sidebar.team.dark_aqua jumps
execute if score @s stats_controller matches 30 run scoreboard objectives setdisplay sidebar.team.dark_aqua stats.disguise
execute if score @s stats_controller matches 35 run scoreboard objectives setdisplay sidebar.team.dark_aqua events.parrot_party
execute if score @s stats_controller matches 40 run scoreboard players add Requried events.mouse_party 1
execute if score @s stats_controller matches 45 run scoreboard players remove Requried events.mouse_party 1
scoreboard players set @s stats_controller 0
scoreboard players enable @s stats_controller