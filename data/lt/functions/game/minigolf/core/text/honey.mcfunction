kill @e[tag=golfTextHoney]
execute as @e[tag=golfTextHoneyMarker] at @s run summon minecraft:text_display ~ ~1 ~ {text:'[{"text":"Watch Out!!!","color":"dark_blue", "bold": true}, {"text":"\\n Dont let your carb fall into honey!", "color":"gold"}, {"text":"\\n Otherwise you crab will restart the", "color":"dark_green"}, {"text": " course!", "color":"dark_green"}]', billboard:"fixed"}
execute as @e[tag=golfTextHoneyMarker] at @s run tag @e[distance=..2,tag=!golfTextHoneyMarker] add golfTextHoney
execute as @e[tag=golfTextHoney] at @s run tp @s ~ ~ ~ 180 0