$execute unless data entity @s data{level:0} unless data entity @s data{level:$(y)} at @s run fill ~-$(x) ~-$(level) ~-$(z) ~$(x) ~-$(level) ~$(z) air
execute unless data entity @s data{level:0} as @s store result score @s stage.curtain run data get entity @s data.level
execute unless data entity @s data{level:0} run scoreboard players remove @s stage.curtain 1
execute unless data entity @s data{level:0} store result entity @s data.level int 1 run scoreboard players get @s stage.curtain 
execute if data entity @s data{level:0} run tag @s remove utility.stage.curtain.rise
