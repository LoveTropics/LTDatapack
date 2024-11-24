## Takes storage data lt:stage/curtain as input
# E.g. {width:33,length:9,x:1,z:0,current_step:0}

$scoreboard players set evalX stage.curtain $(x)
$scoreboard players set evalZ stage.curtain $(z)

$execute if score evalX stage.curtain matches 1 run fill ~ ~-$(current_step) ~ ~$(width) ~-$(current_step) ~ air replace ltextras:curtain
$execute if score evalZ stage.curtain matches 1 run fill ~ ~-$(current_step) ~ ~ ~-$(current_step) ~$(width) air replace ltextras:curtain

## Update step value
execute store result storage lt:stage/curtain current_step int 1 run scoreboard players remove length stage.curtain 1