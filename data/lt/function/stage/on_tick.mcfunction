# Screen
execute as @e[tag=utility.stage.screen.lower] if score @s stage.curtain matches 1.. at @s run function lt:stage/screen/lower
execute as @e[tag=utility.stage.screen.rise] if score @s stage.curtain matches 1.. at @s run function lt:stage/screen/rise

execute as @e[type=minecraft:marker,tag=utility.stage.curtain,tag=!utility.stage.curtain.setup] at @s run function lt:stage/curtain/dialog
