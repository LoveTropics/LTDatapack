scoreboard players remove @s stage.curtain 1
tp ~ ~-0.1 ~
execute store result entity @s width int 1 run data get entity @s width 1
execute if score @s stage.curtain matches 0 run tag @s remove utility.stage.screen.lower
tag @s add utility.stage.screen.lowered
