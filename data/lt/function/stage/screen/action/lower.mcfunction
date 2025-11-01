$execute as @e[tag=utility.stage.screen.name.$(name),tag=!utility.stage.screen.rise,tag=!utility.stage.screen.lowered] run tag @s add utility.stage.screen.lower
$execute as @e[tag=utility.stage.screen.name.$(name),tag=!utility.stage.screen.rise,tag=!utility.stage.screen.lowered] run scoreboard players set @s stage.curtain $(amount)
$execute as @e[tag=utility.stage.screen.name.$(name),tag=!utility.stage.screen.rise,tag=!utility.stage.screen.lowered] run tag @s remove utility.stage.screen.raised
