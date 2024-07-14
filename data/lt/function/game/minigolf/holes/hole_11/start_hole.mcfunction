scoreboard players set hole11Hits golf.global 0
scoreboard players set hole11EndCounter golf.global 0
scoreboard players operation hole11Timer golf.global = maxTime golf.global
# Give player tag showing what hole they are on
tag @s add hole11Player
# Makes creavite players go to survival
function lt:game/minigolf/core/hole_start
# Summon the crab an tags it
execute at @e[tag=hole11Start] run function lt:game/minigolf/core/summon_crab
execute at @e[tag=hole11Start] run tag @e[tag=golfCrab,distance=..5] add hole11Crab
# Gives the player the putters
# Starts the round of golf
function lt:game/minigolf/holes/hole_11/timer
scoreboard players add TotalHolesPlays golf.global 1
scoreboard players add Total11Plays golf.global 1
execute if entity @s[tag=color.blind] as @e[tag=hole11Blue] at @s run summon minecraft:text_display ~ ~2 ~ {text:'[{"translate":"color.minecraft.blue"}]',Tags:["hole11Text"],billboard:"center"}
execute if entity @s[tag=color.blind] as @e[tag=hole11Magenta] at @s run summon minecraft:text_display ~ ~2 ~ {text:'[{"translate":"color.minecraft.magenta"}]',Tags:["hole11Text"],billboard:"center"}
execute if entity @s[tag=color.blind] as @e[tag=hole11TextMarker] at @s run summon minecraft:text_display ~ ~2 ~ {text:'[{"translate":" "}]', Tags:["hole11TextChange","hole11Text"],billboard:"center"}