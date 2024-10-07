kill @e[tag=golfTextTele]
execute as @e[tag=golfTextTeleMarker] at @s run summon minecraft:text_display ~ ~1 ~ {text:'[{"translate":"lt.golf.display.tele.part_1","color":"dark_blue", "bold": true}, {"translate":"lt.golf.display.tele.part_2", "color":"dark_purple"}]', billboard:"fixed"}
execute as @e[tag=golfTextTeleMarker] at @s run tag @e[distance=..2,tag=!golfTextTeleMarker] add golfTextTele
execute as @e[tag=golfTextTele] at @s run tp @s ~ ~ ~ 90 0