kill @e[tag=golfTextTele]
execute as @e[tag=golfTextTeleMarker] at @s run summon minecraft:text_display ~ ~1 ~ {text:'[{"text":"Teleporters!","color":"dark_blue", "bold": true}, {"text":"\\n Hit you carb accros a powderd conrate", "color":"gold"}, {"text":"\\n and tele them to same of normal conreate", "color":"gold"}, {"text": " WIP: Need to make this sound better", "color":"gold"}]', billboard:"fixed"}
execute as @e[tag=golfTextTeleMarker] at @s run tag @e[distance=..2,tag=!golfTextTeleMarker] add golfTextTele
execute as @e[tag=golfTextTele] at @s run tp @s ~ ~ ~ 90 0