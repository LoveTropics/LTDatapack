kill @e[tag=golfTextHoney]
execute as @e[tag=golfTextHoneyMarker] at @s run summon minecraft:text_display ~ ~1 ~ {text:'[{"translate":"lt.golf.display.honey.part_1","color":"dark_blue", "bold": true}, {"translate":"lt.golf.display.honey.part_2", "color":"gold"}, {"translate":"lt.golf.display.honey.part_3", "color":"dark_green"}, {"translate": "lt.golf.display.honey.part_4", "color":"dark_green"}]', billboard:"fixed"}
execute as @e[tag=golfTextHoneyMarker] at @s run tag @e[distance=..2,tag=!golfTextHoneyMarker] add golfTextHoney
execute as @e[tag=golfTextHoney] at @s run tp @s ~ ~ ~ 180 0