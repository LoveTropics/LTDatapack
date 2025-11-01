$execute as @e[tag=utility.stage.curtain,tag=tag!utility.stage.curtain.rise] if data entity @s data{name:$(name)} run tag @s add utility.stage.curtain.lower
