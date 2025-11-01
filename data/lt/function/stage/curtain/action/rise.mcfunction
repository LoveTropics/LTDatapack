$execute as @e[tag=utility.stage.curtain,tag=!utility.stage.curtain.lower] if data entity @s data{name:$(name)} run tag @s add utility.stage.curtain.rise
