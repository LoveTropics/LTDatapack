execute if score @s map.launch_pad.lev_time matches 1.. run scoreboard players remove @s map.launch_pad.lev_time 1
execute if score @s map.launch_pad.lev_time matches ..0 run tag @s remove map.launch_pad.is_launching
execute if score @s map.launch_pad.lev_time matches ..0 run effect clear @s levitation
