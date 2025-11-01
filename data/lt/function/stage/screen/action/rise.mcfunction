$execute as @e[tag=utility.stage.screen.name.$(name),tag=!utility.stage.screen.lower,tag=!utility.stage.screen.raised] run tag @s add utility.stage.screen.rise
$execute as @e[tag=utility.stage.screen.name.$(name),tag=!utility.stage.screen.lower,tag=!utility.stage.screen.raised] run scoreboard players set @s stage.curtain $(amount)
$execute as @e[tag=utility.stage.screen.name.$(name),tag=!utility.stage.screen.lower,tag=!utility.stage.screen.raised] run tag @s remove utility.stage.screen.lowered
