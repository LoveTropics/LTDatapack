execute as @e[tag=utility.stage.curtain.lower] at @s run function lt:stage/curtain/lower with entity @s data
execute as @e[tag=utility.stage.curtain.rise] at @s run function lt:stage/curtain/rise with entity @s data
schedule function lt:stage/curtain/tick 10t
