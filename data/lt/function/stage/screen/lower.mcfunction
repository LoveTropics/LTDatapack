scoreboard players remove @s stage.curtain 1
tp ~ ~-0.1 ~
data modify entity @s[type=multimedia:screen] width set value 16
execute if score @s stage.curtain matches 0 run tag @s remove utility.stage.screen.lower
tag @s add utility.stage.screen.lowered
