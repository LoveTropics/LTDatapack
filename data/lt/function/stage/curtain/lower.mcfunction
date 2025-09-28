$execute unless data entity @s data{level:$(y)} at @s run fill ~-$(x) ~-$(level) ~-$(z) ~$(x) ~ ~$(z) ltextras:curtain
$execute unless data entity @s data{level:$(y)} as @s store result score @s stage.curtain run data get entity @s data.level
$execute unless data entity @s data{level:$(y)} run scoreboard players add @s stage.curtain 1
$execute unless data entity @s data{level:$(y)} store result entity @s data.level int 1 run scoreboard players get @s stage.curtain
$execute if data entity @s data{level:$(y)} run tag @s remove utility.stage.curtain.lower
