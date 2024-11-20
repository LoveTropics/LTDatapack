kill @e[tag=golfTextHoney]
execute as @e[tag=golfTextHoneyMarker] at @s run summon minecraft:text_display ~ ~1 ~ {text:'[{"translate":"lt.golf.display.honey.part_1","color":"red", "bold": true}, {"translate":"lt.golf.display.honey.part_2", "color":"aqua"}, {"translate":"lt.golf.display.honey.part_3", "color":"light_purple"}, {"translate": "lt.golf.display.honey.part_4", "color":"light_purple"}]', billboard:"fixed"}
execute as @e[tag=golfTextHoneyMarker] at @s run tag @e[distance=..2,tag=!golfTextHoneyMarker] add golfTextHoney
execute as @e[tag=golfTextHoney] at @s run tp @s ~ ~ ~ 0 0