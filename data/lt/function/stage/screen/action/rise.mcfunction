$execute as @e[tag=utility.stage.screen,tag=screen.$(name),tag=!utility.stage.screen.lower,tag=!utility.stage.screen.raised] run tag @s add utility.stage.screen.rise
$execute as @e[tag=utility.stage.screen,tag=screen.$(name),tag=!utility.stage.screen.lower,tag=!utility.stage.screen.raised] run scoreboard players set @s stage.curtain 90
$execute as @e[tag=utility.stage.screen,tag=screen.$(name),tag=!utility.stage.screen.lower,tag=!utility.stage.screen.raised] run tag @s remove utility.stage.screen.lowered
